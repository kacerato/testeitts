package org.eclipse.jdt.core;

public final class Flags {
    public static final int AccAbstract = 1024;
    public static final int AccAnnotation = 8192;
    public static final int AccAnnotationDefault = 131072;
    public static final int AccBridge = 64;
    public static final int AccDefault = 0;
    public static final int AccDefaultMethod = 65536;
    public static final int AccDeprecated = 1048576;
    public static final int AccEnum = 16384;
    public static final int AccFinal = 16;
    public static final int AccInterface = 512;
    public static final int AccModule = 32768;
    public static final int AccNative = 256;
    public static final int AccPrivate = 2;
    public static final int AccProtected = 4;
    public static final int AccPublic = 1;
    public static final int AccStatic = 8;
    public static final int AccStrictfp = 2048;
    public static final int AccSuper = 32;
    public static final int AccSynchronized = 32;
    public static final int AccSynthetic = 4096;
    public static final int AccTransient = 128;
    public static final int AccVarargs = 128;
    public static final int AccVolatile = 64;

    private Flags() {
    }

    public static boolean isAbstract(int i10) {
        return (i10 & 1024) != 0;
    }

    public static boolean isAnnnotationDefault(int i10) {
        return (i10 & 131072) != 0;
    }

    public static boolean isAnnotation(int i10) {
        return (i10 & 8192) != 0;
    }

    public static boolean isBridge(int i10) {
        return (i10 & 64) != 0;
    }

    public static boolean isDefaultMethod(int i10) {
        return (i10 & 65536) != 0;
    }

    public static boolean isDeprecated(int i10) {
        return (i10 & 1048576) != 0;
    }

    public static boolean isEnum(int i10) {
        return (i10 & 16384) != 0;
    }

    public static boolean isFinal(int i10) {
        return (i10 & 16) != 0;
    }

    public static boolean isInterface(int i10) {
        return (i10 & 512) != 0;
    }

    public static boolean isModule(int i10) {
        return (i10 & 32768) != 0;
    }

    public static boolean isNative(int i10) {
        return (i10 & 256) != 0;
    }

    public static boolean isPackageDefault(int i10) {
        return (i10 & 7) == 0;
    }

    public static boolean isPrivate(int i10) {
        return (i10 & 2) != 0;
    }

    public static boolean isProtected(int i10) {
        return (i10 & 4) != 0;
    }

    public static boolean isPublic(int i10) {
        return (i10 & 1) != 0;
    }

    public static boolean isStatic(int i10) {
        return (i10 & 8) != 0;
    }

    public static boolean isStrictfp(int i10) {
        return (i10 & 2048) != 0;
    }

    public static boolean isSuper(int i10) {
        return (i10 & 32) != 0;
    }

    public static boolean isSynchronized(int i10) {
        return (i10 & 32) != 0;
    }

    public static boolean isSynthetic(int i10) {
        return (i10 & 4096) != 0;
    }

    public static boolean isTransient(int i10) {
        return (i10 & 128) != 0;
    }

    public static boolean isVarargs(int i10) {
        return (i10 & 128) != 0;
    }

    public static boolean isVolatile(int i10) {
        return (i10 & 64) != 0;
    }

    public static String toString(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        if (isPublic(i10)) {
            stringBuffer.append("public ");
        }
        if (isProtected(i10)) {
            stringBuffer.append("protected ");
        }
        if (isPrivate(i10)) {
            stringBuffer.append("private ");
        }
        if (isAbstract(i10)) {
            stringBuffer.append("abstract ");
        }
        if (isDefaultMethod(i10)) {
            stringBuffer.append("default ");
        }
        if (isStatic(i10)) {
            stringBuffer.append("static ");
        }
        if (isFinal(i10)) {
            stringBuffer.append("final ");
        }
        if (isSynchronized(i10)) {
            stringBuffer.append("synchronized ");
        }
        if (isNative(i10)) {
            stringBuffer.append("native ");
        }
        if (isStrictfp(i10)) {
            stringBuffer.append("strictfp ");
        }
        if (isTransient(i10)) {
            stringBuffer.append("transient ");
        }
        if (isVolatile(i10)) {
            stringBuffer.append("volatile ");
        }
        int length = stringBuffer.length();
        if (length == 0) {
            return "";
        }
        stringBuffer.setLength(length - 1);
        return stringBuffer.toString();
    }
}
