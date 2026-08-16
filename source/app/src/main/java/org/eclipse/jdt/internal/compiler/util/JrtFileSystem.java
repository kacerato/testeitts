package org.eclipse.jdt.internal.compiler.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;

public class JrtFileSystem {
    private final Map<String, String> packageToModule = new HashMap();
    private final Map<String, List<String>> packageToModules = new HashMap();
    FileSystem fs = null;
    Path modRoot = null;
    String jdkHome = null;

    public JrtFileSystem(File file) throws IOException {
        initialize(file);
    }

    private ClassFileReader getClassfile(String str, Predicate<String> predicate) throws IOException, ClassFormatException {
        String str2;
        String[] modules = getModules(str);
        int length = modules.length;
        int i10 = 0;
        byte[] bArr = null;
        while (true) {
            if (i10 >= length) {
                str2 = null;
                break;
            }
            str2 = modules[i10];
            if ((predicate == null || predicate.test(str2)) && (bArr = JRTUtil.safeReadBytes(this.fs.getPath("/modules", str2, str))) != null) {
                break;
            }
            i10++;
        }
        if (bArr == null) {
            return null;
        }
        ClassFileReader classFileReader = new ClassFileReader(bArr, str.toCharArray());
        classFileReader.moduleName = str2.toCharArray();
        return classFileReader;
    }

    private byte[] getClassfileBytes(String str, String str2) throws IOException, ClassFormatException {
        return JRTUtil.safeReadBytes(this.fs.getPath("/modules", str2, str));
    }

    public static JrtFileSystem getNewJrtFileSystem(File file, String str) throws IOException {
        return str == null ? new JrtFileSystem(file) : new JrtFileSystemWithOlderRelease(file, str);
    }

    public static boolean lambda$0(Path path) {
        return path.toString().endsWith(".class") || path.toString().endsWith(SuffixConstants.SUFFIX_STRING_CLASS);
    }

    public void cachePackage(String str, String str2) {
        String intern = str.intern();
        String intern2 = str2.intern();
        String replace = intern.replace('.', '/');
        String str3 = this.packageToModule.get(replace);
        if (str3 == null) {
            this.packageToModule.put(replace, intern2);
            return;
        }
        if (str3 == intern2 || str3.equals(intern2)) {
            return;
        }
        if (str3 == "MU") {
            List<String> list = this.packageToModules.get(replace);
            if (list.contains(intern2)) {
                return;
            }
            if (JRTUtil.JAVA_BASE == intern2 || JRTUtil.JAVA_BASE.equals(intern2)) {
                list.add(0, JRTUtil.JAVA_BASE);
                return;
            } else {
                list.add(intern2);
                return;
            }
        }
        String str4 = str3;
        this.packageToModule.put(replace, "MU");
        ArrayList arrayList = new ArrayList();
        if (JRTUtil.JAVA_BASE == str3 || JRTUtil.JAVA_BASE.equals(str3)) {
            arrayList.add(str4);
            arrayList.add(intern2);
        } else {
            arrayList.add(intern2);
            arrayList.add(str4);
        }
        this.packageToModules.put(replace, arrayList);
    }

    public byte[] getClassfileContent(String str, String str2) throws IOException, ClassFormatException {
        if (str2 != null) {
            return getClassfileBytes(str, str2);
        }
        byte[] bArr = null;
        for (String str3 : getModules(str)) {
            bArr = JRTUtil.safeReadBytes(this.fs.getPath("/modules", str3, str));
            if (bArr != null) {
                break;
            }
        }
        return bArr;
    }

    public InputStream getContentFromJrt(String str, String str2) throws IOException {
        if (str2 != null) {
            return Files.newInputStream(this.fs.getPath("/modules", str2, str), new OpenOption[0]);
        }
        String[] modules = getModules(str);
        if (modules.length == 0) {
            return null;
        }
        return Files.newInputStream(this.fs.getPath("/modules", modules[0], str), new OpenOption[0]);
    }

    public String[] getModules(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        String substring = lastIndexOf != -1 ? str.substring(0, lastIndexOf) : "";
        String str2 = this.packageToModule.get(substring);
        if (str2 == null) {
            return JRTUtil.DEFAULT_MODULE;
        }
        if (str2 != "MU") {
            return new String[]{str2};
        }
        List<String> list = this.packageToModules.get(substring);
        return (String[]) list.toArray(new String[list.size()]);
    }

    public List<String> getModulesDeclaringPackage(String str, String str2) {
        String replace = str.replace('.', '/');
        String str3 = this.packageToModule.get(replace);
        if (str2 == null) {
            if (str3 == null) {
                return null;
            }
            return str3 == "MU" ? this.packageToModules.get(replace) : Collections.singletonList(str3);
        }
        if (str3 != null) {
            if (str3 == "MU") {
                if (this.packageToModules.get(replace).contains(str2)) {
                    return Collections.singletonList(str2);
                }
            } else if (str3.equals(str2)) {
                return Collections.singletonList(str2);
            }
        }
        return null;
    }

    public boolean hasClassFile(String str, String str2) {
        String str3;
        if (str2 != null && (str3 = this.packageToModule.get(str)) != null && (str3 == "MU" || str3.equals(str2))) {
            Path path = this.fs.getPath("/modules", str2, str);
            if (!Files.exists(path, new LinkOption[0])) {
                return false;
            }
            try {
                return Files.list(path).anyMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$0;
                        lambda$0 = JrtFileSystem.lambda$0((Path) obj);
                        return lambda$0;
                    }
                });
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public void initialize(File file) throws IOException {
        URL url;
        this.jdkHome = null;
        if (file.toString().endsWith(JRTUtil.JRT_FS_JAR)) {
            url = file.toPath().toUri().toURL();
            this.jdkHome = file.getParentFile().getParent();
        } else {
            String path = file.toPath().toString();
            this.jdkHome = path;
            url = Paths.get(path, "lib", JRTUtil.JRT_FS_JAR).toUri().toURL();
        }
        JRTUtil.MODULE_TO_LOAD = System.getProperty("modules.to.load");
        String property = System.getProperty("java.version");
        if (property == null || !property.startsWith("1.8")) {
            HashMap hashMap = new HashMap();
            hashMap.put("java.home", this.jdkHome);
            this.fs = FileSystems.newFileSystem(JRTUtil.JRT_URI, hashMap);
        } else {
            URLClassLoader uRLClassLoader = new URLClassLoader(new URL[]{url});
            this.fs = FileSystems.newFileSystem(JRTUtil.JRT_URI, new HashMap(), uRLClassLoader);
        }
        this.modRoot = this.fs.getPath("/modules", new String[0]);
        walkJrtForModules();
    }

    public void walkJrtForModules() throws IOException {
        Iterator<Path> it = this.fs.getRootDirectories().iterator();
        while (it.hasNext()) {
            Throwable th2 = null;
            try {
                DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(it.next());
                try {
                    for (final Path path : newDirectoryStream) {
                        if (!path.toString().equals("/modules")) {
                            Files.walkFileTree(path, new JRTUtil.AbstractFileVisitor<Path>() {
                                @Override
                                public FileVisitResult visitFile(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                                    Path relativize = path.relativize(path2);
                                    JrtFileSystem.this.cachePackage(relativize.getParent().toString(), relativize.getFileName().toString());
                                    return FileVisitResult.CONTINUE;
                                }
                            });
                        }
                    }
                    newDirectoryStream.close();
                } catch (Throwable th3) {
                    th2 = th3;
                    if (newDirectoryStream == null) {
                        throw th2;
                    }
                    newDirectoryStream.close();
                    throw th2;
                }
            } catch (Throwable th4) {
                if (th2 == null) {
                    throw th4;
                }
                if (th2 != th4) {
                    try {
                        th2.addSuppressed(th4);
                    } catch (Exception e10) {
                        throw new IOException(e10.getMessage());
                    }
                }
                throw th2;
            }
        }
    }

    public void walkModuleImage(final JRTUtil.JrtFileVisitor<Path> jrtFileVisitor, final int i10) throws IOException {
        Files.walkFileTree(this.modRoot, new JRTUtil.AbstractFileVisitor<Path>() {
            @Override
            public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
                int nameCount = path.getNameCount();
                if (nameCount == 1) {
                    return FileVisitResult.CONTINUE;
                }
                if (nameCount == 2) {
                    Path name = path.getName(1);
                    String str = JRTUtil.MODULE_TO_LOAD;
                    if (str == null || str.length() <= 0 || JRTUtil.MODULE_TO_LOAD.indexOf(name.toString()) != -1) {
                        return (i10 & JRTUtil.NOTIFY_MODULES) == 0 ? FileVisitResult.CONTINUE : jrtFileVisitor.visitModule(path, JRTUtil.sanitizedFileName(name));
                    }
                    return FileVisitResult.SKIP_SUBTREE;
                }
                if ((i10 & JRTUtil.NOTIFY_PACKAGES) == 0) {
                    return FileVisitResult.CONTINUE;
                }
                return jrtFileVisitor.visitPackage(path.subpath(2, nameCount), path.getName(1), basicFileAttributes);
            }

            @Override
            public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
                if ((i10 & JRTUtil.NOTIFY_FILES) == 0) {
                    return FileVisitResult.CONTINUE;
                }
                if (path.getNameCount() == 3) {
                    JrtFileSystem.this.cachePackage("", path.getName(1).toString());
                }
                return jrtFileVisitor.visitFile(path.subpath(2, path.getNameCount()), path.getName(1), basicFileAttributes);
            }
        });
    }

    public ClassFileReader getClassfile(String str, String str2, Predicate<String> predicate) throws IOException, ClassFormatException {
        if (str2 == null) {
            return getClassfile(str, predicate);
        }
        byte[] classfileBytes = getClassfileBytes(str, str2);
        if (classfileBytes == null) {
            return null;
        }
        ClassFileReader classFileReader = new ClassFileReader(classfileBytes, str.toCharArray());
        classFileReader.moduleName = str2.toCharArray();
        return classFileReader;
    }

    public ClassFileReader getClassfile(String str, IModule iModule) throws IOException, ClassFormatException {
        if (iModule == null) {
            return getClassfile(str, (Predicate<String>) null);
        }
        byte[] classfileBytes = getClassfileBytes(str, new String(iModule.name()));
        if (classfileBytes != null) {
            return new ClassFileReader(classfileBytes, str.toCharArray());
        }
        return null;
    }
}
