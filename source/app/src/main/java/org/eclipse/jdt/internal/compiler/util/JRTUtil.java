package org.eclipse.jdt.internal.compiler.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.nio.channels.ClosedByInterruptException;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IModule;

public class JRTUtil {
    static final String DEFAULT_PACKAGE = "";
    public static final String JRT_FS_JAR = "jrt-fs.jar";
    static final String MODULES_SUBDIR = "/modules";
    static final String MULTIPLE = "MU";
    public static final String JAVA_BASE = "java.base";
    public static final char[] JAVA_BASE_CHAR = JAVA_BASE.toCharArray();
    static final String[] DEFAULT_MODULE = {JAVA_BASE};
    static final String[] NO_MODULE = new String[0];
    static String MODULE_TO_LOAD = null;
    static URI JRT_URI = URI.create("jrt:/");
    public static int NOTIFY_FILES = 1;
    public static int NOTIFY_PACKAGES = 2;
    public static int NOTIFY_MODULES = 4;
    public static int NOTIFY_ALL = (1 | 2) | 4;
    private static Map<String, JrtFileSystem> images = null;
    private static final Object lock = new Object();

    public static abstract class AbstractFileVisitor<T> implements FileVisitor<T> {
        @Override
        public FileVisitResult postVisitDirectory(T t10, IOException iOException) throws IOException {
            return FileVisitResult.CONTINUE;
        }

        @Override
        public FileVisitResult preVisitDirectory(T t10, BasicFileAttributes basicFileAttributes) throws IOException {
            return FileVisitResult.CONTINUE;
        }

        @Override
        public FileVisitResult visitFile(T t10, BasicFileAttributes basicFileAttributes) throws IOException {
            return FileVisitResult.CONTINUE;
        }

        @Override
        public FileVisitResult visitFileFailed(T t10, IOException iOException) throws IOException {
            return FileVisitResult.CONTINUE;
        }
    }

    public interface JrtFileVisitor<T> {
        FileVisitResult visitFile(T t10, T t11, BasicFileAttributes basicFileAttributes) throws IOException;

        FileVisitResult visitModule(T t10, String str) throws IOException;

        FileVisitResult visitPackage(T t10, T t11, BasicFileAttributes basicFileAttributes) throws IOException;
    }

    public static ClassFileReader getClassfile(File file, String str, IModule iModule) throws IOException, ClassFormatException {
        return getJrtSystem(file).getClassfile(str, iModule);
    }

    public static byte[] getClassfileContent(File file, String str, String str2) throws IOException, ClassFormatException {
        return getJrtSystem(file).getClassfileContent(str, str2);
    }

    public static InputStream getContentFromJrt(File file, String str, String str2) throws IOException {
        return getJrtSystem(file).getContentFromJrt(str, str2);
    }

    public static JrtFileSystem getJrtSystem(File file) {
        return getJrtSystem(file, null);
    }

    public static List<String> getModulesDeclaringPackage(File file, String str, String str2) {
        return getJrtSystem(file).getModulesDeclaringPackage(str, str2);
    }

    public static boolean hasCompilationUnit(File file, String str, String str2) {
        return getJrtSystem(file).hasClassFile(str, str2);
    }

    public static void reset() {
        images = null;
        MODULE_TO_LOAD = System.getProperty("modules.to.load");
    }

    public static byte[] safeReadBytes(Path path) throws IOException {
        try {
            return Files.readAllBytes(path);
        } catch (ClosedByInterruptException | NoSuchFileException unused) {
            return null;
        }
    }

    public static String sanitizedFileName(Path path) {
        String path2 = path.getFileName().toString();
        return (path2.length() <= 1 || path2.charAt(path2.length() - 1) != '/') ? path2 : path2.substring(0, path2.length() - 1);
    }

    public static void walkModuleImage(File file, JrtFileVisitor<Path> jrtFileVisitor, int i10) throws IOException {
        getJrtSystem(file, null).walkModuleImage(jrtFileVisitor, i10);
    }

    public static ClassFileReader getClassfile(File file, String str, String str2, Predicate<String> predicate) throws IOException, ClassFormatException {
        return getJrtSystem(file).getClassfile(str, str2, predicate);
    }

    public static JrtFileSystem getJrtSystem(File file, String str) {
        JrtFileSystem jrtFileSystem;
        Map<String, JrtFileSystem> map = images;
        if (map == null) {
            synchronized (lock) {
                try {
                    map = images;
                    if (map == null) {
                        map = new HashMap<>();
                        images = map;
                    }
                } finally {
                }
            }
        }
        String file2 = file.toString();
        if (str != null) {
            file2 = String.valueOf(file2) + "|" + str;
        }
        synchronized (map) {
            jrtFileSystem = images.get(file2);
            if (jrtFileSystem == null) {
                try {
                    Map<String, JrtFileSystem> map2 = images;
                    jrtFileSystem = JrtFileSystem.getNewJrtFileSystem(file, str);
                    map2.put(file2, jrtFileSystem);
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return jrtFileSystem;
    }

    public static void walkModuleImage(File file, String str, JrtFileVisitor<Path> jrtFileVisitor, int i10) throws IOException {
        getJrtSystem(file, str).walkModuleImage(jrtFileVisitor, i10);
    }
}
