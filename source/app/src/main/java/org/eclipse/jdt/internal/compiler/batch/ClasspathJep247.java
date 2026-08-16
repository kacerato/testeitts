package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.FileSystems;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class ClasspathJep247 extends ClasspathJrt {
    protected String compliance;
    protected java.nio.file.FileSystem fs;
    protected File jdkHome;
    protected long jdklevel;
    protected String modulePath;
    protected Set<String> packageCache;
    protected String releaseInHex;
    protected Path releasePath;
    protected String[] subReleases;

    public ClasspathJep247(File file, String str, AccessRuleSet accessRuleSet) {
        super(file, false, accessRuleSet, null);
        this.fs = null;
        this.releaseInHex = null;
        this.subReleases = null;
        this.releasePath = null;
        this.modulePath = null;
        this.compliance = str;
        this.jdklevel = CompilerOptions.releaseToJDKLevel(str);
        this.jdkHome = file;
        this.file = new File(new File(file, "lib"), JRTUtil.JRT_FS_JAR);
    }

    @Override
    public void acceptModule(ClassFileReader classFileReader, Map<String, IModule> map) {
        IBinaryModule moduleDeclaration;
        if (this.jdklevel <= ClassFileConstants.JDK1_8) {
            super.acceptModule(classFileReader, map);
        } else {
            if (classFileReader == null || (moduleDeclaration = classFileReader.getModuleDeclaration()) == null) {
                return;
            }
            map.put(String.valueOf(moduleDeclaration.name()), moduleDeclaration);
        }
    }

    public void addToPackageCache(String str, boolean z10) {
        if (this.packageCache.contains(str)) {
            return;
        }
        this.packageCache.add(str);
    }

    @Override
    public List<FileSystem.Classpath> fetchLinkedJars(FileSystem.ClasspathSectionProblemReporter classpathSectionProblemReporter) {
        return null;
    }

    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3) {
        return findClass(cArr, str, str2, str3, false);
    }

    @Override
    public int getMode() {
        return 2;
    }

    @Override
    public synchronized char[][] getModulesDeclaringPackage(String str, String str2) {
        Set<String> set = this.packageCache;
        if (set != null) {
            return singletonModuleNameIf(set.contains(str));
        }
        HashSet hashSet = new HashSet(41);
        this.packageCache = hashSet;
        hashSet.add(Util.EMPTY_STRING);
        ArrayList arrayList = new ArrayList();
        Throwable th2 = null;
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(this.releasePath);
            try {
                for (Path path : newDirectoryStream) {
                    String sanitizedFileName = JRTUtil.sanitizedFileName(path);
                    if (sanitizedFileName.contains(this.releaseInHex)) {
                        arrayList.add(sanitizedFileName);
                        Files.walkFileTree(path, new FileVisitor<Path>() {
                            @Override
                            public FileVisitResult postVisitDirectory(Path path2, IOException iOException) throws IOException {
                                return FileVisitResult.CONTINUE;
                            }

                            @Override
                            public FileVisitResult preVisitDirectory(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                                if (path2.getNameCount() <= 1) {
                                    return FileVisitResult.CONTINUE;
                                }
                                ClasspathJep247.this.addToPackageCache(path2.subpath(1, path2.getNameCount()).toString(), false);
                                return FileVisitResult.CONTINUE;
                            }

                            @Override
                            public FileVisitResult visitFile(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                                return FileVisitResult.CONTINUE;
                            }

                            @Override
                            public FileVisitResult visitFileFailed(Path path2, IOException iOException) throws IOException {
                                return FileVisitResult.CONTINUE;
                            }
                        });
                    }
                }
                newDirectoryStream.close();
                this.subReleases = (String[]) arrayList.toArray(new String[arrayList.size()]);
                return singletonModuleNameIf(this.packageCache.contains(str));
            } catch (Throwable th3) {
                if (newDirectoryStream != null) {
                    newDirectoryStream.close();
                }
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null == th4) {
                throw null;
            }
            try {
                th2.addSuppressed(th4);
                throw null;
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            e10.printStackTrace();
        }
    }

    @Override
    public String getPath() {
        if (this.path == null) {
            try {
                this.path = this.file.getCanonicalPath();
            } catch (IOException unused) {
                this.path = this.file.getAbsolutePath();
            }
        }
        return this.path;
    }

    @Override
    public void initialize() throws IOException {
        String str = this.compliance;
        if (str == null) {
            return;
        }
        this.releaseInHex = Integer.toHexString(Integer.parseInt(str)).toUpperCase();
        Path resolve = this.jdkHome.toPath().resolve("lib").resolve("ct.sym");
        URI uri = resolve.toUri();
        if (Files.exists(resolve, new LinkOption[0])) {
            URI create = URI.create("jar:file:" + uri.getRawPath());
            try {
                this.fs = FileSystems.getFileSystem(create);
            } catch (FileSystemNotFoundException unused) {
            }
            if (this.fs == null) {
                this.fs = FileSystems.newFileSystem(create, new HashMap());
            }
            this.releasePath = this.fs.getPath("/", new String[0]);
            if (Files.exists(this.fs.getPath(this.releaseInHex, new String[0]), new LinkOption[0])) {
                super.initialize();
                return;
            }
            throw new IllegalArgumentException("release " + this.compliance + " is not found in the system");
        }
    }

    @Override
    public void loadModules() {
        if (this.jdklevel <= ClassFileConstants.JDK1_8) {
            super.loadModules();
            return;
        }
        Path path = this.fs.getPath(String.valueOf(this.releaseInHex) + "-modules", new String[0]);
        if (!Files.exists(path, new LinkOption[0])) {
            throw new IllegalArgumentException("release " + this.compliance + " is not found in the system");
        }
        String str = String.valueOf(this.file.getPath()) + "|" + path.toString();
        this.modulePath = str;
        Map<String, IModule> map = ClasspathJrt.ModulesCache.get(str);
        if (map != null) {
            this.moduleNamesCache.addAll(map.o());
            return;
        }
        Throwable th2 = null;
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path);
            try {
                final HashMap hashMap = new HashMap();
                Iterator<Path> it = newDirectoryStream.iterator();
                while (it.hasNext()) {
                    Files.walkFileTree(it.next(), new FileVisitor<Path>() {
                        @Override
                        public FileVisitResult postVisitDirectory(Path path2, IOException iOException) throws IOException {
                            return FileVisitResult.CONTINUE;
                        }

                        @Override
                        public FileVisitResult preVisitDirectory(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                            return FileVisitResult.CONTINUE;
                        }

                        @Override
                        public FileVisitResult visitFile(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                            if (Files.exists(path2, new LinkOption[0])) {
                                byte[] safeReadBytes = JRTUtil.safeReadBytes(path2);
                                if (safeReadBytes == null) {
                                    return FileVisitResult.CONTINUE;
                                }
                                ClasspathJep247.this.acceptModule(safeReadBytes, hashMap);
                                ClasspathJep247.this.moduleNamesCache.add(JRTUtil.sanitizedFileName(path2));
                            }
                            return FileVisitResult.CONTINUE;
                        }

                        @Override
                        public FileVisitResult visitFileFailed(Path path2, IOException iOException) throws IOException {
                            return FileVisitResult.CONTINUE;
                        }
                    });
                }
                synchronized (ClasspathJrt.ModulesCache) {
                    try {
                        if (ClasspathJrt.ModulesCache.get(this.modulePath) == null) {
                            ClasspathJrt.ModulesCache.put(this.modulePath, Collections.unmodifiableMap(hashMap));
                        }
                    } finally {
                    }
                }
                newDirectoryStream.close();
            } catch (Throwable th3) {
                if (newDirectoryStream != null) {
                    newDirectoryStream.close();
                }
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null != th4) {
                try {
                    th2.addSuppressed(th4);
                } catch (IOException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            throw null;
        }
    }

    @Override
    public char[] normalizedPath() {
        if (this.normalizedPath == null) {
            char[] charArray = getPath().toCharArray();
            if (File.separatorChar == '\\') {
                CharOperation.replace(charArray, JavaElement.JEM_ESCAPE, '/');
            }
            this.normalizedPath = CharOperation.subarray(charArray, 0, CharOperation.lastIndexOf('.', charArray));
        }
        return this.normalizedPath;
    }

    @Override
    public void reset() {
        try {
            super.reset();
            this.fs.close();
        } catch (IOException unused) {
        }
    }

    @Override
    public String toString() {
        return "Classpath for JEP 247 for JDK " + this.file.getPath();
    }

    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10) {
        byte[] safeReadBytes;
        if (!isPackage(str, str2)) {
            return null;
        }
        try {
            String replace = str3.replace(".class", ".sig");
            String[] strArr = this.subReleases;
            if (strArr != null && strArr.length > 0) {
                safeReadBytes = null;
                for (String str4 : strArr) {
                    Path path = this.fs.getPath(str4, replace);
                    if (Files.exists(path, new LinkOption[0]) && (safeReadBytes = JRTUtil.safeReadBytes(path)) != null) {
                        break;
                    }
                }
            } else {
                safeReadBytes = JRTUtil.safeReadBytes(this.fs.getPath(this.releaseInHex, replace));
            }
            if (safeReadBytes != null) {
                return new NameEnvironmentAnswer(new ClassFileReader(safeReadBytes, replace.toCharArray()), fetchAccessRestriction(replace), str2 != null ? str2.toCharArray() : null);
            }
        } catch (IOException | ClassFormatException unused) {
        }
        return null;
    }
}
