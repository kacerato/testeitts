package com.android.tools.r8.internal;

public enum B6 extends F6 {
    public B6() {
        super(6, "OR", true);
    }

    @Override
    public final long a(long j10, long j11) {
        return j10 | j11;
    }

    @Override
    public final Integer b(boolean z10) {
        return 0;
    }

    @Override
    public final Integer c(boolean z10) {
        return Integer.valueOf(z10 ? 1 : -1);
    }

    @Override
    public final int d(int i10, int i11) {
        return i10 | i11;
    }

    @Override
    public final AbstractC9702u6 a(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        A40 a40 = new A40(t10, c10340xw0, c10340xw02, c10340xw03);
        a40.x2();
        return a40;
    }

    @Override
    public final Integer d(boolean z10) {
        return 0;
    }

    @Override
    public final Integer a(boolean z10) {
        return Integer.valueOf(z10 ? 1 : -1);
    }
}
