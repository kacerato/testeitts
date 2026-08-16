package org.eclipse.jdt.internal.core.builder;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystem;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.FileSystems;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.function.Predicate;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class ClasspathJrtWithReleaseOption extends ClasspathJrt {
    private FileSystem fs;
    private boolean isJRE12Plus;
    private String modPathString;
    protected Path modulePath;
    final String release;
    String releaseInHex;
    private String[] subReleases;

    public ClasspathJrtWithReleaseOption(String str, AccessRuleSet accessRuleSet, IPath iPath, String str2) throws CoreException {
        if (str2 == null || str2.equals("")) {
            throw new IllegalArgumentException("--release argument can not be null");
        }
        this.zipFilename = str;
        this.accessRuleSet = accessRuleSet;
        if (iPath != null) {
            this.externalAnnotationPath = iPath.toString();
        }
        this.release = getReleaseOptionFromCompliance(str2);
        initialize();
        loadModules(this);
    }

    public static HashMap<String, SimpleSet> findPackagesInModules(ClasspathJrtWithReleaseOption classpathJrtWithReleaseOption) {
        if (classpathJrtWithReleaseOption.fs == null || !classpathJrtWithReleaseOption.isJRE12Plus) {
            return ClasspathJrt.findPackagesInModules(classpathJrtWithReleaseOption);
        }
        String str = classpathJrtWithReleaseOption.zipFilename;
        HashMap<String, SimpleSet> hashMap = ClasspathJrt.PackageCache.get(classpathJrtWithReleaseOption.modPathString);
        if (hashMap != null) {
            return hashMap;
        }
        final HashMap<String, SimpleSet> hashMap2 = new HashMap<>();
        ClasspathJrt.PackageCache.put(classpathJrtWithReleaseOption.modPathString, hashMap2);
        try {
            JRTUtil.walkModuleImage(new File(str), classpathJrtWithReleaseOption.release, new JRTUtil.JrtFileVisitor<Path>() {
                SimpleSet packageSet = null;

                @Override
                public FileVisitResult visitFile(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitModule(Path path, String str2) throws IOException {
                    SimpleSet simpleSet = new SimpleSet(41);
                    this.packageSet = simpleSet;
                    simpleSet.add("");
                    if (str2.endsWith("/")) {
                        str2 = str2.substring(0, str2.length() - 1);
                    }
                    HashMap.this.put(str2, this.packageSet);
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitPackage(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    ClasspathJar.addToPackageSet(this.packageSet, path.toString(), true);
                    return FileVisitResult.CONTINUE;
                }
            }, JRTUtil.NOTIFY_PACKAGES | JRTUtil.NOTIFY_MODULES);
        } catch (IOException unused) {
        }
        return hashMap2;
    }

    private String getReleaseOptionFromCompliance(String str) {
        if (JavaCore.compareJavaVersions(str, "1.5") <= 0) {
            return "6";
        }
        int indexOf = str.indexOf("1.");
        return indexOf != -1 ? str.substring(indexOf + 2, str.length()) : str;
    }

    private boolean isJRE12Plus(Path path) {
        Throwable th2;
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path);
            try {
                Iterator<Path> it = newDirectoryStream.iterator();
                while (it.hasNext()) {
                    String sanitizedFileName = JRTUtil.sanitizedFileName(it.next());
                    if (Files.exists(this.fs.getPath(sanitizedFileName, "system-modules"), new LinkOption[0])) {
                        boolean z10 = Integer.parseInt(sanitizedFileName, 16) > 11;
                        newDirectoryStream.close();
                        return z10;
                    }
                }
                newDirectoryStream.close();
                return false;
            } catch (Throwable th3) {
                th2 = th3;
                if (newDirectoryStream != null) {
                    try {
                        newDirectoryStream.close();
                    } catch (Throwable th4) {
                        th = th4;
                        if (th2 == null) {
                            throw th;
                        }
                        if (th2 != th) {
                            try {
                                th2.addSuppressed(th);
                            } catch (IOException unused) {
                                this.fs = null;
                            }
                        }
                        throw th2;
                    }
                }
                throw th2;
            }
        } catch (Throwable th5) {
            th = th5;
            th2 = null;
        }
    }

    public static void loadModules(ClasspathJrtWithReleaseOption classpathJrtWithReleaseOption) {
        if (classpathJrtWithReleaseOption.fs == null || !classpathJrtWithReleaseOption.isJRE12Plus) {
            ClasspathJrt.loadModules(classpathJrtWithReleaseOption);
            return;
        }
        String str = classpathJrtWithReleaseOption.modPathString;
        if (str == null || ClasspathJrt.ModulesCache.get(str) != null) {
            return;
        }
        Throwable th2 = null;
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(classpathJrtWithReleaseOption.modulePath);
            try {
                Iterator<Path> it = newDirectoryStream.iterator();
                while (it.hasNext()) {
                    Files.walkFileTree(it.next(), Collections.EMPTY_SET, 1, new FileVisitor<Path>() {
                        @Override
                        public FileVisitResult postVisitDirectory(Path path, IOException iOException) throws IOException {
                            return FileVisitResult.CONTINUE;
                        }

                        @Override
                        public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
                            return FileVisitResult.CONTINUE;
                        }

                        @Override
                        public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
                            if (Files.exists(path, new LinkOption[0])) {
                                byte[] safeReadBytes = JRTUtil.safeReadBytes(path);
                                if (safeReadBytes == null) {
                                    return FileVisitResult.CONTINUE;
                                }
                                ClasspathJrtWithReleaseOption.this.acceptModule(safeReadBytes);
                            }
                            return FileVisitResult.CONTINUE;
                        }

                        @Override
                        public FileVisitResult visitFileFailed(Path path, IOException iOException) throws IOException {
                            return FileVisitResult.CONTINUE;
                        }
                    });
                }
                newDirectoryStream.close();
            } finally {
            }
        } catch (Throwable th3) {
            if (0 == 0) {
                throw th3;
            }
            if (null != th3) {
                try {
                    th2.addSuppressed(th3);
                } catch (IOException unused) {
                    return;
                }
            }
            throw null;
        }
    }

    @Override
    public void cleanup() {
        try {
            super.reset();
        } finally {
            this.fs = null;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ClasspathJrtWithReleaseOption) && Util.equalOrNull(this.release, ((ClasspathJrtWithReleaseOption) obj).release)) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4, boolean z10, Predicate<String> predicate) {
        ClassFileReader readFromModule;
        Path path;
        byte[] safeReadBytes;
        Throwable th2;
        if (this.fs == null) {
            return super.findClass(str, str2, str3, str4, z10, predicate);
        }
        if (!isPackage(str2, str3)) {
            return null;
        }
        try {
            String substring = str4.substring(0, str4.length() - SuffixConstants.SUFFIX_CLASS.length);
            String[] strArr = this.subReleases;
            if (strArr == null || strArr.length <= 0) {
                readFromModule = ClassFileReader.readFromModule(new File(this.zipFilename), str3, str4, predicate);
            } else {
                String replace = str4.replace(".class", ".sig");
                String[] strArr2 = this.subReleases;
                int length = strArr2.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        readFromModule = null;
                        break;
                    }
                    String str5 = strArr2[i10];
                    if (!this.isJRE12Plus) {
                        path = this.fs.getPath(str5, replace);
                    } else if (str3 != null) {
                        path = this.fs.getPath(str5, str3, replace);
                    } else {
                        try {
                            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(this.fs.getPath(str5, new String[0]));
                            try {
                                Iterator<Path> it = newDirectoryStream.iterator();
                                Path path2 = null;
                                while (true) {
                                    if (!it.hasNext()) {
                                        newDirectoryStream.close();
                                        path = path2;
                                        break;
                                    }
                                    Path next = it.next();
                                    Path resolve = next.resolve(replace);
                                    if (Files.exists(resolve, new LinkOption[0])) {
                                        if (next.getNameCount() == 2) {
                                            str3 = next.getName(1).toString();
                                        }
                                        newDirectoryStream.close();
                                        path = resolve;
                                    } else {
                                        path2 = resolve;
                                    }
                                }
                            } catch (Throwable th3) {
                                if (newDirectoryStream != null) {
                                    try {
                                        newDirectoryStream.close();
                                    } catch (Throwable th4) {
                                        th2 = th3;
                                        th = th4;
                                        if (th2 == null) {
                                            throw th;
                                        }
                                        if (th2 != th) {
                                            th2.addSuppressed(th);
                                        }
                                        throw th2;
                                    }
                                }
                                throw th3;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            th2 = null;
                        }
                    }
                    if (!Files.exists(path, new LinkOption[0]) || (safeReadBytes = JRTUtil.safeReadBytes(path)) == null) {
                        i10++;
                    } else {
                        readFromModule = new ClassFileReader(safeReadBytes, replace.toCharArray());
                        if (str3 != null) {
                            readFromModule.moduleName = str3.toCharArray();
                        }
                    }
                }
            }
            return createAnswer(substring, readFromModule);
        } catch (IOException | ClassFormatException unused) {
            return null;
        }
    }

    @Override
    public String getKey() {
        return this.fs == null ? super.getKey() : this.modPathString;
    }

    @Override
    public Collection<String> getModuleNames(Collection<String> collection) {
        HashMap<String, SimpleSet> findPackagesInModules = findPackagesInModules(this);
        return findPackagesInModules != null ? selectModules(findPackagesInModules.o(), collection) : Collections.emptyList();
    }

    @Override
    public boolean hasModule() {
        return this.fs == null ? super.hasModule() : this.modPathString != null;
    }

    @Override
    public int hashCode() {
        String str = this.zipFilename;
        return Util.combineHashCodes(str == null ? super.hashCode() : str.hashCode(), this.release.hashCode());
    }

    public void initialize() throws CoreException {
        Throwable th2;
        this.releaseInHex = Integer.toHexString(Integer.parseInt(this.release)).toUpperCase();
        Path path = Paths.get(Paths.get(this.zipFilename, new String[0]).getParent().toString(), "ct.sym");
        URI uri = path.toUri();
        if (!Files.exists(path, new LinkOption[0])) {
            return;
        }
        URI create = URI.create("jar:file:" + uri.getRawPath());
        try {
            this.fs = FileSystems.getFileSystem(create);
        } catch (FileSystemNotFoundException unused) {
        }
        if (this.fs == null) {
            try {
                this.fs = FileSystems.newFileSystem(create, new HashMap());
            } catch (IOException unused2) {
                return;
            }
        }
        Path path2 = this.fs.getPath("/", new String[0]);
        this.isJRE12Plus = isJRE12Plus(path2);
        FileSystem fileSystem = this.fs;
        StringBuilder sb2 = new StringBuilder(String.valueOf(this.releaseInHex));
        sb2.append(this.isJRE12Plus ? "" : "-modules");
        Path path3 = fileSystem.getPath(sb2.toString(), new String[0]);
        if (Files.exists(path3, new LinkOption[0])) {
            this.modulePath = path3;
            this.modPathString = String.valueOf(this.zipFilename) + "|" + path3.toString();
        }
        if (!Files.exists(path2.resolve(this.releaseInHex), new LinkOption[0])) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("release " + this.release + " is not found in the system");
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, illegalArgumentException.getMessage(), illegalArgumentException));
        }
        if (Files.exists(this.fs.getPath(this.releaseInHex, "system-modules"), new LinkOption[0])) {
            this.fs = null;
            return;
        }
        if (this.release == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path2);
            try {
                Iterator<Path> it = newDirectoryStream.iterator();
                while (it.hasNext()) {
                    String sanitizedFileName = JRTUtil.sanitizedFileName(it.next());
                    if (sanitizedFileName.contains(this.releaseInHex)) {
                        arrayList.add(sanitizedFileName);
                    }
                }
                newDirectoryStream.close();
                this.subReleases = (String[]) arrayList.toArray(new String[arrayList.size()]);
            } catch (Throwable th3) {
                th2 = th3;
                if (newDirectoryStream != null) {
                    try {
                        newDirectoryStream.close();
                    } catch (Throwable th4) {
                        th = th4;
                        if (th2 == null) {
                            throw th;
                        }
                        if (th2 != th) {
                            try {
                                th2.addSuppressed(th);
                            } catch (IOException unused3) {
                                this.fs = null;
                            }
                        }
                        throw th2;
                    }
                }
                throw th2;
            }
        } catch (Throwable th5) {
            th = th5;
            th2 = null;
        }
    }

    @Override
    public String toString() {
        return "Classpath jrt file " + this.zipFilename + " with --release option " + this.release;
    }
}
