package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15322h;
import sk.AbstractC15329o;

public class B {

    public static final long f97157a = 4294967295L;

    public static final int[] f97158b = {1, 0, 0, -1, -1, -1, -1};

    public static final int[] f97159c = {1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1};

    public static final int[] f97160d = {-1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1};

    public static final int f97161e = -1;

    public static final int f97162f = -1;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15322h.b(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && AbstractC15322h.r(iArr3, f97158b))) {
            d(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(14, iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && AbstractC15329o.a0(14, iArr3, f97159c))) {
            int[] iArr4 = f97160d;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(14, iArr3, iArr4.length);
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && AbstractC15322h.r(iArr2, f97158b))) {
            d(iArr2);
        }
    }

    public static void d(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) - 1;
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j12;
            long j13 = (j12 >> 32) + (iArr[2] & 4294967295L);
            iArr[2] = (int) j13;
            j11 = j13 >> 32;
        }
        long j14 = j11 + (4294967295L & iArr[3]) + 1;
        iArr[3] = (int) j14;
        if ((j14 >> 32) != 0) {
            AbstractC15329o.d0(7, iArr, 4);
        }
    }

    public static int[] e(BigInteger bigInteger) {
        int[] o10 = AbstractC15322h.o(bigInteger);
        if (o10[6] == -1) {
            int[] iArr = f97158b;
            if (AbstractC15322h.r(o10, iArr)) {
                AbstractC15322h.M(iArr, o10);
            }
        }
        return o10;
    }

    public static void f(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(7, iArr, 0, iArr2);
        } else {
            AbstractC15329o.t0(7, iArr2, AbstractC15322h.b(iArr, f97158b, iArr2));
        }
    }

    public static void g(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97158b, iArr, iArr2);
    }

    public static int h(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 7; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] l10 = AbstractC15322h.l();
        AbstractC15322h.v(iArr, iArr2, l10);
        n(l10, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15322h.A(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && AbstractC15329o.a0(14, iArr3, f97159c))) {
            int[] iArr4 = f97160d;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(14, iArr3, iArr4.length);
            }
        }
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (h(iArr) == 0) {
            AbstractC15322h.J(f97158b, iArr, iArr2);
        } else {
            int[] iArr3 = f97158b;
            AbstractC15322h.J(iArr3, iArr3, iArr2);
        }
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[28];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 7);
        } while (AbstractC15329o.i0(7, iArr, f97158b) == 0);
    }

    public static void m(SecureRandom secureRandom, int[] iArr) {
        do {
            l(secureRandom, iArr);
        } while (h(iArr) != 0);
    }

    public static void n(int[] iArr, int[] iArr2) {
        long j10 = iArr[10] & 4294967295L;
        long j11 = iArr[11] & 4294967295L;
        long j12 = iArr[12] & 4294967295L;
        long j13 = iArr[13] & 4294967295L;
        long j14 = ((iArr[7] & 4294967295L) + j11) - 1;
        long j15 = (iArr[8] & 4294967295L) + j12;
        long j16 = (iArr[9] & 4294967295L) + j13;
        long j17 = (iArr[0] & 4294967295L) - j14;
        long j18 = j17 & 4294967295L;
        long j19 = (j17 >> 32) + ((iArr[1] & 4294967295L) - j15);
        int i10 = (int) j19;
        iArr2[1] = i10;
        long j20 = (j19 >> 32) + ((iArr[2] & 4294967295L) - j16);
        int i11 = (int) j20;
        iArr2[2] = i11;
        long j21 = (j20 >> 32) + (((iArr[3] & 4294967295L) + j14) - j10);
        long j22 = j21 & 4294967295L;
        long j23 = (j21 >> 32) + (((iArr[4] & 4294967295L) + j15) - j11);
        iArr2[4] = (int) j23;
        long j24 = (j23 >> 32) + (((iArr[5] & 4294967295L) + j16) - j12);
        iArr2[5] = (int) j24;
        long j25 = (j24 >> 32) + (((iArr[6] & 4294967295L) + j10) - j13);
        iArr2[6] = (int) j25;
        long j26 = (j25 >> 32) + 1;
        long j27 = j22 + j26;
        long j28 = j18 - j26;
        iArr2[0] = (int) j28;
        long j29 = j28 >> 32;
        if (j29 != 0) {
            long j30 = j29 + (i10 & 4294967295L);
            iArr2[1] = (int) j30;
            long j31 = (j30 >> 32) + (4294967295L & i11);
            iArr2[2] = (int) j31;
            j27 += j31 >> 32;
        }
        iArr2[3] = (int) j27;
        if (((j27 >> 32) == 0 || AbstractC15329o.d0(7, iArr2, 4) == 0) && !(iArr2[6] == -1 && AbstractC15322h.r(iArr2, f97158b))) {
            return;
        }
        d(iArr2);
    }

    public static void o(int i10, int[] iArr) {
        long j10;
        if (i10 != 0) {
            long j11 = i10 & 4294967295L;
            long j12 = (iArr[0] & 4294967295L) - j11;
            iArr[0] = (int) j12;
            long j13 = j12 >> 32;
            if (j13 != 0) {
                long j14 = j13 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j14;
                long j15 = (j14 >> 32) + (iArr[2] & 4294967295L);
                iArr[2] = (int) j15;
                j13 = j15 >> 32;
            }
            long j16 = j13 + (4294967295L & iArr[3]) + j11;
            iArr[3] = (int) j16;
            j10 = j16 >> 32;
        } else {
            j10 = 0;
        }
        if ((j10 == 0 || AbstractC15329o.d0(7, iArr, 4) == 0) && !(iArr[6] == -1 && AbstractC15322h.r(iArr, f97158b))) {
            return;
        }
        d(iArr);
    }

    public static void p(int[] iArr, int[] iArr2) {
        int[] l10 = AbstractC15322h.l();
        AbstractC15322h.H(iArr, l10);
        n(l10, iArr2);
    }

    public static void q(int[] iArr, int i10, int[] iArr2) {
        int[] l10 = AbstractC15322h.l();
        AbstractC15322h.H(iArr, l10);
        while (true) {
            n(l10, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15322h.H(iArr2, l10);
            }
        }
    }

    public static void r(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) + 1;
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j12;
            long j13 = (j12 >> 32) + (iArr[2] & 4294967295L);
            iArr[2] = (int) j13;
            j11 = j13 >> 32;
        }
        long j14 = j11 + ((4294967295L & iArr[3]) - 1);
        iArr[3] = (int) j14;
        if ((j14 >> 32) != 0) {
            AbstractC15329o.K(7, iArr, 4);
        }
    }

    public static void s(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15322h.J(iArr, iArr2, iArr3) != 0) {
            r(iArr3);
        }
    }

    public static void t(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(14, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f97160d;
            if (AbstractC15329o.e1(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.K(14, iArr3, iArr4.length);
            }
        }
    }

    public static void u(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && AbstractC15322h.r(iArr2, f97158b))) {
            d(iArr2);
        }
    }
}
