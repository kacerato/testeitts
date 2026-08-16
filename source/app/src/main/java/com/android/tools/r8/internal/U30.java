package com.android.tools.r8.internal;

import java.util.function.Predicate;

public abstract class U30 {
    public static boolean a(Object obj, Object obj2) {
        return !(obj == obj2);
    }

    public static boolean a(com.android.tools.r8.graph.E0 e02, Predicate predicate, boolean z10) {
        return e02 != null ? predicate.test(e02) : z10;
    }
}
