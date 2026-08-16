package com.android.tools.r8.naming;

import com.android.tools.r8.internal.C8570nJ;

public class T {

    public static final boolean f55756a = true;

    public static String a(C10912b... c10912bArr) throws MappingComposeException {
        C8570nJ c8570nJ = new C8570nJ();
        if (!f55756a && c10912bArr.length <= 0) {
            throw new AssertionError();
        }
        C11011v c11011v = new C11011v(c8570nJ);
        for (C10912b c10912b : c10912bArr) {
            c11011v.a(c10912b);
        }
        return c11011v.a();
    }
}
