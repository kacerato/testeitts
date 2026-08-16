package com.android.tools.r8.internal;

import java.util.function.Supplier;

public class B4 {

    public static final boolean f38800a = true;

    public static boolean a(Object obj) {
        if (f38800a || obj != null) {
            return true;
        }
        throw new AssertionError();
    }

    public static boolean a(C8570nJ c8570nJ, Supplier supplier) {
        if (c8570nJ.f50599F1.f50829L0) {
            return ((Boolean) supplier.get()).booleanValue();
        }
        return true;
    }
}
