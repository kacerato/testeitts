package com.android.tools.r8.internal;

public final class C8464mj {

    public static final C8464mj f50398e = new C8464mj(-1, false, 0, 0);

    public final int f50399a;

    public final boolean f50400b;

    public final int f50401c;

    public final int f50402d;

    public C8464mj(int i10, boolean z10, int i11, int i12) {
        this.f50399a = i10;
        this.f50400b = z10;
        this.f50401c = i11;
        this.f50402d = i12;
    }

    public final String toString() {
        int i10 = this.f50399a;
        boolean z10 = this.f50400b;
        int i11 = this.f50402d;
        int i12 = this.f50401c;
        long j10 = ((i10 + 1) * i12) - i11;
        return "pc=" + i10 + ", converted=" + z10 + ", cost=" + i11 + ", methods=" + i12 + ", saved=" + (i11 - i10) + ", overhead=" + (j10 > 2147483647L ? Integer.MAX_VALUE : (int) j10);
    }
}
