package com.github.javaparser.utils;

import java.io.File;
import java.net.URISyntaxException;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public final class CodeGenerationUtils {
    private CodeGenerationUtils() {
    }

    public static Path classLoaderRoot(Class<?> c10) {
        try {
            return Paths.get(c10.getProtectionDomain().getCodeSource().getLocation().toURI());
        } catch (URISyntaxException e10) {
            throw new AssertionError("Bug in JavaParser, please report.", e10);
        }
    }

    public static String f(String format, Object... params) {
        return String.format(format, params);
    }

    public static Path fileInPackageAbsolutePath(String root, String pkg, String file) {
        return Paths.get(root, packageToPath(pkg), file).normalize();
    }

    public static Path fileInPackageRelativePath(String pkg, String file) {
        return Paths.get(packageToPath(pkg), file).normalize();
    }

    public static String getterName(Class<?> type, String name) {
        if (name.startsWith("is") && Boolean.TYPE.equals(type)) {
            return name;
        }
        if (Boolean.TYPE.equals(type)) {
            return "is" + Utils.capitalize(name);
        }
        return "get" + Utils.capitalize(name);
    }

    public static String getterToPropertyName(String getterName) {
        if (getterName.startsWith("is")) {
            return Utils.decapitalize(getterName.substring(2));
        }
        if (!getterName.startsWith("get") && !getterName.startsWith("has")) {
            throw new IllegalArgumentException("Unexpected getterName '" + getterName + "'");
        }
        return Utils.decapitalize(getterName.substring(3));
    }

    public static Path mavenModuleRoot(Class<?> c10) {
        return classLoaderRoot(c10).resolve(Paths.get(ClasspathEntry.DOT_DOT, ClasspathEntry.DOT_DOT)).normalize();
    }

    public static String optionalOf(String text, boolean isOptional) {
        return isOptional ? f("Optional.of(%s)", text) : "Optional.empty()";
    }

    public static Path packageAbsolutePath(String root, String pkg) {
        return Paths.get(root, packageToPath(pkg)).normalize();
    }

    public static String packageToPath(String pkg) {
        return pkg.replace('.', File.separatorChar);
    }

    public static String setterName(String fieldName) {
        if (fieldName.startsWith("is")) {
            return "set" + fieldName.substring(2);
        }
        return "set" + Utils.capitalize(fieldName);
    }

    public static Path subtractPaths(Path full, Path difference) {
        while (difference != null) {
            if (!difference.getFileName().equals(full.getFileName())) {
                throw new RuntimeException(f("'%s' could not be subtracted from '%s'", difference, full));
            }
            difference = difference.getParent();
            full = full.getParent();
        }
        return full;
    }

    public static Path fileInPackageAbsolutePath(Path root, String pkg, String file) {
        return fileInPackageAbsolutePath(root.toString(), pkg, file);
    }

    public static Path packageAbsolutePath(Path root, String pkg) {
        return packageAbsolutePath(root.toString(), pkg);
    }
}
