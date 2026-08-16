package com.android.tools.r8.naming;

public final class C11002t0 extends AbstractC11012v0 {

    public final C11007u0[] f56069b = new C11007u0[2];

    public C11002t0() {
        for (int i10 = 0; i10 <= 1; i10++) {
            this.f56069b[i10] = new C11007u0(i10);
        }
    }

    public final M0 a(int i10, int i11) {
        int i12;
        if (i10 < 256 && (i12 = i11 - i10) >= 0 && i12 <= 1) {
            C11007u0 c11007u0 = this.f56069b[i12];
            c11007u0.getClass();
            return (i10 < 0 || i10 >= 256) ? new M0(i10, i10, true) : c11007u0.f56085a[i10];
        }
        return new M0(i10, i11, false);
    }
}
