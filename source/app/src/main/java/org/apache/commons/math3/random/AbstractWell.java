package org.apache.commons.math3.random;

import java.io.Serializable;
import org.apache.commons.math3.util.FastMath;

public abstract class AbstractWell extends BitsStreamGenerator implements Serializable {
    private static final long serialVersionUID = -817701723016583596L;

    protected final int[] f100304i1;

    protected final int[] f100305i2;

    protected final int[] f100306i3;
    protected final int[] iRm1;
    protected final int[] iRm2;
    protected int index;

    protected final int[] f100307v;

    public AbstractWell(int i10, int i11, int i12, int i13) {
        this(i10, i11, i12, i13, (int[]) null);
    }

    @Override
    public abstract int next(int i10);

    @Override
    public void setSeed(int i10) {
        setSeed(new int[]{i10});
    }

    public AbstractWell(int i10, int i11, int i12, int i13, int i14) {
        this(i10, i11, i12, i13, new int[]{i14});
    }

    @Override
    public void setSeed(int[] iArr) {
        if (iArr == null) {
            setSeed(System.currentTimeMillis() + System.identityHashCode(this));
            return;
        }
        int[] iArr2 = this.f100307v;
        System.arraycopy(iArr, 0, iArr2, 0, FastMath.min(iArr.length, iArr2.length));
        if (iArr.length < this.f100307v.length) {
            int length = iArr.length;
            while (true) {
                int[] iArr3 = this.f100307v;
                if (length >= iArr3.length) {
                    break;
                }
                long j10 = iArr3[length - iArr.length];
                iArr3[length] = (int) ((((j10 ^ (j10 >> 30)) * 1812433253) + length) & 4294967295L);
                length++;
            }
        }
        this.index = 0;
        clear();
    }

    public AbstractWell(int i10, int i11, int i12, int i13, int[] iArr) {
        int i14 = (i10 + 31) / 32;
        this.f100307v = new int[i14];
        this.index = 0;
        this.iRm1 = new int[i14];
        this.iRm2 = new int[i14];
        this.f100304i1 = new int[i14];
        this.f100305i2 = new int[i14];
        this.f100306i3 = new int[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            int i16 = i15 + i14;
            this.iRm1[i15] = (i16 - 1) % i14;
            this.iRm2[i15] = (i16 - 2) % i14;
            this.f100304i1[i15] = (i15 + i11) % i14;
            this.f100305i2[i15] = (i15 + i12) % i14;
            this.f100306i3[i15] = (i15 + i13) % i14;
        }
        setSeed(iArr);
    }

    @Override
    public void setSeed(long j10) {
        setSeed(new int[]{(int) (j10 >>> 32), (int) (j10 & 4294967295L)});
    }

    public AbstractWell(int i10, int i11, int i12, int i13, long j10) {
        this(i10, i11, i12, i13, new int[]{(int) (j10 >>> 32), (int) (j10 & 4294967295L)});
    }
}
