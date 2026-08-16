package org.apache.commons.math3.random;

public class Well19937c extends AbstractWell {

    private static final int f100319K = 19937;

    private static final int f100320M1 = 70;

    private static final int f100321M2 = 179;

    private static final int f100322M3 = 449;
    private static final long serialVersionUID = -7203498180754925124L;

    public Well19937c() {
        super(f100319K, 70, 179, f100322M3);
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
        int i22 = ((i21 << 7) & (-462547200)) ^ i21;
        return (i22 ^ ((i22 << 15) & (-1685684224))) >>> (32 - i10);
    }

    public Well19937c(int i10) {
        super(f100319K, 70, 179, f100322M3, i10);
    }

    public Well19937c(int[] iArr) {
        super(f100319K, 70, 179, f100322M3, iArr);
    }

    public Well19937c(long j10) {
        super(f100319K, 70, 179, f100322M3, j10);
    }
}
