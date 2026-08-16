package com.android.tools.r8.internal;

import java.util.logging.Logger;

public abstract class AbstractC6033Ul {

    public static final Logger f44855a = Logger.getLogger(AbstractC6033Ul.class.getName());

    public static final int[] f44856b = new int[0];

    public static final C4990Cl[] f44857c = new C4990Cl[0];

    public static final C5685Ol[] f44858d = new C5685Ol[0];

    public static final C5280Hl[] f44859e = new C5280Hl[0];

    public static final C5975Tl[] f44860f = new C5975Tl[0];

    public static final C5917Sl[] f44861g = new C5917Sl[0];

    public static String a(C5743Pl c5743Pl, C4990Cl c4990Cl, String str) {
        if (c4990Cl != null) {
            return c4990Cl.f39340c + '.' + str;
        }
        String a10 = c5743Pl.f43357b.a();
        if (a10.isEmpty()) {
            return str;
        }
        return a10 + '.' + str;
    }
}
