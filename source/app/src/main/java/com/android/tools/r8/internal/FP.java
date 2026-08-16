package com.android.tools.r8.internal;

public final class FP {

    public static final FP f40190b = new FP(C9917vP.f53090d);

    public final C9917vP f40191a;

    public FP(C9917vP c9917vP) {
        this.f40191a = c9917vP;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FP) {
            return this.f40191a.equals(((FP) obj).f40191a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f40191a.hashCode();
    }

    public final String toString() {
        return this.f40191a.toString();
    }
}
