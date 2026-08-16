package sk;

import java.math.BigInteger;
import org.bouncycastle.util.p;
import w2.C15883c;

public abstract class AbstractC15323i {

    public static final long f109670a = 4294967295L;

    public static boolean A(int[] iArr) {
        for (int i10 = 0; i10 < 8; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean B(long[] jArr) {
        for (int i10 = 0; i10 < 4; i10++) {
            if (jArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void C(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = iArr2[i11] & 4294967295L;
        long j11 = iArr2[i11 + 1] & 4294967295L;
        long j12 = iArr2[i11 + 2] & 4294967295L;
        long j13 = iArr2[i11 + 3] & 4294967295L;
        long j14 = iArr2[i11 + 4] & 4294967295L;
        long j15 = iArr2[i11 + 5] & 4294967295L;
        long j16 = iArr2[i11 + 6] & 4294967295L;
        long j17 = iArr[i10] & 4294967295L;
        long j18 = j17 * j10;
        iArr3[i12] = (int) j18;
        long j19 = (j18 >>> 32) + (j17 * j11);
        iArr3[i12 + 1] = (int) j19;
        long j20 = (j19 >>> 32) + (j17 * j12);
        iArr3[i12 + 2] = (int) j20;
        long j21 = (j20 >>> 32) + (j17 * j13);
        iArr3[i12 + 3] = (int) j21;
        long j22 = (j21 >>> 32) + (j17 * j14);
        iArr3[i12 + 4] = (int) j22;
        long j23 = (j22 >>> 32) + (j17 * j15);
        iArr3[i12 + 5] = (int) j23;
        long j24 = (j23 >>> 32) + (j17 * j16);
        iArr3[i12 + 6] = (int) j24;
        long j25 = iArr2[i11 + 7] & 4294967295L;
        long j26 = (j24 >>> 32) + (j17 * j25);
        iArr3[i12 + 7] = (int) j26;
        iArr3[i12 + 8] = (int) (j26 >>> 32);
        int i13 = 1;
        int i14 = i12;
        while (i13 < 8) {
            int i15 = i14 + 1;
            long j27 = iArr[i10 + i13] & 4294967295L;
            long j28 = j25;
            int i16 = i13;
            long j29 = (j27 * j10) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j29;
            long j30 = (j29 >>> 32) + (j27 * j11) + (iArr3[r16] & 4294967295L);
            iArr3[i14 + 2] = (int) j30;
            long j31 = j12;
            long j32 = (j30 >>> 32) + (j27 * j12) + (iArr3[r16] & 4294967295L);
            iArr3[i14 + 3] = (int) j32;
            int i17 = i14;
            long j33 = (j32 >>> 32) + (j27 * j13) + (iArr3[r6] & 4294967295L);
            iArr3[i14 + 4] = (int) j33;
            long j34 = (j33 >>> 32) + (j27 * j14) + (iArr3[r5] & 4294967295L);
            iArr3[i17 + 5] = (int) j34;
            long j35 = (j34 >>> 32) + (j27 * j15) + (iArr3[r5] & 4294967295L);
            iArr3[i17 + 6] = (int) j35;
            long j36 = (j35 >>> 32) + (j27 * j16) + (iArr3[r5] & 4294967295L);
            iArr3[i17 + 7] = (int) j36;
            long j37 = (j36 >>> 32) + (j27 * j28) + (iArr3[r3] & 4294967295L);
            iArr3[i17 + 8] = (int) j37;
            iArr3[i17 + 9] = (int) (j37 >>> 32);
            i13 = i16 + 1;
            i14 = i15;
            j12 = j31;
            j25 = j28;
        }
    }

    public static void D(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = iArr2[6] & 4294967295L;
        long j17 = iArr2[7] & 4294967295L;
        long j18 = iArr[0] & 4294967295L;
        long j19 = j18 * j10;
        iArr3[0] = (int) j19;
        long j20 = (j19 >>> 32) + (j18 * j11);
        iArr3[1] = (int) j20;
        long j21 = (j20 >>> 32) + (j18 * j12);
        iArr3[2] = (int) j21;
        long j22 = (j21 >>> 32) + (j18 * j13);
        iArr3[3] = (int) j22;
        long j23 = (j22 >>> 32) + (j18 * j14);
        iArr3[4] = (int) j23;
        long j24 = (j23 >>> 32) + (j18 * j15);
        iArr3[5] = (int) j24;
        long j25 = (j24 >>> 32) + (j18 * j16);
        iArr3[6] = (int) j25;
        long j26 = (j25 >>> 32) + (j18 * j17);
        iArr3[7] = (int) j26;
        iArr3[8] = (int) (j26 >>> 32);
        int i10 = 1;
        for (int i11 = 8; i10 < i11; i11 = 8) {
            long j27 = iArr[i10] & 4294967295L;
            long j28 = (j27 * j10) + (iArr3[i10] & 4294967295L);
            iArr3[i10] = (int) j28;
            int i12 = i10 + 1;
            long j29 = (j28 >>> 32) + (j27 * j11) + (iArr3[i12] & 4294967295L);
            iArr3[i12] = (int) j29;
            long j30 = j11;
            long j31 = (j29 >>> 32) + (j27 * j12) + (iArr3[r18] & 4294967295L);
            iArr3[i10 + 2] = (int) j31;
            long j32 = (j31 >>> 32) + (j27 * j13) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 3] = (int) j32;
            long j33 = (j32 >>> 32) + (j27 * j14) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 4] = (int) j33;
            long j34 = (j33 >>> 32) + (j27 * j15) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 5] = (int) j34;
            long j35 = (j34 >>> 32) + (j27 * j16) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 6] = (int) j35;
            long j36 = (j35 >>> 32) + (j27 * j17) + (iArr3[r3] & 4294967295L);
            iArr3[i10 + 7] = (int) j36;
            iArr3[i10 + 8] = (int) (j36 >>> 32);
            j13 = j13;
            j10 = j10;
            i10 = i12;
            j11 = j30;
        }
    }

    public static void E(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr[0] & 4294967295L;
        long j11 = iArr[1] & 4294967295L;
        long j12 = iArr[2] & 4294967295L;
        long j13 = iArr[3] & 4294967295L;
        long j14 = iArr[4] & 4294967295L;
        long j15 = iArr[5] & 4294967295L;
        long j16 = iArr[6] & 4294967295L;
        long j17 = iArr[7] & 4294967295L;
        long j18 = iArr2[0] & 4294967295L;
        long j19 = j18 * j10;
        iArr3[0] = (int) j19;
        char c10 = C15883c.f126249O;
        long j20 = (j19 >>> 32) + (j18 * j11);
        iArr3[1] = (int) j20;
        long j21 = (j20 >>> 32) + (j18 * j12);
        iArr3[2] = (int) j21;
        long j22 = (j21 >>> 32) + (j18 * j13);
        iArr3[3] = (int) j22;
        long j23 = (j22 >>> 32) + (j18 * j14);
        iArr3[4] = (int) j23;
        long j24 = (j23 >>> 32) + (j18 * j15);
        iArr3[5] = (int) j24;
        long j25 = (j24 >>> 32) + (j18 * j16);
        iArr3[6] = (int) j25;
        long j26 = (j25 >>> 32) + (j18 * j17);
        iArr3[7] = (int) j26;
        iArr3[8] = (int) (j26 >>> 32);
        int i10 = 1;
        while (i10 < 4) {
            long j27 = iArr2[i10] & 4294967295L;
            long j28 = (j27 * j10) + (iArr3[i10] & 4294967295L);
            long j29 = j10;
            iArr3[i10] = (int) j28;
            int i11 = i10 + 1;
            long j30 = j11;
            long j31 = (j28 >>> c10) + (j27 * j11) + (iArr3[i11] & 4294967295L);
            iArr3[i11] = (int) j31;
            long j32 = (j31 >>> 32) + (j27 * j12) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 2] = (int) j32;
            long j33 = (j32 >>> 32) + (j27 * j13) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 3] = (int) j33;
            long j34 = (j33 >>> 32) + (j27 * j14) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 4] = (int) j34;
            long j35 = (j34 >>> 32) + (j27 * j15) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 5] = (int) j35;
            long j36 = (j35 >>> 32) + (j27 * j16) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 6] = (int) j36;
            c10 = C15883c.f126249O;
            long j37 = (j36 >>> 32) + (j27 * j17) + (iArr3[r3] & 4294967295L);
            iArr3[i10 + 7] = (int) j37;
            iArr3[i10 + 8] = (int) (j37 >>> 32);
            j10 = j29;
            i10 = i11;
            j11 = j30;
        }
    }

    public static long F(int i10, int[] iArr, int i11, int[] iArr2, int i12, int[] iArr3, int i13) {
        long j10 = i10 & 4294967295L;
        long j11 = iArr[i11] & 4294967295L;
        long j12 = (j10 * j11) + (iArr2[i12] & 4294967295L);
        iArr3[i13] = (int) j12;
        long j13 = iArr[i11 + 1] & 4294967295L;
        long j14 = (j12 >>> 32) + (j10 * j13) + j11 + (iArr2[i12 + 1] & 4294967295L);
        iArr3[i13 + 1] = (int) j14;
        long j15 = j14 >>> 32;
        long j16 = iArr[i11 + 2] & 4294967295L;
        long j17 = j15 + (j10 * j16) + j13 + (iArr2[i12 + 2] & 4294967295L);
        iArr3[i13 + 2] = (int) j17;
        long j18 = iArr[i11 + 3] & 4294967295L;
        long j19 = (j17 >>> 32) + (j10 * j18) + j16 + (iArr2[i12 + 3] & 4294967295L);
        iArr3[i13 + 3] = (int) j19;
        long j20 = iArr[i11 + 4] & 4294967295L;
        long j21 = (j19 >>> 32) + (j10 * j20) + j18 + (iArr2[i12 + 4] & 4294967295L);
        iArr3[i13 + 4] = (int) j21;
        long j22 = iArr[i11 + 5] & 4294967295L;
        long j23 = (j21 >>> 32) + (j10 * j22) + j20 + (iArr2[i12 + 5] & 4294967295L);
        iArr3[i13 + 5] = (int) j23;
        long j24 = iArr[i11 + 6] & 4294967295L;
        long j25 = (j23 >>> 32) + (j10 * j24) + j22 + (iArr2[i12 + 6] & 4294967295L);
        iArr3[i13 + 6] = (int) j25;
        long j26 = iArr[i11 + 7] & 4294967295L;
        long j27 = (j25 >>> 32) + (j10 * j26) + j24 + (4294967295L & iArr2[i12 + 7]);
        iArr3[i13 + 7] = (int) j27;
        return (j27 >>> 32) + j26;
    }

    public static int G(int i10, long j10, int[] iArr, int i11) {
        long j11 = i10 & 4294967295L;
        long j12 = j10 & 4294967295L;
        long j13 = (j11 * j12) + (iArr[i11] & 4294967295L);
        iArr[i11] = (int) j13;
        long j14 = j10 >>> 32;
        long j15 = (j11 * j14) + j12;
        long j16 = (j13 >>> 32) + j15 + (iArr[r4] & 4294967295L);
        iArr[i11 + 1] = (int) j16;
        long j17 = (j16 >>> 32) + j14 + (iArr[r4] & 4294967295L);
        iArr[i11 + 2] = (int) j17;
        long j18 = j17 >>> 32;
        long j19 = j18 + (iArr[r0] & 4294967295L);
        iArr[i11 + 3] = (int) j19;
        if ((j19 >>> 32) == 0) {
            return 0;
        }
        return AbstractC15329o.e0(8, iArr, i11, 4);
    }

    public static int H(int i10, int i11, int[] iArr, int i12) {
        long j10 = i10 & 4294967295L;
        long j11 = i11 & 4294967295L;
        long j12 = (j10 * j11) + (iArr[i12] & 4294967295L);
        iArr[i12] = (int) j12;
        long j13 = (j12 >>> 32) + j11 + (iArr[r5] & 4294967295L);
        iArr[i12 + 1] = (int) j13;
        long j14 = j13 >>> 32;
        long j15 = j14 + (iArr[r0] & 4294967295L);
        iArr[i12 + 2] = (int) j15;
        if ((j15 >>> 32) == 0) {
            return 0;
        }
        return AbstractC15329o.e0(8, iArr, i12, 3);
    }

    public static int I(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = iArr2[i11] & 4294967295L;
        long j11 = iArr2[i11 + 1] & 4294967295L;
        long j12 = iArr2[i11 + 2] & 4294967295L;
        long j13 = iArr2[i11 + 3] & 4294967295L;
        long j14 = iArr2[i11 + 4] & 4294967295L;
        long j15 = iArr2[i11 + 5] & 4294967295L;
        long j16 = iArr2[i11 + 6] & 4294967295L;
        long j17 = iArr2[i11 + 7] & 4294967295L;
        int i13 = 0;
        long j18 = 0;
        int i14 = i12;
        while (i13 < 8) {
            int i15 = i13;
            long j19 = iArr[i10 + i13] & 4294967295L;
            long j20 = j10;
            long j21 = (j19 * j10) + (iArr3[i14] & 4294967295L);
            long j22 = j17;
            iArr3[i14] = (int) j21;
            int i16 = i14 + 1;
            long j23 = (j21 >>> 32) + (j19 * j11) + (iArr3[i16] & 4294967295L);
            iArr3[i16] = (int) j23;
            long j24 = (j23 >>> 32) + (j19 * j12) + (iArr3[r5] & 4294967295L);
            iArr3[i14 + 2] = (int) j24;
            long j25 = (j24 >>> 32) + (j19 * j13) + (iArr3[r5] & 4294967295L);
            iArr3[i14 + 3] = (int) j25;
            long j26 = (j25 >>> 32) + (j19 * j14) + (iArr3[r5] & 4294967295L);
            iArr3[i14 + 4] = (int) j26;
            long j27 = (j26 >>> 32) + (j19 * j15) + (iArr3[r5] & 4294967295L);
            iArr3[i14 + 5] = (int) j27;
            long j28 = (j27 >>> 32) + (j19 * j16) + (iArr3[r5] & 4294967295L);
            iArr3[i14 + 6] = (int) j28;
            long j29 = (j28 >>> 32) + (j19 * j22) + (iArr3[r5] & 4294967295L);
            iArr3[i14 + 7] = (int) j29;
            long j30 = (j29 >>> 32) + (iArr3[r16] & 4294967295L) + j18;
            iArr3[i14 + 8] = (int) j30;
            j18 = j30 >>> 32;
            i13 = i15 + 1;
            i14 = i16;
            j17 = j22;
            j10 = j20;
            j11 = j11;
        }
        return (int) j18;
    }

    public static int J(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = iArr2[6] & 4294967295L;
        long j17 = iArr2[7] & 4294967295L;
        long j18 = 0;
        int i10 = 0;
        while (i10 < 8) {
            long j19 = j17;
            long j20 = iArr[i10] & 4294967295L;
            long j21 = j15;
            long j22 = (iArr3[i10] & 4294967295L) + (j20 * j10);
            iArr3[i10] = (int) j22;
            int i11 = i10 + 1;
            long j23 = j11;
            long j24 = (j22 >>> 32) + (j20 * j11) + (iArr3[i11] & 4294967295L);
            iArr3[i11] = (int) j24;
            long j25 = (j24 >>> 32) + (j20 * j12) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 2] = (int) j25;
            long j26 = (j25 >>> 32) + (j20 * j13) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 3] = (int) j26;
            long j27 = (j26 >>> 32) + (j20 * j14) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 4] = (int) j27;
            long j28 = (j27 >>> 32) + (j20 * j21) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 5] = (int) j28;
            long j29 = (j28 >>> 32) + (j20 * j16) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 6] = (int) j29;
            long j30 = (j29 >>> 32) + (j20 * j19) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 7] = (int) j30;
            long j31 = (j30 >>> 32) + (iArr3[r2] & 4294967295L) + j18;
            iArr3[i10 + 8] = (int) j31;
            j18 = j31 >>> 32;
            i10 = i11;
            j17 = j19;
            j15 = j21;
            j11 = j23;
        }
        return (int) j18;
    }

    public static int K(int i10, int[] iArr) {
        long j10 = i10 & 4294967295L;
        long j11 = (iArr[0] & 4294967295L) * j10;
        iArr[0] = (int) j11;
        long j12 = (j11 >>> 32) + ((iArr[1] & 4294967295L) * j10);
        iArr[1] = (int) j12;
        long j13 = (j12 >>> 32) + ((iArr[2] & 4294967295L) * j10);
        iArr[2] = (int) j13;
        long j14 = (j13 >>> 32) + ((iArr[3] & 4294967295L) * j10);
        iArr[3] = (int) j14;
        long j15 = (j14 >>> 32) + ((iArr[4] & 4294967295L) * j10);
        iArr[4] = (int) j15;
        long j16 = (j15 >>> 32) + ((iArr[5] & 4294967295L) * j10);
        iArr[5] = (int) j16;
        long j17 = (j16 >>> 32) + ((iArr[6] & 4294967295L) * j10);
        iArr[6] = (int) j17;
        long j18 = (j17 >>> 32) + (j10 * (4294967295L & iArr[7]));
        iArr[7] = (int) j18;
        return (int) (j18 >>> 32);
    }

    public static int L(int i10, int[] iArr, int[] iArr2) {
        long j10 = i10 & 4294967295L;
        long j11 = ((iArr2[0] & 4294967295L) * j10) + (iArr[0] & 4294967295L);
        iArr2[0] = (int) j11;
        long j12 = (j11 >>> 32) + ((iArr2[1] & 4294967295L) * j10) + (iArr[1] & 4294967295L);
        iArr2[1] = (int) j12;
        long j13 = (j12 >>> 32) + ((iArr2[2] & 4294967295L) * j10) + (iArr[2] & 4294967295L);
        iArr2[2] = (int) j13;
        long j14 = (j13 >>> 32) + ((iArr2[3] & 4294967295L) * j10) + (iArr[3] & 4294967295L);
        iArr2[3] = (int) j14;
        long j15 = (j14 >>> 32) + ((iArr2[4] & 4294967295L) * j10) + (iArr[4] & 4294967295L);
        iArr2[4] = (int) j15;
        long j16 = (j15 >>> 32) + ((iArr2[5] & 4294967295L) * j10) + (iArr[5] & 4294967295L);
        iArr2[5] = (int) j16;
        long j17 = (j16 >>> 32) + ((iArr2[6] & 4294967295L) * j10) + (iArr[6] & 4294967295L);
        iArr2[6] = (int) j17;
        long j18 = (j17 >>> 32) + (j10 * (iArr2[7] & 4294967295L)) + (4294967295L & iArr[7]);
        iArr2[7] = (int) j18;
        return (int) (j18 >>> 32);
    }

    public static int M(int i10, int[] iArr, int[] iArr2, int i11) {
        long j10 = i10 & 4294967295L;
        long j11 = 0;
        int i12 = 0;
        do {
            long j12 = j11 + ((iArr[i12] & 4294967295L) * j10);
            iArr2[i11 + i12] = (int) j12;
            j11 = j12 >>> 32;
            i12++;
        } while (i12 < 8);
        return (int) j11;
    }

    public static int N(int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        long j10 = i10 & 4294967295L;
        long j11 = ((iArr[i11] & 4294967295L) * j10) + (iArr2[i12] & 4294967295L);
        iArr2[i12] = (int) j11;
        long j12 = (j11 >>> 32) + ((iArr[i11 + 1] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L);
        iArr2[i12 + 1] = (int) j12;
        long j13 = (j12 >>> 32) + ((iArr[i11 + 2] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L);
        iArr2[i12 + 2] = (int) j13;
        long j14 = (j13 >>> 32) + ((iArr[i11 + 3] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L);
        iArr2[i12 + 3] = (int) j14;
        long j15 = (j14 >>> 32) + ((iArr[i11 + 4] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L);
        iArr2[i12 + 4] = (int) j15;
        long j16 = (j15 >>> 32) + ((iArr[i11 + 5] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L);
        iArr2[i12 + 5] = (int) j16;
        long j17 = (j16 >>> 32) + ((iArr[i11 + 6] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L);
        iArr2[i12 + 6] = (int) j17;
        long j18 = (j17 >>> 32) + (j10 * (iArr[i11 + 7] & 4294967295L)) + (iArr2[r15] & 4294967295L);
        iArr2[i12 + 7] = (int) j18;
        return (int) (j18 >>> 32);
    }

    public static int O(int i10, long j10, int[] iArr, int i11) {
        long j11 = i10 & 4294967295L;
        long j12 = ((j10 & 4294967295L) * j11) + (iArr[i11] & 4294967295L);
        iArr[i11] = (int) j12;
        long j13 = j11 * (j10 >>> 32);
        long j14 = (j12 >>> 32) + j13 + (iArr[r9] & 4294967295L);
        iArr[i11 + 1] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[r0] & 4294967295L);
        iArr[i11 + 2] = (int) j15;
        if ((j15 >>> 32) == 0) {
            return 0;
        }
        return AbstractC15329o.e0(8, iArr, i11, 3);
    }

    public static void P(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = iArr[i10] & 4294967295L;
        int i12 = 0;
        int i13 = 16;
        int i14 = 7;
        while (true) {
            int i15 = i14 - 1;
            long j11 = iArr[i10 + i14] & 4294967295L;
            long j12 = j11 * j11;
            iArr2[i11 + (i13 - 1)] = (i12 << 31) | ((int) (j12 >>> 33));
            i13 -= 2;
            iArr2[i11 + i13] = (int) (j12 >>> 1);
            i12 = (int) j12;
            if (i15 <= 0) {
                long j13 = j10 * j10;
                long j14 = (j13 >>> 33) | ((i12 << 31) & 4294967295L);
                iArr2[i11] = (int) j13;
                int i16 = ((int) (j13 >>> 32)) & 1;
                long j15 = iArr[i10 + 1] & 4294967295L;
                long j16 = j14 + (j15 * j10);
                int i17 = (int) j16;
                iArr2[i11 + 1] = (i17 << 1) | i16;
                int i18 = i17 >>> 31;
                long j17 = (iArr2[r12] & 4294967295L) + (j16 >>> 32);
                long j18 = iArr[i10 + 2] & 4294967295L;
                long j19 = iArr2[r15] & 4294967295L;
                long j20 = j17 + (j18 * j10);
                int i19 = (int) j20;
                iArr2[i11 + 2] = (i19 << 1) | i18;
                long j21 = j19 + (j20 >>> 32) + (j18 * j15);
                long j22 = (iArr2[r7] & 4294967295L) + (j21 >>> 32);
                long j23 = iArr[i10 + 3] & 4294967295L;
                long j24 = (iArr2[r20] & 4294967295L) + (j22 >>> 32);
                long j25 = j22 & 4294967295L;
                long j26 = (iArr2[r24] & 4294967295L) + (j24 >>> 32);
                long j27 = (j21 & 4294967295L) + (j23 * j10);
                int i20 = (int) j27;
                iArr2[i11 + 3] = (i20 << 1) | (i19 >>> 31);
                long j28 = j25 + (j27 >>> 32) + (j23 * j15);
                long j29 = (j24 & 4294967295L) + (j28 >>> 32) + (j23 * j18);
                long j30 = j26 + (j29 >>> 32);
                long j31 = j29 & 4294967295L;
                long j32 = iArr[i10 + 4] & 4294967295L;
                long j33 = (iArr2[r3] & 4294967295L) + (j30 >>> 32);
                long j34 = (iArr2[r19] & 4294967295L) + (j33 >>> 32);
                long j35 = (j28 & 4294967295L) + (j32 * j10);
                int i21 = (int) j35;
                iArr2[i11 + 4] = (i21 << 1) | (i20 >>> 31);
                int i22 = i21 >>> 31;
                long j36 = j31 + (j35 >>> 32) + (j32 * j15);
                long j37 = (j30 & 4294967295L) + (j36 >>> 32) + (j32 * j18);
                long j38 = (j33 & 4294967295L) + (j37 >>> 32) + (j32 * j23);
                long j39 = j34 + (j38 >>> 32);
                long j40 = j38 & 4294967295L;
                long j41 = iArr[i10 + 5] & 4294967295L;
                long j42 = (iArr2[r7] & 4294967295L) + (j39 >>> 32);
                long j43 = j39 & 4294967295L;
                long j44 = (iArr2[r21] & 4294967295L) + (j42 >>> 32);
                long j45 = (j36 & 4294967295L) + (j41 * j10);
                int i23 = (int) j45;
                iArr2[i11 + 5] = (i23 << 1) | i22;
                int i24 = i23 >>> 31;
                long j46 = (j37 & 4294967295L) + (j45 >>> 32) + (j41 * j15);
                long j47 = j40 + (j46 >>> 32) + (j41 * j18);
                long j48 = j43 + (j47 >>> 32) + (j41 * j23);
                long j49 = (j42 & 4294967295L) + (j48 >>> 32) + (j41 * j32);
                long j50 = j44 + (j49 >>> 32);
                long j51 = j49 & 4294967295L;
                long j52 = iArr[i10 + 6] & 4294967295L;
                long j53 = (iArr2[r7] & 4294967295L) + (j50 >>> 32);
                long j54 = j50 & 4294967295L;
                long j55 = (iArr2[r20] & 4294967295L) + (j53 >>> 32);
                long j56 = (j46 & 4294967295L) + (j52 * j10);
                int i25 = (int) j56;
                iArr2[i11 + 6] = (i25 << 1) | i24;
                int i26 = i25 >>> 31;
                long j57 = (j47 & 4294967295L) + (j56 >>> 32) + (j52 * j15);
                long j58 = (j48 & 4294967295L) + (j57 >>> 32) + (j52 * j18);
                long j59 = j51 + (j58 >>> 32) + (j52 * j23);
                long j60 = j58 & 4294967295L;
                long j61 = j54 + (j59 >>> 32) + (j52 * j32);
                long j62 = (j53 & 4294967295L) + (j61 >>> 32) + (j52 * j41);
                long j63 = j55 + (j62 >>> 32);
                long j64 = j62 & 4294967295L;
                long j65 = iArr[i10 + 7] & 4294967295L;
                long j66 = (iArr2[r7] & 4294967295L) + (j63 >>> 32);
                long j67 = j63 & 4294967295L;
                long j68 = (iArr2[r28] & 4294967295L) + (j66 >>> 32);
                long j69 = 4294967295L & j66;
                long j70 = (j57 & 4294967295L) + (j10 * j65);
                int i27 = (int) j70;
                iArr2[i11 + 7] = (i27 << 1) | i26;
                long j71 = j60 + (j70 >>> 32) + (j15 * j65);
                long j72 = (j59 & 4294967295L) + (j71 >>> 32) + (j65 * j18);
                long j73 = (j61 & 4294967295L) + (j72 >>> 32) + (j65 * j23);
                long j74 = j64 + (j73 >>> 32) + (j65 * j32);
                long j75 = j67 + (j74 >>> 32) + (j65 * j41);
                long j76 = j69 + (j75 >>> 32) + (j65 * j52);
                long j77 = j68 + (j76 >>> 32);
                int i28 = (int) j71;
                iArr2[i11 + 8] = (i27 >>> 31) | (i28 << 1);
                int i29 = i28 >>> 31;
                int i30 = (int) j72;
                iArr2[i11 + 9] = i29 | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = (int) j73;
                iArr2[i11 + 10] = i31 | (i32 << 1);
                int i33 = i32 >>> 31;
                int i34 = (int) j74;
                iArr2[i11 + 11] = i33 | (i34 << 1);
                int i35 = i34 >>> 31;
                int i36 = (int) j75;
                iArr2[i11 + 12] = i35 | (i36 << 1);
                int i37 = i36 >>> 31;
                int i38 = (int) j76;
                iArr2[i11 + 13] = i37 | (i38 << 1);
                int i39 = i38 >>> 31;
                int i40 = (int) j77;
                iArr2[i11 + 14] = i39 | (i40 << 1);
                int i41 = i40 >>> 31;
                int i42 = i11 + 15;
                iArr2[i42] = i41 | ((iArr2[i42] + ((int) (j77 >>> 32))) << 1);
                return;
            }
            i14 = i15;
        }
    }

    public static void Q(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i10 = 16;
        int i11 = 0;
        int i12 = 7;
        while (true) {
            int i13 = i12 - 1;
            long j11 = iArr[i12] & 4294967295L;
            long j12 = j11 * j11;
            iArr2[i10 - 1] = (i11 << 31) | ((int) (j12 >>> 33));
            i10 -= 2;
            iArr2[i10] = (int) (j12 >>> 1);
            i11 = (int) j12;
            if (i13 <= 0) {
                long j13 = j10 * j10;
                long j14 = (j13 >>> 33) | ((i11 << 31) & 4294967295L);
                iArr2[0] = (int) j13;
                long j15 = iArr[1] & 4294967295L;
                long j16 = j14 + (j15 * j10);
                int i14 = (int) j16;
                iArr2[1] = (i14 << 1) | (((int) (j13 >>> 32)) & 1);
                int i15 = i14 >>> 31;
                long j17 = (iArr2[2] & 4294967295L) + (j16 >>> 32);
                long j18 = iArr[2] & 4294967295L;
                long j19 = j17 + (j18 * j10);
                int i16 = (int) j19;
                iArr2[2] = (i16 << 1) | i15;
                long j20 = (iArr2[3] & 4294967295L) + (j19 >>> 32) + (j18 * j15);
                long j21 = (iArr2[4] & 4294967295L) + (j20 >>> 32);
                long j22 = iArr[3] & 4294967295L;
                long j23 = (iArr2[5] & 4294967295L) + (j21 >>> 32);
                long j24 = j21 & 4294967295L;
                long j25 = (iArr2[6] & 4294967295L) + (j23 >>> 32);
                long j26 = (j20 & 4294967295L) + (j22 * j10);
                int i17 = (int) j26;
                iArr2[3] = (i17 << 1) | (i16 >>> 31);
                int i18 = i17 >>> 31;
                long j27 = j24 + (j26 >>> 32) + (j22 * j15);
                long j28 = (j23 & 4294967295L) + (j27 >>> 32) + (j22 * j18);
                long j29 = j25 + (j28 >>> 32);
                long j30 = iArr[4] & 4294967295L;
                long j31 = (iArr2[7] & 4294967295L) + (j29 >>> 32);
                long j32 = j29 & 4294967295L;
                long j33 = (iArr2[8] & 4294967295L) + (j31 >>> 32);
                long j34 = (j27 & 4294967295L) + (j30 * j10);
                int i19 = (int) j34;
                iArr2[4] = (i19 << 1) | i18;
                long j35 = (j28 & 4294967295L) + (j34 >>> 32) + (j30 * j15);
                long j36 = j32 + (j35 >>> 32) + (j30 * j18);
                long j37 = (j31 & 4294967295L) + (j36 >>> 32) + (j30 * j22);
                long j38 = j33 + (j37 >>> 32);
                long j39 = j37 & 4294967295L;
                long j40 = iArr[5] & 4294967295L;
                long j41 = (iArr2[9] & 4294967295L) + (j38 >>> 32);
                long j42 = j38 & 4294967295L;
                long j43 = (iArr2[10] & 4294967295L) + (j41 >>> 32);
                long j44 = (j35 & 4294967295L) + (j40 * j10);
                int i20 = (int) j44;
                iArr2[5] = (i20 << 1) | (i19 >>> 31);
                long j45 = (j36 & 4294967295L) + (j44 >>> 32) + (j40 * j15);
                long j46 = j39 + (j45 >>> 32) + (j40 * j18);
                long j47 = j42 + (j46 >>> 32) + (j40 * j22);
                long j48 = (j41 & 4294967295L) + (j47 >>> 32) + (j40 * j30);
                long j49 = j43 + (j48 >>> 32);
                long j50 = j48 & 4294967295L;
                long j51 = iArr[6] & 4294967295L;
                long j52 = (iArr2[11] & 4294967295L) + (j49 >>> 32);
                long j53 = j49 & 4294967295L;
                long j54 = (iArr2[12] & 4294967295L) + (j52 >>> 32);
                long j55 = (j45 & 4294967295L) + (j51 * j10);
                int i21 = (int) j55;
                iArr2[6] = (i21 << 1) | (i20 >>> 31);
                long j56 = (j46 & 4294967295L) + (j55 >>> 32) + (j51 * j15);
                long j57 = (j47 & 4294967295L) + (j56 >>> 32) + (j51 * j18);
                long j58 = j56 & 4294967295L;
                long j59 = j50 + (j57 >>> 32) + (j51 * j22);
                long j60 = j53 + (j59 >>> 32) + (j51 * j30);
                long j61 = (j52 & 4294967295L) + (j60 >>> 32) + (j51 * j40);
                long j62 = j54 + (j61 >>> 32);
                long j63 = j61 & 4294967295L;
                long j64 = iArr[7] & 4294967295L;
                long j65 = (iArr2[13] & 4294967295L) + (j62 >>> 32);
                long j66 = j62 & 4294967295L;
                long j67 = (iArr2[14] & 4294967295L) + (j65 >>> 32);
                long j68 = 4294967295L & j65;
                long j69 = j58 + (j10 * j64);
                int i22 = (int) j69;
                iArr2[7] = (i21 >>> 31) | (i22 << 1);
                int i23 = i22 >>> 31;
                long j70 = (j57 & 4294967295L) + (j69 >>> 32) + (j64 * j15);
                long j71 = (j59 & 4294967295L) + (j70 >>> 32) + (j64 * j18);
                long j72 = (j60 & 4294967295L) + (j71 >>> 32) + (j64 * j22);
                long j73 = j63 + (j72 >>> 32) + (j64 * j30);
                long j74 = j66 + (j73 >>> 32) + (j64 * j40);
                long j75 = j68 + (j74 >>> 32) + (j64 * j51);
                long j76 = j67 + (j75 >>> 32);
                int i24 = (int) j70;
                iArr2[8] = i23 | (i24 << 1);
                int i25 = i24 >>> 31;
                int i26 = (int) j71;
                iArr2[9] = i25 | (i26 << 1);
                int i27 = i26 >>> 31;
                int i28 = (int) j72;
                iArr2[10] = i27 | (i28 << 1);
                int i29 = i28 >>> 31;
                int i30 = (int) j73;
                iArr2[11] = i29 | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = (int) j74;
                iArr2[12] = i31 | (i32 << 1);
                int i33 = i32 >>> 31;
                int i34 = (int) j75;
                iArr2[13] = i33 | (i34 << 1);
                int i35 = i34 >>> 31;
                int i36 = (int) j76;
                iArr2[14] = i35 | (i36 << 1);
                iArr2[15] = (i36 >>> 31) | ((iArr2[15] + ((int) (j76 >>> 32))) << 1);
                return;
            }
            i12 = i13;
        }
    }

    public static int R(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = (iArr[i10] & 4294967295L) - (iArr2[i11] & 4294967295L);
        iArr3[i12] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr[i10 + 1] & 4294967295L) - (iArr2[i11 + 1] & 4294967295L));
        iArr3[i12 + 1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr[i10 + 2] & 4294967295L) - (iArr2[i11 + 2] & 4294967295L));
        iArr3[i12 + 2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr[i10 + 3] & 4294967295L) - (iArr2[i11 + 3] & 4294967295L));
        iArr3[i12 + 3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr[i10 + 4] & 4294967295L) - (iArr2[i11 + 4] & 4294967295L));
        iArr3[i12 + 4] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr[i10 + 5] & 4294967295L) - (iArr2[i11 + 5] & 4294967295L));
        iArr3[i12 + 5] = (int) j15;
        long j16 = (j15 >> 32) + ((iArr[i10 + 6] & 4294967295L) - (iArr2[i11 + 6] & 4294967295L));
        iArr3[i12 + 6] = (int) j16;
        long j17 = (j16 >> 32) + ((iArr[i10 + 7] & 4294967295L) - (iArr2[i11 + 7] & 4294967295L));
        iArr3[i12 + 7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int S(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L);
        iArr3[0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr[4] & 4294967295L) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr[5] & 4294967295L) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j15;
        long j16 = (j15 >> 32) + ((iArr[6] & 4294967295L) - (iArr2[6] & 4294967295L));
        iArr3[6] = (int) j16;
        long j17 = (j16 >> 32) + ((iArr[7] & 4294967295L) - (iArr2[7] & 4294967295L));
        iArr3[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int T(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = ((iArr3[0] & 4294967295L) - (iArr[0] & 4294967295L)) - (iArr2[0] & 4294967295L);
        iArr3[0] = (int) j10;
        long j11 = (j10 >> 32) + (((iArr3[1] & 4294967295L) - (iArr[1] & 4294967295L)) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j11;
        long j12 = (j11 >> 32) + (((iArr3[2] & 4294967295L) - (iArr[2] & 4294967295L)) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j12;
        long j13 = (j12 >> 32) + (((iArr3[3] & 4294967295L) - (iArr[3] & 4294967295L)) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j13;
        long j14 = (j13 >> 32) + (((iArr3[4] & 4294967295L) - (iArr[4] & 4294967295L)) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j14;
        long j15 = (j14 >> 32) + (((iArr3[5] & 4294967295L) - (iArr[5] & 4294967295L)) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j15;
        long j16 = (j15 >> 32) + (((iArr3[6] & 4294967295L) - (iArr[6] & 4294967295L)) - (iArr2[6] & 4294967295L));
        iArr3[6] = (int) j16;
        long j17 = (j16 >> 32) + (((iArr3[7] & 4294967295L) - (iArr[7] & 4294967295L)) - (iArr2[7] & 4294967295L));
        iArr3[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int U(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = (iArr2[i11] & 4294967295L) - (iArr[i10] & 4294967295L);
        iArr2[i11] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i10 + 1] & 4294967295L));
        iArr2[i11 + 1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i10 + 2] & 4294967295L));
        iArr2[i11 + 2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i10 + 3] & 4294967295L));
        iArr2[i11 + 3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i10 + 4] & 4294967295L));
        iArr2[i11 + 4] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i10 + 5] & 4294967295L));
        iArr2[i11 + 5] = (int) j15;
        long j16 = (j15 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i10 + 6] & 4294967295L));
        iArr2[i11 + 6] = (int) j16;
        long j17 = (j16 >> 32) + ((iArr2[r13] & 4294967295L) - (iArr[i10 + 7] & 4294967295L));
        iArr2[i11 + 7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int V(int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        long j10 = (i12 & 4294967295L) + ((iArr2[i11] & 4294967295L) - (iArr[i10] & 4294967295L));
        iArr2[i11] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr2[r4] & 4294967295L) - (iArr[i10 + 1] & 4294967295L));
        iArr2[i11 + 1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr2[r4] & 4294967295L) - (iArr[i10 + 2] & 4294967295L));
        iArr2[i11 + 2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr2[r4] & 4294967295L) - (iArr[i10 + 3] & 4294967295L));
        iArr2[i11 + 3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr2[r4] & 4294967295L) - (iArr[i10 + 4] & 4294967295L));
        iArr2[i11 + 4] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr2[r4] & 4294967295L) - (iArr[i10 + 5] & 4294967295L));
        iArr2[i11 + 5] = (int) j15;
        long j16 = (j15 >> 32) + ((iArr2[r4] & 4294967295L) - (iArr[i10 + 6] & 4294967295L));
        iArr2[i11 + 6] = (int) j16;
        long j17 = (j16 >> 32) + ((iArr2[r12] & 4294967295L) - (iArr[i10 + 7] & 4294967295L));
        iArr2[i11 + 7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int W(int[] iArr, int[] iArr2) {
        long j10 = (iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L);
        iArr2[0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L));
        iArr2[3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L));
        iArr2[4] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L));
        iArr2[5] = (int) j15;
        long j16 = (j15 >> 32) + ((iArr2[6] & 4294967295L) - (iArr[6] & 4294967295L));
        iArr2[6] = (int) j16;
        long j17 = (j16 >> 32) + ((iArr2[7] & 4294967295L) - (4294967295L & iArr[7]));
        iArr2[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int X(int[] iArr, int[] iArr2, int i10) {
        long j10 = (i10 & 4294967295L) + ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L));
        iArr2[0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L));
        iArr2[3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L));
        iArr2[4] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L));
        iArr2[5] = (int) j15;
        long j16 = (j15 >> 32) + ((iArr2[6] & 4294967295L) - (iArr[6] & 4294967295L));
        iArr2[6] = (int) j16;
        long j17 = (j16 >> 32) + ((iArr2[7] & 4294967295L) - (4294967295L & iArr[7]));
        iArr2[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static BigInteger Y(int[] iArr) {
        byte[] bArr = new byte[32];
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = iArr[i10];
            if (i11 != 0) {
                p.h(i11, bArr, (7 - i10) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger Z(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int i10 = 0; i10 < 4; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                p.D(j10, bArr, (3 - i10) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static int a(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = (iArr[i10] & 4294967295L) + (iArr2[i11] & 4294967295L);
        iArr3[i12] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[i10 + 1] & 4294967295L) + (iArr2[i11 + 1] & 4294967295L);
        iArr3[i12 + 1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[i10 + 2] & 4294967295L) + (iArr2[i11 + 2] & 4294967295L);
        iArr3[i12 + 2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[i10 + 3] & 4294967295L) + (iArr2[i11 + 3] & 4294967295L);
        iArr3[i12 + 3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[i10 + 4] & 4294967295L) + (iArr2[i11 + 4] & 4294967295L);
        iArr3[i12 + 4] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[i10 + 5] & 4294967295L) + (iArr2[i11 + 5] & 4294967295L);
        iArr3[i12 + 5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[i10 + 6] & 4294967295L) + (iArr2[i11 + 6] & 4294967295L);
        iArr3[i12 + 6] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[i10 + 7] & 4294967295L) + (iArr2[i11 + 7] & 4294967295L);
        iArr3[i12 + 7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static void a0(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
        iArr[7] = 0;
    }

    public static int b(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr3[0] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr3[1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr3[2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr3[3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr3[4] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr3[5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr3[6] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L);
        iArr3[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int c(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = (iArr[i10] & 4294967295L) + (iArr2[i11] & 4294967295L) + (iArr3[i12] & 4294967295L);
        iArr3[i12] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[i10 + 1] & 4294967295L) + (iArr2[i11 + 1] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i12 + 1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[i10 + 2] & 4294967295L) + (iArr2[i11 + 2] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i12 + 2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[i10 + 3] & 4294967295L) + (iArr2[i11 + 3] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i12 + 3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[i10 + 4] & 4294967295L) + (iArr2[i11 + 4] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i12 + 4] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[i10 + 5] & 4294967295L) + (iArr2[i11 + 5] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i12 + 5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[i10 + 6] & 4294967295L) + (iArr2[i11 + 6] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i12 + 6] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[i10 + 7] & 4294967295L) + (iArr2[i11 + 7] & 4294967295L) + (iArr3[r15] & 4294967295L);
        iArr3[i12 + 7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int d(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (iArr3[0] & 4294967295L);
        iArr3[0] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (iArr3[1] & 4294967295L);
        iArr3[1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (iArr3[2] & 4294967295L);
        iArr3[2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (iArr3[3] & 4294967295L);
        iArr3[3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (iArr3[4] & 4294967295L);
        iArr3[4] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (iArr3[5] & 4294967295L);
        iArr3[5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (iArr3[6] & 4294967295L);
        iArr3[6] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L) + (iArr3[7] & 4294967295L);
        iArr3[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int e(int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        long j10 = (i12 & 4294967295L) + (iArr[i10] & 4294967295L) + (iArr2[i11] & 4294967295L);
        iArr2[i11] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[i10 + 1] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i11 + 1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[i10 + 2] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i11 + 2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[i10 + 3] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i11 + 3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[i10 + 4] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i11 + 4] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[i10 + 5] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i11 + 5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[i10 + 6] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i11 + 6] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[i10 + 7] & 4294967295L) + (4294967295L & iArr2[r12]);
        iArr2[i11 + 7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int f(int[] iArr, int[] iArr2) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr2[0] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr2[1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr2[2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr2[3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr2[4] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr2[5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr2[6] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[7] & 4294967295L) + (4294967295L & iArr2[7]);
        iArr2[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int g(int[] iArr, int[] iArr2, int i10) {
        long j10 = (i10 & 4294967295L) + (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr2[0] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr2[1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr2[2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr2[3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr2[4] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr2[5] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr2[6] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[7] & 4294967295L) + (4294967295L & iArr2[7]);
        iArr2[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int h(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = (iArr[i10] & 4294967295L) + (iArr2[i11] & 4294967295L);
        int i12 = (int) j10;
        iArr[i10] = i12;
        iArr2[i11] = i12;
        long j11 = (j10 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i13 = (int) j11;
        iArr[i10 + 1] = i13;
        iArr2[i11 + 1] = i13;
        long j12 = (j11 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i14 = (int) j12;
        iArr[i10 + 2] = i14;
        iArr2[i11 + 2] = i14;
        long j13 = (j12 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i15 = (int) j13;
        iArr[i10 + 3] = i15;
        iArr2[i11 + 3] = i15;
        long j14 = (j13 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i16 = (int) j14;
        iArr[i10 + 4] = i16;
        iArr2[i11 + 4] = i16;
        long j15 = (j14 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i17 = (int) j15;
        iArr[i10 + 5] = i17;
        iArr2[i11 + 5] = i17;
        long j16 = (j15 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i18 = (int) j16;
        iArr[i10 + 6] = i18;
        iArr2[i11 + 6] = i18;
        long j17 = (j16 >>> 32) + (iArr[r12] & 4294967295L) + (4294967295L & iArr2[r14]);
        int i19 = (int) j17;
        iArr[i10 + 7] = i19;
        iArr2[i11 + 7] = i19;
        return (int) (j17 >>> 32);
    }

    public static void i(int[] iArr, int i10, int[] iArr2, int i11) {
        iArr2[i11] = iArr[i10];
        iArr2[i11 + 1] = iArr[i10 + 1];
        iArr2[i11 + 2] = iArr[i10 + 2];
        iArr2[i11 + 3] = iArr[i10 + 3];
        iArr2[i11 + 4] = iArr[i10 + 4];
        iArr2[i11 + 5] = iArr[i10 + 5];
        iArr2[i11 + 6] = iArr[i10 + 6];
        iArr2[i11 + 7] = iArr[i10 + 7];
    }

    public static void j(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
        iArr2[7] = iArr[7];
    }

    public static void k(long[] jArr, int i10, long[] jArr2, int i11) {
        jArr2[i11] = jArr[i10];
        jArr2[i11 + 1] = jArr[i10 + 1];
        jArr2[i11 + 2] = jArr[i10 + 2];
        jArr2[i11 + 3] = jArr[i10 + 3];
    }

    public static void l(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static int[] m() {
        return new int[8];
    }

    public static long[] n() {
        return new long[4];
    }

    public static int[] o() {
        return new int[16];
    }

    public static long[] p() {
        return new long[8];
    }

    public static boolean q(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        boolean w10 = w(iArr, i10, iArr2, i11);
        if (w10) {
            R(iArr, i10, iArr2, i11, iArr3, i12);
        } else {
            R(iArr2, i11, iArr, i10, iArr3, i12);
        }
        return w10;
    }

    public static boolean r(int[] iArr, int[] iArr2) {
        for (int i10 = 7; i10 >= 0; i10--) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static boolean s(long[] jArr, long[] jArr2) {
        for (int i10 = 3; i10 >= 0; i10--) {
            if (jArr[i10] != jArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static int[] t(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        int[] m10 = m();
        for (int i10 = 0; i10 < 8; i10++) {
            m10[i10] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return m10;
    }

    public static long[] u(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        long[] n10 = n();
        for (int i10 = 0; i10 < 4; i10++) {
            n10[i10] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return n10;
    }

    public static int v(int[] iArr, int i10) {
        int i11;
        if (i10 == 0) {
            i11 = iArr[0];
        } else {
            if ((i10 & 255) != i10) {
                return 0;
            }
            i11 = iArr[i10 >>> 5] >>> (i10 & 31);
        }
        return i11 & 1;
    }

    public static boolean w(int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 7; i12 >= 0; i12--) {
            int i13 = iArr[i10 + i12] ^ Integer.MIN_VALUE;
            int i14 = Integer.MIN_VALUE ^ iArr2[i11 + i12];
            if (i13 < i14) {
                return false;
            }
            if (i13 > i14) {
                return true;
            }
        }
        return true;
    }

    public static boolean x(int[] iArr, int[] iArr2) {
        for (int i10 = 7; i10 >= 0; i10--) {
            int i11 = iArr[i10] ^ Integer.MIN_VALUE;
            int i12 = Integer.MIN_VALUE ^ iArr2[i10];
            if (i11 < i12) {
                return false;
            }
            if (i11 > i12) {
                return true;
            }
        }
        return true;
    }

    public static boolean y(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i10 = 1; i10 < 8; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean z(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i10 = 1; i10 < 4; i10++) {
            if (jArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }
}
