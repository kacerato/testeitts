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
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClasspathJep247Jdk12 extends ClasspathJep247 {
    Map<String, IModule> modules;

    public ClasspathJep247Jdk12(File file, String str, AccessRuleSet accessRuleSet) {
        super(file, str, accessRuleSet);
    }

    public void acceptModule(String str, byte[] bArr, Map<String, IModule> map) {
        ClassFileReader classFileReader;
        if (bArr == null || map.containsKey(str)) {
            return;
        }
        try {
            classFileReader = new ClassFileReader(bArr, "module-info.class".toCharArray());
        } catch (ClassFormatException e10) {
            e10.printStackTrace();
            classFileReader = null;
        }
        if (classFileReader != null) {
            acceptModule(classFileReader, map);
        }
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
    public IModule getModule(char[] cArr) {
        Map<String, IModule> map = this.modules;
        if (map != null) {
            return map.get(String.valueOf(cArr));
        }
        return null;
    }

    @Override
    public Collection<String> getModuleNames(Collection<String> collection, Function<String, IModule> function) {
        return selectModules(this.moduleNamesCache, collection, function);
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
        Throwable th2 = null;
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(this.releasePath);
            try {
                for (Path path : newDirectoryStream) {
                    if (JRTUtil.sanitizedFileName(path).contains(this.releaseInHex)) {
                        try {
                            DirectoryStream<Path> newDirectoryStream2 = Files.newDirectoryStream(path);
                            try {
                                Iterator<Path> it = newDirectoryStream2.iterator();
                                while (it.hasNext()) {
                                    Files.walkFileTree(it.next(), new FileVisitor<Path>() {
                                        @Override
                                        public FileVisitResult postVisitDirectory(Path path2, IOException iOException) throws IOException {
                                            return FileVisitResult.CONTINUE;
                                        }

                                        @Override
                                        public FileVisitResult preVisitDirectory(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                                            if (path2.getNameCount() <= 2) {
                                                return FileVisitResult.CONTINUE;
                                            }
                                            ClasspathJep247Jdk12.this.addToPackageCache(path2.subpath(2, path2.getNameCount()).toString(), false);
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
                                newDirectoryStream2.close();
                            } catch (Throwable th3) {
                                th2 = th3;
                                if (newDirectoryStream2 != null) {
                                    newDirectoryStream2.close();
                                }
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            if (th2 == null) {
                                th2 = th4;
                                throw th2;
                            }
                            if (th2 == th4) {
                                throw th2;
                            }
                            th2.addSuppressed(th4);
                            throw th2;
                        }
                    }
                }
                newDirectoryStream.close();
                return singletonModuleNameIf(this.packageCache.contains(str));
            } catch (Throwable th5) {
                if (newDirectoryStream != null) {
                    newDirectoryStream.close();
                }
                throw th5;
            }
        } catch (Throwable th6) {
            if (th2 == null) {
                throw th6;
            }
            if (th2 == th6) {
                throw th2;
            }
            try {
                th2.addSuppressed(th6);
                throw th2;
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            e10.printStackTrace();
        }
    }

    @Override
    public void initialize() throws IOException {
        String str = this.compliance;
        if (str == null) {
            return;
        }
        if (this.fs != null) {
            super.initialize();
            return;
        }
        this.releaseInHex = Integer.toHexString(Integer.parseInt(str)).toUpperCase();
        Path resolve = this.jdkHome.toPath().resolve("lib").resolve("ct.sym");
        URI uri = resolve.toUri();
        if (!Files.exists(resolve, new LinkOption[0])) {
            return;
        }
        URI create = URI.create("jar:file:" + uri.getRawPath());
        try {
            this.fs = FileSystems.getFileSystem(create);
        } catch (FileSystemNotFoundException unused) {
        }
        if (this.fs == null) {
            this.fs = FileSystems.newFileSystem(create, new HashMap());
        }
        this.releasePath = this.fs.getPath("/", new String[0]);
        if (!Files.exists(this.fs.getPath(this.releaseInHex, new String[0]), new LinkOption[0])) {
            throw new IllegalArgumentException("release " + this.compliance + " is not found in the system");
        }
        ArrayList arrayList = new ArrayList();
        Throwable th2 = null;
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(this.releasePath);
            try {
                Iterator<Path> it = newDirectoryStream.iterator();
                while (it.hasNext()) {
                    String sanitizedFileName = JRTUtil.sanitizedFileName(it.next());
                    if (sanitizedFileName.contains(this.releaseInHex)) {
                        arrayList.add(sanitizedFileName);
                    }
                }
                this.subReleases = (String[]) arrayList.toArray(new String[arrayList.size()]);
                newDirectoryStream.close();
                super.initialize();
            } finally {
            }
        } catch (Throwable th3) {
            if (0 == 0) {
                throw th3;
            }
            if (null != th3) {
                try {
                    th2.addSuppressed(th3);
                } catch (IOException unused2) {
                }
            }
            throw null;
        }
    }

    @Override
    public void loadModules() {
        if (this.jdklevel <= ClassFileConstants.JDK1_8) {
            super.loadModules();
            return;
        }
        String str = String.valueOf(this.file.getPath()) + "|" + this.fs.getPath(this.releaseInHex, new String[0]).toString();
        this.modulePath = str;
        Map<String, IModule> map = ClasspathJrt.ModulesCache.get(str);
        this.modules = map;
        if (map != null) {
            this.moduleNamesCache.addAll(map.o());
            return;
        }
        Throwable th2 = null;
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(this.releasePath);
            try {
                final HashMap hashMap = new HashMap();
                for (Path path : newDirectoryStream) {
                    if (JRTUtil.sanitizedFileName(path).contains(this.releaseInHex)) {
                        Files.walkFileTree(path, Collections.EMPTY_SET, 2, new FileVisitor<Path>() {
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
                                if (!basicFileAttributes.isDirectory() && path2.getNameCount() >= 3) {
                                    if (Files.exists(path2, new LinkOption[0])) {
                                        byte[] safeReadBytes = JRTUtil.safeReadBytes(path2);
                                        if (safeReadBytes == null) {
                                            return FileVisitResult.CONTINUE;
                                        }
                                        String sanitizedFileName = JRTUtil.sanitizedFileName(path2.subpath(1, path2.getNameCount() - 1));
                                        ClasspathJep247Jdk12.this.acceptModule(sanitizedFileName, safeReadBytes, hashMap);
                                        ClasspathJep247Jdk12.this.moduleNamesCache.add(sanitizedFileName);
                                    }
                                    return FileVisitResult.SKIP_SIBLINGS;
                                }
                                return FileVisitResult.CONTINUE;
                            }

                            @Override
                            public FileVisitResult visitFileFailed(Path path2, IOException iOException) throws IOException {
                                return FileVisitResult.CONTINUE;
                            }
                        });
                    }
                }
                synchronized (ClasspathJrt.ModulesCache) {
                    try {
                        if (ClasspathJrt.ModulesCache.get(this.modulePath) == null) {
                            Map<String, IModule> unmodifiableMap = Collections.unmodifiableMap(hashMap);
                            this.modules = unmodifiableMap;
                            ClasspathJrt.ModulesCache.put(this.modulePath, unmodifiableMap);
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

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        r4.close();
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10) {
        byte[] safeReadBytes;
        Throwable th2;
        if (!isPackage(str, str2)) {
            return null;
        }
        try {
            String replace = str3.replace(".class", ".sig");
            String[] strArr = this.subReleases;
            if (strArr != null && strArr.length > 0) {
                int length = strArr.length;
                safeReadBytes = null;
                int i10 = 0;
                loop0: while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    String str4 = strArr[i10];
                    if (str2 == null) {
                        try {
                            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(this.fs.getPath(str4, new String[0]));
                            try {
                                Iterator<Path> it = newDirectoryStream.iterator();
                                while (it.hasNext()) {
                                    Path path = this.fs.getPath(str4, JRTUtil.sanitizedFileName(it.next()), replace);
                                    if (Files.exists(path, new LinkOption[0]) && (safeReadBytes = JRTUtil.safeReadBytes(path)) != null) {
                                        break loop0;
                                    }
                                }
                                newDirectoryStream.close();
                                i10++;
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
                    } else {
                        Path path2 = this.fs.getPath(str4, str2, replace);
                        if (Files.exists(path2, new LinkOption[0]) && (safeReadBytes = JRTUtil.safeReadBytes(path2)) != null) {
                            break;
                        }
                        i10++;
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
}
