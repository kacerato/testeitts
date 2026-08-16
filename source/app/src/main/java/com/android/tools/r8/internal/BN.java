package com.android.tools.r8.internal;

import java.util.function.Function;

public abstract class BN {
    public TM a() {
        return null;
    }

    public DN b() {
        return null;
    }

    public final boolean equals(Object obj) {
        throw new RuntimeException();
    }

    public final int hashCode() {
        throw new RuntimeException();
    }

    public final Object a(Function function, Function function2) {
        if (b() != null) {
            return function.apply(b());
        }
        return function2.apply(a());
    }
}
