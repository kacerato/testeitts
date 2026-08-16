package org.apache.commons.math3.random;

public class Well1024a extends AbstractWell {

    private static final int f100311K = 1024;

    private static final int f100312M1 = 3;

    private static final int f100313M2 = 24;

    private static final int f100314M3 = 10;
    private static final long serialVersionUID = 5680173464174485492L;

    public Well1024a() {
        super(1024, 3, 24, 10);
    }

    @Override
    public int next(int i10) {
        int[] iArr = this.iRm1;
        int i11 = this.index;
        int i12 = iArr[i11];
        int[] iArr2 = this.f100307v;
        int i13 = iArr2[i11];
        int i14 = iArr2[this.f100304i1[i11]];
        int i15 = iArr2[this.f100305i2[i11]];
        int i16 = iArr2[this.f100306i3[i11]];
        int i17 = iArr2[i12];
        int i18 = i13 ^ (i14 ^ (i14 >>> 8));
        int i19 = ((i15 << 19) ^ i15) ^ ((i16 << 14) ^ i16);
        int i20 = i18 ^ i19;
        int i21 = ((i18 ^ (i18 << 7)) ^ ((i17 << 11) ^ i17)) ^ (i19 ^ (i19 << 13));
        iArr2[i11] = i20;
        iArr2[i12] = i21;
        this.index = i12;
        return i21 >>> (32 - i10);
    }

    public Well1024a(int i10) {
        super(1024, 3, 24, 10, i10);
    }

    public Well1024a(int[] iArr) {
        super(1024, 3, 24, 10, iArr);
    }

    public Well1024a(long j10) {
        super(1024, 3, 24, 10, j10);
    }
}
