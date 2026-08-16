package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.core.JavaElement;

public abstract class AbstractC6123Wb implements V60 {
    public static String a(char c10) {
        char[] cArr = new char[6];
        cArr[0] = JavaElement.JEM_ESCAPE;
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            cArr[5 - i10] = "0123456789ABCDEF".charAt(c10 & 15);
            c10 = (char) (c10 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public abstract boolean b(char c10);
}
