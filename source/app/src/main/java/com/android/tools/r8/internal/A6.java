package com.android.tools.r8.internal;

public enum A6 extends F6 {
    public A6() {
        super(5, "AND", true);
    }

    @Override
    public final long a(long j10, long j11) {
        return j10 & j11;
    }

    @Override
    public final Integer b(boolean z10) {
        return Integer.valueOf(z10 ? 1 : -1);
    }

    @Override
    public final Integer c(boolean z10) {
        return 0;
    }

    @Override
    public final int d(int i10, int i11) {
        return i10 & i11;
    }

    @Override
    public final AbstractC9702u6 a(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        C9523t2 c9523t2 = new C9523t2(t10, c10340xw0, c10340xw02, c10340xw03);
        c9523t2.x2();
        return c9523t2;
    }

    @Override
    public final Integer d(boolean z10) {
        return Integer.valueOf(z10 ? 1 : -1);
    }

    @Override
    public final Integer a(boolean z10) {
        return 0;
    }
}
