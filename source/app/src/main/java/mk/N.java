package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15325k;
import sk.AbstractC15329o;

public class N {

    public static final long f97229a = 4294967295L;

    public static final int[] f97230b = {-1, 0, 0, -1, -2, -1, -1, -1, -1, -1, -1, -1};

    public static final int[] f97231c = {1, -2, 0, 2, 0, -2, 0, 2, 1, 0, 0, 0, -2, 1, 0, -2, -3, -1, -1, -1, -1, -1, -1, -1};

    public static final int[] f97232d = {-1, 1, -1, -3, -1, 1, -1, -3, -2, -1, -1, -1, 1, -2, -1, 1, 2};

    public static final int f97233e = -1;

    public static final int f97234f = -1;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(12, iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && AbstractC15329o.a0(12, iArr3, f97230b))) {
            d(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(24, iArr, iArr2, iArr3) != 0 || (iArr3[23] == -1 && AbstractC15329o.a0(24, iArr3, f97231c))) {
            int[] iArr4 = f97232d;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(24, iArr3, iArr4.length);
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(12, iArr, iArr2) != 0 || (iArr2[11] == -1 && AbstractC15329o.a0(12, iArr2, f97230b))) {
            d(iArr2);
        }
    }

    public static void d(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) + 1;
        iArr[0] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr[1] & 4294967295L) - 1);
        iArr[1] = (int) j11;
        long j12 = j11 >> 32;
        if (j12 != 0) {
            long j13 = j12 + (iArr[2] & 4294967295L);
            iArr[2] = (int) j13;
            j12 = j13 >> 32;
        }
        long j14 = j12 + (iArr[3] & 4294967295L) + 1;
        iArr[3] = (int) j14;
        long j15 = (j14 >> 32) + (4294967295L & iArr[4]) + 1;
        iArr[4] = (int) j15;
        if ((j15 >> 32) != 0) {
            AbstractC15329o.d0(12, iArr, 5);
        }
    }

    public static int[] e(BigInteger bigInteger) {
        int[] U10 = AbstractC15329o.U(384, bigInteger);
        if (U10[11] == -1) {
            int[] iArr = f97230b;
            if (AbstractC15329o.a0(12, U10, iArr)) {
                AbstractC15329o.e1(12, iArr, U10);
            }
        }
        return U10;
    }

    public static void f(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(12, iArr, 0, iArr2);
        } else {
            AbstractC15329o.t0(12, iArr2, AbstractC15329o.a(12, iArr, f97230b, iArr2));
        }
    }

    public static void g(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97230b, iArr, iArr2);
    }

    public static int h(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 12; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] E10 = AbstractC15329o.E(24);
        AbstractC15325k.a(iArr, iArr2, E10);
        n(E10, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        AbstractC15325k.a(iArr, iArr2, iArr4);
        n(iArr4, iArr3);
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (h(iArr) == 0) {
            AbstractC15329o.S0(12, f97230b, iArr, iArr2);
        } else {
            int[] iArr3 = f97230b;
            AbstractC15329o.S0(12, iArr3, iArr3, iArr2);
        }
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[48];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 12);
        } while (AbstractC15329o.i0(12, iArr, f97230b) == 0);
    }

    public static void m(SecureRandom secureRandom, int[] iArr) {
        do {
            l(secureRandom, iArr);
        } while (h(iArr) != 0);
    }

    public static void n(int[] iArr, int[] iArr2) {
        long j10 = iArr[16] & 4294967295L;
        long j11 = iArr[17] & 4294967295L;
        long j12 = iArr[18] & 4294967295L;
        long j13 = iArr[19] & 4294967295L;
        long j14 = iArr[20] & 4294967295L;
        long j15 = iArr[21] & 4294967295L;
        long j16 = iArr[22] & 4294967295L;
        long j17 = iArr[23] & 4294967295L;
        long j18 = ((iArr[12] & 4294967295L) + j14) - 1;
        long j19 = (iArr[13] & 4294967295L) + j16;
        long j20 = (iArr[14] & 4294967295L) + j16 + j17;
        long j21 = (iArr[15] & 4294967295L) + j17;
        long j22 = j11 + j15;
        long j23 = j15 - j17;
        long j24 = j16 - j17;
        long j25 = j18 + j23;
        long j26 = (iArr[0] & 4294967295L) + j25;
        iArr2[0] = (int) j26;
        long j27 = (j26 >> 32) + (((iArr[1] & 4294967295L) + j17) - j18) + j19;
        iArr2[1] = (int) j27;
        long j28 = (j27 >> 32) + (((iArr[2] & 4294967295L) - j15) - j19) + j20;
        iArr2[2] = (int) j28;
        long j29 = (j28 >> 32) + ((iArr[3] & 4294967295L) - j20) + j21 + j25;
        iArr2[3] = (int) j29;
        long j30 = (j29 >> 32) + (((((iArr[4] & 4294967295L) + j10) + j15) + j19) - j21) + j25;
        iArr2[4] = (int) j30;
        long j31 = (j30 >> 32) + ((iArr[5] & 4294967295L) - j10) + j19 + j20 + j22;
        iArr2[5] = (int) j31;
        long j32 = (j31 >> 32) + (((iArr[6] & 4294967295L) + j12) - j11) + j20 + j21;
        iArr2[6] = (int) j32;
        long j33 = (j32 >> 32) + ((((iArr[7] & 4294967295L) + j10) + j13) - j12) + j21;
        iArr2[7] = (int) j33;
        long j34 = (j33 >> 32) + (((((iArr[8] & 4294967295L) + j10) + j11) + j14) - j13);
        iArr2[8] = (int) j34;
        long j35 = (j34 >> 32) + (((iArr[9] & 4294967295L) + j12) - j14) + j22;
        iArr2[9] = (int) j35;
        long j36 = (j35 >> 32) + ((((iArr[10] & 4294967295L) + j12) + j13) - j23) + j24;
        iArr2[10] = (int) j36;
        long j37 = (j36 >> 32) + ((((iArr[11] & 4294967295L) + j13) + j14) - j24);
        iArr2[11] = (int) j37;
        o((int) ((j37 >> 32) + 1), iArr2);
    }

    public static void o(int i10, int[] iArr) {
        long j10;
        if (i10 != 0) {
            long j11 = i10 & 4294967295L;
            long j12 = (iArr[0] & 4294967295L) + j11;
            iArr[0] = (int) j12;
            long j13 = (j12 >> 32) + ((iArr[1] & 4294967295L) - j11);
            iArr[1] = (int) j13;
            long j14 = j13 >> 32;
            if (j14 != 0) {
                long j15 = j14 + (iArr[2] & 4294967295L);
                iArr[2] = (int) j15;
                j14 = j15 >> 32;
            }
            long j16 = j14 + (iArr[3] & 4294967295L) + j11;
            iArr[3] = (int) j16;
            long j17 = (j16 >> 32) + (4294967295L & iArr[4]) + j11;
            iArr[4] = (int) j17;
            j10 = j17 >> 32;
        } else {
            j10 = 0;
        }
        if ((j10 == 0 || AbstractC15329o.d0(12, iArr, 5) == 0) && !(iArr[11] == -1 && AbstractC15329o.a0(12, iArr, f97230b))) {
            return;
        }
        d(iArr);
    }

    public static void p(int[] iArr, int[] iArr2) {
        int[] E10 = AbstractC15329o.E(24);
        AbstractC15325k.b(iArr, E10);
        n(E10, iArr2);
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        AbstractC15325k.b(iArr, iArr3);
        n(iArr3, iArr2);
    }

    public static void r(int[] iArr, int i10, int[] iArr2) {
        int[] E10 = AbstractC15329o.E(24);
        AbstractC15325k.b(iArr, E10);
        while (true) {
            n(E10, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15325k.b(iArr2, E10);
            }
        }
    }

    public static void s(int[] iArr, int i10, int[] iArr2, int[] iArr3) {
        AbstractC15325k.b(iArr, iArr3);
        while (true) {
            n(iArr3, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15325k.b(iArr2, iArr3);
            }
        }
    }

    public static void t(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) - 1;
        iArr[0] = (int) j10;
        long j11 = (j10 >> 32) + (iArr[1] & 4294967295L) + 1;
        iArr[1] = (int) j11;
        long j12 = j11 >> 32;
        if (j12 != 0) {
            long j13 = j12 + (iArr[2] & 4294967295L);
            iArr[2] = (int) j13;
            j12 = j13 >> 32;
        }
        long j14 = j12 + ((iArr[3] & 4294967295L) - 1);
        iArr[3] = (int) j14;
        long j15 = (j14 >> 32) + ((4294967295L & iArr[4]) - 1);
        iArr[4] = (int) j15;
        if ((j15 >> 32) != 0) {
            AbstractC15329o.K(12, iArr, 5);
        }
    }

    public static void u(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(12, iArr, iArr2, iArr3) != 0) {
            t(iArr3);
        }
    }

    public static void v(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(24, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f97232d;
            if (AbstractC15329o.e1(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.K(24, iArr3, iArr4.length);
            }
        }
    }

    public static void w(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(12, iArr, 0, iArr2) != 0 || (iArr2[11] == -1 && AbstractC15329o.a0(12, iArr2, f97230b))) {
            d(iArr2);
        }
    }
}
