package org.apache.commons.math3.random;

public class Well19937a extends AbstractWell {

    private static final int f100315K = 19937;

    private static final int f100316M1 = 70;

    private static final int f100317M2 = 179;

    private static final int f100318M3 = 449;
    private static final long serialVersionUID = -7462102162223815419L;

    public Well19937a() {
        super(f100315K, 70, 179, f100318M3);
    }

    @Override
    public int next(int i10) {
        int[] iArr = this.iRm1;
        int i11 = this.index;
        int i12 = iArr[i11];
        int i13 = this.iRm2[i11];
        int[] iArr2 = this.f100307v;
        int i14 = iArr2[i11];
        int i15 = iArr2[this.f100304i1[i11]];
        int i16 = iArr2[this.f100305i2[i11]];
        int i17 = iArr2[this.f100306i3[i11]];
        int i18 = (i14 ^ (i14 << 25)) ^ (i15 ^ (i15 >>> 27));
        int i19 = (i16 >>> 9) ^ ((i17 >>> 1) ^ i17);
        int i20 = i18 ^ i19;
        int i21 = (((i18 ^ (i18 << 9)) ^ ((iArr2[i12] & Integer.MIN_VALUE) ^ (Integer.MAX_VALUE & iArr2[i13]))) ^ (i19 ^ (i19 << 21))) ^ ((i20 >>> 21) ^ i20);
        iArr2[i11] = i20;
        iArr2[i12] = i21;
        iArr2[i13] = iArr2[i13] & Integer.MIN_VALUE;
        this.index = i12;
        return i21 >>> (32 - i10);
    }

    public Well19937a(int i10) {
        super(f100315K, 70, 179, f100318M3, i10);
    }

    public Well19937a(int[] iArr) {
        super(f100315K, 70, 179, f100318M3, iArr);
    }

    public Well19937a(long j10) {
        super(f100315K, 70, 179, f100318M3, j10);
    }
}
