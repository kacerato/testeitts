package org.apache.commons.math3.random;

import java.io.Serializable;
import org.apache.commons.math3.util.FastMath;

public class MersenneTwister extends BitsStreamGenerator implements Serializable {

    private static final int f100308M = 397;
    private static final int[] MAG01 = {0, -1727483681};

    private static final int f100309N = 624;
    private static final long serialVersionUID = 8661194735290153518L;
    private int[] mt;
    private int mti;

    public MersenneTwister() {
        this.mt = new int[f100309N];
        setSeed(System.currentTimeMillis() + System.identityHashCode(this));
    }

    @Override
    public int next(int i10) {
        int i11;
        if (this.mti >= f100309N) {
            int i12 = this.mt[0];
            int i13 = 0;
            while (true) {
                i11 = 227;
                if (i13 >= 227) {
                    break;
                }
                int[] iArr = this.mt;
                int i14 = i13 + 1;
                int i15 = iArr[i14];
                int i16 = (i12 & Integer.MIN_VALUE) | (Integer.MAX_VALUE & i15);
                iArr[i13] = MAG01[i16 & 1] ^ (iArr[i13 + 397] ^ (i16 >>> 1));
                i13 = i14;
                i12 = i15;
            }
            while (i11 < 623) {
                int[] iArr2 = this.mt;
                int i17 = i11 + 1;
                int i18 = iArr2[i17];
                int i19 = (i12 & Integer.MIN_VALUE) | (i18 & Integer.MAX_VALUE);
                iArr2[i11] = MAG01[i19 & 1] ^ (iArr2[i11 - 227] ^ (i19 >>> 1));
                i11 = i17;
                i12 = i18;
            }
            int[] iArr3 = this.mt;
            int i20 = (i12 & Integer.MIN_VALUE) | (Integer.MAX_VALUE & iArr3[0]);
            iArr3[623] = MAG01[i20 & 1] ^ (iArr3[396] ^ (i20 >>> 1));
            this.mti = 0;
        }
        int[] iArr4 = this.mt;
        int i21 = this.mti;
        this.mti = i21 + 1;
        int i22 = iArr4[i21];
        int i23 = i22 ^ (i22 >>> 11);
        int i24 = i23 ^ ((i23 << 7) & (-1658038656));
        int i25 = i24 ^ ((i24 << 15) & (-272236544));
        return (i25 ^ (i25 >>> 18)) >>> (32 - i10);
    }

    @Override
    public void setSeed(int i10) {
        long j10 = i10;
        this.mt[0] = (int) j10;
        int i11 = 1;
        while (true) {
            this.mti = i11;
            int i12 = this.mti;
            if (i12 < f100309N) {
                j10 = (((j10 ^ (j10 >> 30)) * 1812433253) + i12) & 4294967295L;
                this.mt[i12] = (int) j10;
                i11 = i12 + 1;
            } else {
                clear();
                return;
            }
        }
    }

    public MersenneTwister(int i10) {
        this.mt = new int[f100309N];
        setSeed(i10);
    }

    @Override
    public void setSeed(int[] iArr) {
        if (iArr == null) {
            setSeed(System.currentTimeMillis() + System.identityHashCode(this));
            return;
        }
        setSeed(19650218);
        int i10 = 1;
        int i11 = 0;
        for (int max = FastMath.max(f100309N, iArr.length); max != 0; max--) {
            int[] iArr2 = this.mt;
            int i12 = iArr2[i10];
            long j10 = (i12 & 2147483647L) | (i12 < 0 ? 2147483648L : 0L);
            int i13 = iArr2[i10 - 1];
            long j11 = (i13 & 2147483647L) | (i13 < 0 ? 2147483648L : 0L);
            iArr2[i10] = (int) (((((j11 ^ (j11 >> 30)) * 1664525) ^ j10) + iArr[i11] + i11) & 4294967295L);
            i10++;
            i11++;
            if (i10 >= f100309N) {
                iArr2[0] = iArr2[623];
                i10 = 1;
            }
            if (i11 >= iArr.length) {
                i11 = 0;
            }
        }
        for (int i14 = 623; i14 != 0; i14--) {
            int[] iArr3 = this.mt;
            int i15 = iArr3[i10];
            long j12 = (i15 < 0 ? 2147483648L : 0L) | (i15 & 2147483647L);
            int i16 = iArr3[i10 - 1];
            long j13 = (i16 & 2147483647L) | (i16 < 0 ? 2147483648L : 0L);
            iArr3[i10] = (int) (((j12 ^ ((j13 ^ (j13 >> 30)) * 1566083941)) - i10) & 4294967295L);
            i10++;
            if (i10 >= f100309N) {
                iArr3[0] = iArr3[623];
                i10 = 1;
            }
        }
        this.mt[0] = Integer.MIN_VALUE;
        clear();
    }

    public MersenneTwister(int[] iArr) {
        this.mt = new int[f100309N];
        setSeed(iArr);
    }

    public MersenneTwister(long j10) {
        this.mt = new int[f100309N];
        setSeed(j10);
    }

    @Override
    public void setSeed(long j10) {
        setSeed(new int[]{(int) (j10 >>> 32), (int) (j10 & 4294967295L)});
    }
}
