package com.android.tools.r8.internal;

import java.util.function.Function;

public abstract class LU {
    public static com.android.tools.r8.naming.Q a(com.android.tools.r8.naming.Q q10, Object obj, Function function) {
        if (obj == null) {
            return q10;
        }
        com.android.tools.r8.naming.Q q11 = (com.android.tools.r8.naming.Q) function.apply(obj);
        return q10 == null ? q11 : new KU(q10, q11);
    }
}
