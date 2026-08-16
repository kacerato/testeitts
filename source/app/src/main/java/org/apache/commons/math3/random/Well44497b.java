package org.apache.commons.math3.random;

public class Well44497b extends AbstractWell {

    private static final int f100327K = 44497;

    private static final int f100328M1 = 23;

    private static final int f100329M2 = 481;

    private static final int f100330M3 = 229;
    private static final long serialVersionUID = 4032007538246675492L;

    public Well44497b() {
        super(f100327K, 23, f100329M2, 229);
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
        int i18 = (iArr2[i12] & (-32768)) ^ (iArr2[i13] & 32767);
        int i19 = (i14 ^ (i14 << 24)) ^ (i15 ^ (i15 >>> 30));
        int i20 = ((i16 << 10) ^ i16) ^ (i17 << 26);
        int i21 = i19 ^ i20;
        int i22 = ((i20 << 9) ^ (i20 >>> 23)) & (-67108865);
        if ((i20 & 131072) != 0) {
            i22 ^= -1221985044;
        }
        int i23 = (((i19 ^ (i19 >>> 20)) ^ i18) ^ i22) ^ i21;
        iArr2[i11] = i21;
        iArr2[i12] = i23;
        iArr2[i13] = iArr2[i13] & (-32768);
        this.index = i12;
        int i24 = ((i23 << 7) & (-1814227968)) ^ i23;
        return (i24 ^ ((i24 << 15) & (-99516416))) >>> (32 - i10);
    }

    public Well44497b(int i10) {
        super(f100327K, 23, f100329M2, 229, i10);
    }

    public Well44497b(int[] iArr) {
        super(f100327K, 23, f100329M2, 229, iArr);
    }

    public Well44497b(long j10) {
        super(f100327K, 23, f100329M2, 229, j10);
    }
}
