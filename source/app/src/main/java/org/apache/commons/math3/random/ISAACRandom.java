package org.apache.commons.math3.random;

import java.io.Serializable;
import org.apache.commons.math3.util.FastMath;

public class ISAACRandom extends BitsStreamGenerator implements Serializable {
    private static final int GLD_RATIO = -1640531527;
    private static final int H_SIZE = 128;
    private static final int MASK = 1020;
    private static final int SIZE = 256;
    private static final int SIZE_L = 8;
    private static final long serialVersionUID = 7288197941165002400L;
    private final int[] arr;
    private int count;
    private int isaacA;
    private int isaacB;
    private int isaacC;
    private int isaacI;
    private int isaacJ;
    private int isaacX;
    private final int[] mem;
    private final int[] rsl;

    public ISAACRandom() {
        this.rsl = new int[256];
        this.mem = new int[256];
        this.arr = new int[8];
        setSeed(System.currentTimeMillis() + System.identityHashCode(this));
    }

    private void initState() {
        this.isaacA = 0;
        this.isaacB = 0;
        this.isaacC = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.arr;
            if (i10 >= iArr.length) {
                break;
            }
            iArr[i10] = -1640531527;
            i10++;
        }
        for (int i11 = 0; i11 < 4; i11++) {
            shuffle();
        }
        for (int i12 = 0; i12 < 256; i12 += 8) {
            int[] iArr2 = this.arr;
            int i13 = iArr2[0];
            int[] iArr3 = this.rsl;
            iArr2[0] = i13 + iArr3[i12];
            iArr2[1] = iArr2[1] + iArr3[i12 + 1];
            iArr2[2] = iArr2[2] + iArr3[i12 + 2];
            iArr2[3] = iArr2[3] + iArr3[i12 + 3];
            iArr2[4] = iArr2[4] + iArr3[i12 + 4];
            iArr2[5] = iArr2[5] + iArr3[i12 + 5];
            iArr2[6] = iArr2[6] + iArr3[i12 + 6];
            iArr2[7] = iArr2[7] + iArr3[i12 + 7];
            shuffle();
            setState(i12);
        }
        for (int i14 = 0; i14 < 256; i14 += 8) {
            int[] iArr4 = this.arr;
            int i15 = iArr4[0];
            int[] iArr5 = this.mem;
            iArr4[0] = i15 + iArr5[i14];
            iArr4[1] = iArr4[1] + iArr5[i14 + 1];
            iArr4[2] = iArr4[2] + iArr5[i14 + 2];
            iArr4[3] = iArr4[3] + iArr5[i14 + 3];
            iArr4[4] = iArr4[4] + iArr5[i14 + 4];
            iArr4[5] = iArr4[5] + iArr5[i14 + 5];
            iArr4[6] = iArr4[6] + iArr5[i14 + 6];
            iArr4[7] = iArr4[7] + iArr5[i14 + 7];
            shuffle();
            setState(i14);
        }
        isaac();
        this.count = 255;
        clear();
    }

    private void isaac() {
        this.isaacI = 0;
        this.isaacJ = 128;
        int i10 = this.isaacB;
        int i11 = this.isaacC + 1;
        this.isaacC = i11;
        this.isaacB = i10 + i11;
        while (this.isaacI < 128) {
            isaac2();
        }
        this.isaacJ = 0;
        while (this.isaacJ < 128) {
            isaac2();
        }
    }

    private void isaac2() {
        int[] iArr = this.mem;
        this.isaacX = iArr[this.isaacI];
        int i10 = this.isaacA;
        int i11 = i10 ^ (i10 << 13);
        this.isaacA = i11;
        int i12 = this.isaacJ;
        this.isaacJ = i12 + 1;
        this.isaacA = i11 + iArr[i12];
        isaac3();
        int[] iArr2 = this.mem;
        this.isaacX = iArr2[this.isaacI];
        int i13 = this.isaacA;
        int i14 = i13 ^ (i13 >>> 6);
        this.isaacA = i14;
        int i15 = this.isaacJ;
        this.isaacJ = i15 + 1;
        this.isaacA = i14 + iArr2[i15];
        isaac3();
        int[] iArr3 = this.mem;
        this.isaacX = iArr3[this.isaacI];
        int i16 = this.isaacA;
        int i17 = i16 ^ (i16 << 2);
        this.isaacA = i17;
        int i18 = this.isaacJ;
        this.isaacJ = i18 + 1;
        this.isaacA = i17 + iArr3[i18];
        isaac3();
        int[] iArr4 = this.mem;
        this.isaacX = iArr4[this.isaacI];
        int i19 = this.isaacA;
        int i20 = i19 ^ (i19 >>> 16);
        this.isaacA = i20;
        int i21 = this.isaacJ;
        this.isaacJ = i21 + 1;
        this.isaacA = i20 + iArr4[i21];
        isaac3();
    }

    private void isaac3() {
        int[] iArr = this.mem;
        int i10 = this.isaacI;
        int i11 = this.isaacX;
        int i12 = iArr[(i11 & 1020) >> 2] + this.isaacA + this.isaacB;
        iArr[i10] = i12;
        int i13 = iArr[((i12 >> 8) & 1020) >> 2] + i11;
        this.isaacB = i13;
        int[] iArr2 = this.rsl;
        this.isaacI = i10 + 1;
        iArr2[i10] = i13;
    }

    private void setState(int i10) {
        int[] iArr = this.mem;
        int[] iArr2 = this.arr;
        iArr[i10] = iArr2[0];
        iArr[i10 + 1] = iArr2[1];
        iArr[i10 + 2] = iArr2[2];
        iArr[i10 + 3] = iArr2[3];
        iArr[i10 + 4] = iArr2[4];
        iArr[i10 + 5] = iArr2[5];
        iArr[i10 + 6] = iArr2[6];
        iArr[i10 + 7] = iArr2[7];
    }

    private void shuffle() {
        int[] iArr = this.arr;
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = i10 ^ (i11 << 11);
        iArr[0] = i12;
        int i13 = iArr[3] + i12;
        iArr[3] = i13;
        int i14 = iArr[2];
        int i15 = i11 + i14;
        iArr[1] = i15;
        int i16 = i15 ^ (i14 >>> 2);
        iArr[1] = i16;
        int i17 = iArr[4] + i16;
        iArr[4] = i17;
        int i18 = i14 + i13;
        iArr[2] = i18;
        int i19 = i18 ^ (i13 << 8);
        iArr[2] = i19;
        int i20 = iArr[5] + i19;
        iArr[5] = i20;
        int i21 = i13 + i17;
        iArr[3] = i21;
        int i22 = i21 ^ (i17 >>> 16);
        iArr[3] = i22;
        int i23 = iArr[6] + i22;
        iArr[6] = i23;
        int i24 = i17 + i20;
        iArr[4] = i24;
        int i25 = (i20 << 10) ^ i24;
        iArr[4] = i25;
        int i26 = iArr[7] + i25;
        iArr[7] = i26;
        int i27 = i20 + i23;
        iArr[5] = i27;
        int i28 = (i23 >>> 4) ^ i27;
        iArr[5] = i28;
        int i29 = i12 + i28;
        iArr[0] = i29;
        int i30 = i23 + i26;
        iArr[6] = i30;
        int i31 = (i26 << 8) ^ i30;
        iArr[6] = i31;
        int i32 = i16 + i31;
        iArr[1] = i32;
        int i33 = i26 + i29;
        iArr[7] = i33;
        int i34 = (i29 >>> 9) ^ i33;
        iArr[7] = i34;
        iArr[2] = i19 + i34;
        iArr[0] = i29 + i32;
    }

    @Override
    public int next(int i10) {
        if (this.count < 0) {
            isaac();
            this.count = 255;
        }
        int[] iArr = this.rsl;
        int i11 = this.count;
        this.count = i11 - 1;
        return iArr[i11] >>> (32 - i10);
    }

    @Override
    public void setSeed(int i10) {
        setSeed(new int[]{i10});
    }

    @Override
    public void setSeed(long j10) {
        setSeed(new int[]{(int) (j10 >>> 32), (int) (j10 & 4294967295L)});
    }

    @Override
    public void setSeed(int[] iArr) {
        if (iArr == null) {
            setSeed(System.currentTimeMillis() + System.identityHashCode(this));
            return;
        }
        int length = iArr.length;
        int[] iArr2 = this.rsl;
        int length2 = iArr2.length;
        System.arraycopy(iArr, 0, iArr2, 0, FastMath.min(length, length2));
        if (length < length2) {
            for (int i10 = length; i10 < length2; i10++) {
                int[] iArr3 = this.rsl;
                long j10 = iArr3[i10 - length];
                iArr3[i10] = (int) ((((j10 ^ (j10 >> 30)) * 1812433253) + i10) & 4294967295L);
            }
        }
        initState();
    }

    public ISAACRandom(long j10) {
        this.rsl = new int[256];
        this.mem = new int[256];
        this.arr = new int[8];
        setSeed(j10);
    }

    public ISAACRandom(int[] iArr) {
        this.rsl = new int[256];
        this.mem = new int[256];
        this.arr = new int[8];
        setSeed(iArr);
    }
}
