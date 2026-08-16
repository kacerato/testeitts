package org.eclipse.jdt.internal.compiler.classfmt;

public class JavaBinaryNames {
    public static boolean isClinit(char[] cArr) {
        return cArr[0] == '<' && cArr.length == 8;
    }

    public static boolean isConstructor(char[] cArr) {
        return cArr[0] == '<' && cArr.length == 6;
    }
}
