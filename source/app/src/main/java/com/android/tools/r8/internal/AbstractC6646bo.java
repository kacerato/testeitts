package com.android.tools.r8.internal;

public abstract class AbstractC6646bo {

    public static final boolean f46867a = true;

    public static void a(AbstractC5865Ro abstractC5865Ro, AbstractC5635Np abstractC5635Np) {
        boolean z10 = f46867a;
        if (!z10 && abstractC5865Ro.getClass() != abstractC5635Np.getClass()) {
            throw new AssertionError();
        }
        if (!z10 && abstractC5865Ro.v() != abstractC5635Np.p()) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC5865Ro.toString().equals(abstractC5635Np.toString())) {
            throw new AssertionError();
        }
    }
}
