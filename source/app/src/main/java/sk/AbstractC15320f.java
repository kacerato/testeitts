package sk;

import java.math.BigInteger;
import org.bouncycastle.util.p;

public abstract class AbstractC15320f {

    public static final long f109667a = 4294967295L;

    public static int A(int i10, long j10, int[] iArr, int i11) {
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
        return AbstractC15329o.e0(5, iArr, i11, 3);
    }

    public static int B(int i10, int i11, int[] iArr, int i12) {
        long j10 = ((i11 & 4294967295L) * (i10 & 4294967295L)) + (iArr[i12] & 4294967295L);
        iArr[i12] = (int) j10;
        long j11 = (j10 >>> 32) + (4294967295L & iArr[r1]);
        iArr[i12 + 1] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return AbstractC15329o.e0(5, iArr, i12, 2);
    }

    public static void C(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = iArr[i10] & 4294967295L;
        int i12 = 0;
        int i13 = 10;
        int i14 = 4;
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
                long j35 = (j28 & 4294967295L) + (j10 * j32);
                int i21 = (int) j35;
                iArr2[i11 + 4] = (i21 << 1) | (i20 >>> 31);
                long j36 = j31 + (j35 >>> 32) + (j15 * j32);
                long j37 = (j30 & 4294967295L) + (j36 >>> 32) + (j32 * j18);
                long j38 = (j33 & 4294967295L) + (j37 >>> 32) + (j32 * j23);
                long j39 = j34 + (j38 >>> 32);
                int i22 = (int) j36;
                iArr2[i11 + 5] = (i21 >>> 31) | (i22 << 1);
                int i23 = (int) j37;
                iArr2[i11 + 6] = (i22 >>> 31) | (i23 << 1);
                int i24 = i23 >>> 31;
                int i25 = (int) j38;
                iArr2[i11 + 7] = i24 | (i25 << 1);
                int i26 = i25 >>> 31;
                int i27 = (int) j39;
                iArr2[i11 + 8] = i26 | (i27 << 1);
                int i28 = i27 >>> 31;
                int i29 = i11 + 9;
                iArr2[i29] = i28 | ((iArr2[i29] + ((int) (j39 >>> 32))) << 1);
                return;
            }
            i14 = i15;
        }
    }

    public static void D(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i10 = 10;
        int i11 = 0;
        int i12 = 4;
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
                long j17 = (iArr2[2] & 4294967295L) + (j16 >>> 32);
                long j18 = iArr[2] & 4294967295L;
                long j19 = j17 + (j18 * j10);
                int i15 = (int) j19;
                iArr2[2] = (i15 << 1) | (i14 >>> 31);
                long j20 = (iArr2[3] & 4294967295L) + (j19 >>> 32) + (j18 * j15);
                long j21 = (iArr2[4] & 4294967295L) + (j20 >>> 32);
                long j22 = iArr[3] & 4294967295L;
                long j23 = (iArr2[5] & 4294967295L) + (j21 >>> 32);
                long j24 = j21 & 4294967295L;
                long j25 = (iArr2[6] & 4294967295L) + (j23 >>> 32);
                long j26 = (j20 & 4294967295L) + (j22 * j10);
                int i16 = (int) j26;
                iArr2[3] = (i16 << 1) | (i15 >>> 31);
                int i17 = i16 >>> 31;
                long j27 = j24 + (j26 >>> 32) + (j22 * j15);
                long j28 = (j23 & 4294967295L) + (j27 >>> 32) + (j22 * j18);
                long j29 = j25 + (j28 >>> 32);
                long j30 = iArr[4] & 4294967295L;
                long j31 = (iArr2[7] & 4294967295L) + (j29 >>> 32);
                long j32 = j29 & 4294967295L;
                long j33 = (iArr2[8] & 4294967295L) + (j31 >>> 32);
                long j34 = 4294967295L & j31;
                long j35 = (j27 & 4294967295L) + (j30 * j10);
                int i18 = (int) j35;
                iArr2[4] = i17 | (i18 << 1);
                long j36 = (j28 & 4294967295L) + (j35 >>> 32) + (j15 * j30);
                long j37 = j32 + (j36 >>> 32) + (j30 * j18);
                long j38 = j34 + (j37 >>> 32) + (j30 * j22);
                long j39 = j33 + (j38 >>> 32);
                int i19 = (int) j36;
                iArr2[5] = (i18 >>> 31) | (i19 << 1);
                int i20 = (int) j37;
                iArr2[6] = (i20 << 1) | (i19 >>> 31);
                int i21 = (int) j38;
                iArr2[7] = (i20 >>> 31) | (i21 << 1);
                int i22 = i21 >>> 31;
                int i23 = (int) j39;
                iArr2[8] = i22 | (i23 << 1);
                iArr2[9] = (i23 >>> 31) | ((iArr2[9] + ((int) (j39 >>> 32))) << 1);
                return;
            }
            i12 = i13;
        }
    }

    public static int E(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
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
        return (int) (j14 >> 32);
    }

    public static int F(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j14 >> 32);
    }

    public static int G(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j14 >> 32);
    }

    public static int H(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = (iArr2[i11] & 4294967295L) - (iArr[i10] & 4294967295L);
        iArr2[i11] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i10 + 1] & 4294967295L));
        iArr2[i11 + 1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i10 + 2] & 4294967295L));
        iArr2[i11 + 2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i10 + 3] & 4294967295L));
        iArr2[i11 + 3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr2[r13] & 4294967295L) - (iArr[i10 + 4] & 4294967295L));
        iArr2[i11 + 4] = (int) j14;
        return (int) (j14 >> 32);
    }

    public static int I(int[] iArr, int[] iArr2) {
        long j10 = (iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L);
        iArr2[0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L));
        iArr2[3] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr2[4] & 4294967295L) - (4294967295L & iArr[4]));
        iArr2[4] = (int) j14;
        return (int) (j14 >> 32);
    }

    public static BigInteger J(int[] iArr) {
        byte[] bArr = new byte[20];
        for (int i10 = 0; i10 < 5; i10++) {
            int i11 = iArr[i10];
            if (i11 != 0) {
                p.h(i11, bArr, (4 - i10) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void K(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
    }

    public static int a(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j14 >>> 32);
    }

    public static int b(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j14 >>> 32);
    }

    public static int c(int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        long j10 = (i12 & 4294967295L) + (iArr[i10] & 4294967295L) + (iArr2[i11] & 4294967295L);
        iArr2[i11] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[i10 + 1] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i11 + 1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[i10 + 2] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i11 + 2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[i10 + 3] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i11 + 3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[i10 + 4] & 4294967295L) + (4294967295L & iArr2[r12]);
        iArr2[i11 + 4] = (int) j14;
        return (int) (j14 >>> 32);
    }

    public static int d(int[] iArr, int[] iArr2) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr2[0] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr2[1] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr2[2] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr2[3] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[4] & 4294967295L) + (4294967295L & iArr2[4]);
        iArr2[4] = (int) j14;
        return (int) (j14 >>> 32);
    }

    public static int e(int[] iArr, int i10, int[] iArr2, int i11) {
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
        long j14 = (j13 >>> 32) + (iArr[r12] & 4294967295L) + (4294967295L & iArr2[r14]);
        int i16 = (int) j14;
        iArr[i10 + 4] = i16;
        iArr2[i11 + 4] = i16;
        return (int) (j14 >>> 32);
    }

    public static void f(int[] iArr, int i10, int[] iArr2, int i11) {
        iArr2[i11] = iArr[i10];
        iArr2[i11 + 1] = iArr[i10 + 1];
        iArr2[i11 + 2] = iArr[i10 + 2];
        iArr2[i11 + 3] = iArr[i10 + 3];
        iArr2[i11 + 4] = iArr[i10 + 4];
    }

    public static void g(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
    }

    public static int[] h() {
        return new int[5];
    }

    public static int[] i() {
        return new int[10];
    }

    public static boolean j(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        boolean n10 = n(iArr, i10, iArr2, i11);
        if (n10) {
            E(iArr, i10, iArr2, i11, iArr3, i12);
        } else {
            E(iArr2, i11, iArr, i10, iArr3, i12);
        }
        return n10;
    }

    public static boolean k(int[] iArr, int[] iArr2) {
        for (int i10 = 4; i10 >= 0; i10--) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static int[] l(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            throw new IllegalArgumentException();
        }
        int[] h10 = h();
        for (int i10 = 0; i10 < 5; i10++) {
            h10[i10] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return h10;
    }

    public static int m(int[] iArr, int i10) {
        int i11;
        if (i10 == 0) {
            i11 = iArr[0];
        } else {
            int i12 = i10 >> 5;
            if (i12 < 0 || i12 >= 5) {
                return 0;
            }
            i11 = iArr[i12] >>> (i10 & 31);
        }
        return i11 & 1;
    }

    public static boolean n(int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 4; i12 >= 0; i12--) {
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

    public static boolean o(int[] iArr, int[] iArr2) {
        for (int i10 = 4; i10 >= 0; i10--) {
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

    public static boolean p(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i10 = 1; i10 < 5; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean q(int[] iArr) {
        for (int i10 = 0; i10 < 5; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void r(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = iArr2[i11] & 4294967295L;
        long j11 = iArr2[i11 + 1] & 4294967295L;
        long j12 = iArr2[i11 + 2] & 4294967295L;
        long j13 = iArr2[i11 + 3] & 4294967295L;
        long j14 = iArr2[i11 + 4] & 4294967295L;
        long j15 = iArr[i10] & 4294967295L;
        long j16 = j15 * j10;
        iArr3[i12] = (int) j16;
        long j17 = (j16 >>> 32) + (j15 * j11);
        iArr3[i12 + 1] = (int) j17;
        long j18 = (j17 >>> 32) + (j15 * j12);
        iArr3[i12 + 2] = (int) j18;
        long j19 = (j18 >>> 32) + (j15 * j13);
        iArr3[i12 + 3] = (int) j19;
        long j20 = (j19 >>> 32) + (j15 * j14);
        iArr3[i12 + 4] = (int) j20;
        iArr3[i12 + 5] = (int) (j20 >>> 32);
        int i13 = 1;
        int i14 = i12;
        while (i13 < 5) {
            int i15 = i14 + 1;
            long j21 = iArr[i10 + i13] & 4294967295L;
            long j22 = j10;
            long j23 = (j21 * j10) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j23;
            long j24 = (j23 >>> 32) + (j21 * j11) + (iArr3[r22] & 4294967295L);
            iArr3[i14 + 2] = (int) j24;
            long j25 = j12;
            long j26 = (j24 >>> 32) + (j21 * j12) + (iArr3[r16] & 4294967295L);
            iArr3[i14 + 3] = (int) j26;
            int i16 = i14;
            long j27 = (j26 >>> 32) + (j21 * j13) + (iArr3[r6] & 4294967295L);
            iArr3[i14 + 4] = (int) j27;
            long j28 = (j27 >>> 32) + (j21 * j14) + (iArr3[r3] & 4294967295L);
            iArr3[i16 + 5] = (int) j28;
            iArr3[i16 + 6] = (int) (j28 >>> 32);
            i13++;
            i14 = i15;
            j10 = j22;
            j12 = j25;
        }
    }

    public static void s(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        int i10 = 1;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr[0] & 4294967295L;
        long j16 = j15 * j10;
        iArr3[0] = (int) j16;
        long j17 = (j16 >>> 32) + (j15 * j11);
        iArr3[1] = (int) j17;
        long j18 = (j17 >>> 32) + (j15 * j12);
        iArr3[2] = (int) j18;
        long j19 = (j18 >>> 32) + (j15 * j13);
        iArr3[3] = (int) j19;
        long j20 = (j19 >>> 32) + (j15 * j14);
        iArr3[4] = (int) j20;
        iArr3[5] = (int) (j20 >>> 32);
        for (int i11 = 5; i10 < i11; i11 = 5) {
            long j21 = iArr[i10] & 4294967295L;
            long j22 = (j21 * j10) + (iArr3[i10] & 4294967295L);
            iArr3[i10] = (int) j22;
            int i12 = i10 + 1;
            long j23 = (j22 >>> 32) + (j21 * j11) + (iArr3[i12] & 4294967295L);
            iArr3[i12] = (int) j23;
            long j24 = j11;
            long j25 = (j23 >>> 32) + (j21 * j12) + (iArr3[r16] & 4294967295L);
            iArr3[i10 + 2] = (int) j25;
            long j26 = (j25 >>> 32) + (j21 * j13) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 3] = (int) j26;
            long j27 = (j26 >>> 32) + (j21 * j14) + (iArr3[r3] & 4294967295L);
            iArr3[i10 + 4] = (int) j27;
            iArr3[i10 + 5] = (int) (j27 >>> 32);
            j13 = j13;
            j10 = j10;
            i10 = i12;
            j11 = j24;
        }
    }

    public static long t(int i10, int[] iArr, int i11, int[] iArr2, int i12, int[] iArr3, int i13) {
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
        long j21 = (j19 >>> 32) + (j10 * j20) + j18 + (4294967295L & iArr2[i12 + 4]);
        iArr3[i13 + 4] = (int) j21;
        return (j21 >>> 32) + j20;
    }

    public static int u(int i10, long j10, int[] iArr, int i11) {
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
        return AbstractC15329o.e0(5, iArr, i11, 4);
    }

    public static int v(int i10, int i11, int[] iArr, int i12) {
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
        return AbstractC15329o.e0(5, iArr, i12, 3);
    }

    public static int w(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = iArr2[i11] & 4294967295L;
        long j11 = iArr2[i11 + 1] & 4294967295L;
        long j12 = iArr2[i11 + 2] & 4294967295L;
        long j13 = iArr2[i11 + 3] & 4294967295L;
        long j14 = iArr2[i11 + 4] & 4294967295L;
        int i13 = 0;
        long j15 = 0;
        int i14 = i12;
        while (i13 < 5) {
            long j16 = iArr[i10 + i13] & 4294967295L;
            long j17 = j10;
            long j18 = (j16 * j10) + (iArr3[i14] & 4294967295L);
            iArr3[i14] = (int) j18;
            int i15 = i14 + 1;
            long j19 = (j18 >>> 32) + (j16 * j11) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j19;
            long j20 = (j19 >>> 32) + (j16 * j12) + (iArr3[r5] & 4294967295L);
            iArr3[i14 + 2] = (int) j20;
            long j21 = (j20 >>> 32) + (j16 * j13) + (iArr3[r5] & 4294967295L);
            iArr3[i14 + 3] = (int) j21;
            long j22 = (j21 >>> 32) + (j16 * j14) + (iArr3[r5] & 4294967295L);
            iArr3[i14 + 4] = (int) j22;
            long j23 = j15 + (j22 >>> 32) + (iArr3[r12] & 4294967295L);
            iArr3[i14 + 5] = (int) j23;
            j15 = j23 >>> 32;
            i13++;
            i14 = i15;
            j10 = j17;
            j11 = j11;
        }
        return (int) j15;
    }

    public static int x(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = 0;
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = 0;
        while (i10 < 5) {
            long j16 = j15;
            long j17 = iArr[i10] & 4294967295L;
            long j18 = j10;
            long j19 = (j17 * j10) + (iArr3[i10] & 4294967295L);
            iArr3[i10] = (int) j19;
            int i11 = i10 + 1;
            long j20 = (j19 >>> 32) + (j17 * j11) + (iArr3[i11] & 4294967295L);
            iArr3[i11] = (int) j20;
            long j21 = (j20 >>> 32) + (j17 * j12) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 2] = (int) j21;
            long j22 = (j21 >>> 32) + (j17 * j13) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 3] = (int) j22;
            long j23 = (j22 >>> 32) + (j17 * j14) + (iArr3[r6] & 4294967295L);
            iArr3[i10 + 4] = (int) j23;
            long j24 = j16 + (j23 >>> 32) + (iArr3[r0] & 4294967295L);
            iArr3[i10 + 5] = (int) j24;
            j15 = j24 >>> 32;
            j10 = j18;
            i10 = i11;
            j11 = j11;
        }
        return (int) j15;
    }

    public static int y(int i10, int[] iArr, int[] iArr2, int i11) {
        long j10 = i10 & 4294967295L;
        long j11 = 0;
        int i12 = 0;
        do {
            long j12 = j11 + ((iArr[i12] & 4294967295L) * j10);
            iArr2[i11 + i12] = (int) j12;
            j11 = j12 >>> 32;
            i12++;
        } while (i12 < 5);
        return (int) j11;
    }

    public static int z(int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        long j10 = i10 & 4294967295L;
        long j11 = ((iArr[i11] & 4294967295L) * j10) + (iArr2[i12] & 4294967295L);
        iArr2[i12] = (int) j11;
        long j12 = (j11 >>> 32) + ((iArr[i11 + 1] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L);
        iArr2[i12 + 1] = (int) j12;
        long j13 = (j12 >>> 32) + ((iArr[i11 + 2] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L);
        iArr2[i12 + 2] = (int) j13;
        long j14 = (j13 >>> 32) + ((iArr[i11 + 3] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L);
        iArr2[i12 + 3] = (int) j14;
        long j15 = (j14 >>> 32) + (j10 * (iArr[i11 + 4] & 4294967295L)) + (iArr2[r15] & 4294967295L);
        iArr2[i12 + 4] = (int) j15;
        return (int) (j15 >>> 32);
    }
}
