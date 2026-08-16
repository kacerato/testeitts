package org.apache.commons.math3.random;

public class Well512a extends AbstractWell {

    private static final int f100331K = 512;

    private static final int f100332M1 = 13;

    private static final int f100333M2 = 9;

    private static final int f100334M3 = 5;
    private static final long serialVersionUID = -6104179812103820574L;

    public Well512a() {
        super(512, 13, 9, 5);
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
        int i16 = iArr2[i12];
        int i17 = (i13 ^ (i13 << 16)) ^ (i14 ^ (i14 << 15));
        int i18 = (i15 >>> 11) ^ i15;
        int i19 = i17 ^ i18;
        int i20 = (((i17 ^ (i17 << 18)) ^ (i16 ^ (i16 << 2))) ^ (i18 << 28)) ^ (((i19 << 5) & (-633066204)) ^ i19);
        iArr2[i11] = i19;
        iArr2[i12] = i20;
        this.index = i12;
        return i20 >>> (32 - i10);
    }

    public Well512a(int i10) {
        super(512, 13, 9, 5, i10);
    }

    public Well512a(int[] iArr) {
        super(512, 13, 9, 5, iArr);
    }

    public Well512a(long j10) {
        super(512, 13, 9, 5, j10);
    }
}
