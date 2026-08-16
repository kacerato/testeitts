package com.android.tools.r8.internal;

public final class C8631nj {

    public static final boolean f51040d = true;

    public final int f51041a;

    public int f51042b = 0;

    public int f51043c = 0;

    public C8631nj(int i10) {
        if (!f51040d && i10 < 0) {
            throw new AssertionError();
        }
        this.f51041a = i10;
    }

    public final String toString() {
        int i10 = this.f51041a;
        int i11 = this.f51042b;
        int i12 = this.f51043c;
        long j10 = ((i10 + 1) * i12) - i11;
        return "pc=" + i10 + ", cost=" + i11 + ", methods=" + i12 + ", saved=" + (i11 - i10) + ", overhead=" + (j10 > 2147483647L ? Integer.MAX_VALUE : (int) j10);
    }
}
