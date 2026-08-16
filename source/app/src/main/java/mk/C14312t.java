package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15321g;
import sk.AbstractC15329o;

public class C14312t {

    public static final long f97414a = 4294967295L;

    public static final int[] f97415b = {-1, -1, -2, -1, -1, -1};

    public static final int[] f97416c = {1, 0, 2, 0, 1, 0, -2, -1, -3, -1, -1, -1};

    public static final int[] f97417d = {-1, -1, -3, -1, -2, -1, 1, 0, 2};

    public static final int f97418e = -1;

    public static final int f97419f = -1;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15321g.a(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && AbstractC15321g.u(iArr3, f97415b))) {
            d(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(12, iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && AbstractC15329o.a0(12, iArr3, f97416c))) {
            int[] iArr4 = f97417d;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(12, iArr3, iArr4.length);
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && AbstractC15321g.u(iArr2, f97415b))) {
            d(iArr2);
        }
    }

    public static void d(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) + 1;
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j12;
            j11 = j12 >> 32;
        }
        long j13 = j11 + (4294967295L & iArr[2]) + 1;
        iArr[2] = (int) j13;
        if ((j13 >> 32) != 0) {
            AbstractC15329o.d0(6, iArr, 3);
        }
    }

    public static int[] e(BigInteger bigInteger) {
        int[] q10 = AbstractC15321g.q(bigInteger);
        if (q10[5] == -1) {
            int[] iArr = f97415b;
            if (AbstractC15321g.u(q10, iArr)) {
                AbstractC15321g.P(iArr, q10);
            }
        }
        return q10;
    }

    public static void f(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(6, iArr, 0, iArr2);
        } else {
            AbstractC15329o.t0(6, iArr2, AbstractC15321g.a(iArr, f97415b, iArr2));
        }
    }

    public static void g(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97415b, iArr, iArr2);
    }

    public static int h(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 6; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] l10 = AbstractC15321g.l();
        AbstractC15321g.A(iArr, iArr2, l10);
        n(l10, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15321g.F(iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && AbstractC15329o.a0(12, iArr3, f97416c))) {
            int[] iArr4 = f97417d;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(12, iArr3, iArr4.length);
            }
        }
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (h(iArr) == 0) {
            AbstractC15321g.M(f97415b, iArr, iArr2);
        } else {
            int[] iArr3 = f97415b;
            AbstractC15321g.M(iArr3, iArr3, iArr2);
        }
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[24];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 6);
        } while (AbstractC15329o.i0(6, iArr, f97415b) == 0);
    }

    public static void m(SecureRandom secureRandom, int[] iArr) {
        do {
            l(secureRandom, iArr);
        } while (h(iArr) != 0);
    }

    public static void n(int[] iArr, int[] iArr2) {
        long j10 = iArr[6] & 4294967295L;
        long j11 = iArr[7] & 4294967295L;
        long j12 = (iArr[10] & 4294967295L) + j10;
        long j13 = (iArr[11] & 4294967295L) + j11;
        long j14 = (iArr[0] & 4294967295L) + j12;
        int i10 = (int) j14;
        long j15 = (j14 >> 32) + (iArr[1] & 4294967295L) + j13;
        int i11 = (int) j15;
        iArr2[1] = i11;
        long j16 = j12 + (iArr[8] & 4294967295L);
        long j17 = j13 + (iArr[9] & 4294967295L);
        long j18 = (j15 >> 32) + (iArr[2] & 4294967295L) + j16;
        long j19 = j18 & 4294967295L;
        long j20 = (j18 >> 32) + (iArr[3] & 4294967295L) + j17;
        iArr2[3] = (int) j20;
        long j21 = (j20 >> 32) + (iArr[4] & 4294967295L) + (j16 - j10);
        iArr2[4] = (int) j21;
        long j22 = (j21 >> 32) + (iArr[5] & 4294967295L) + (j17 - j11);
        iArr2[5] = (int) j22;
        long j23 = j22 >> 32;
        long j24 = j19 + j23;
        long j25 = j23 + (i10 & 4294967295L);
        iArr2[0] = (int) j25;
        long j26 = j25 >> 32;
        if (j26 != 0) {
            long j27 = j26 + (4294967295L & i11);
            iArr2[1] = (int) j27;
            j24 += j27 >> 32;
        }
        iArr2[2] = (int) j24;
        if (((j24 >> 32) == 0 || AbstractC15329o.d0(6, iArr2, 3) == 0) && !(iArr2[5] == -1 && AbstractC15321g.u(iArr2, f97415b))) {
            return;
        }
        d(iArr2);
    }

    public static void o(int i10, int[] iArr) {
        long j10;
        if (i10 != 0) {
            long j11 = i10 & 4294967295L;
            long j12 = (iArr[0] & 4294967295L) + j11;
            iArr[0] = (int) j12;
            long j13 = j12 >> 32;
            if (j13 != 0) {
                long j14 = j13 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j14;
                j13 = j14 >> 32;
            }
            long j15 = j13 + (4294967295L & iArr[2]) + j11;
            iArr[2] = (int) j15;
            j10 = j15 >> 32;
        } else {
            j10 = 0;
        }
        if ((j10 == 0 || AbstractC15329o.d0(6, iArr, 3) == 0) && !(iArr[5] == -1 && AbstractC15321g.u(iArr, f97415b))) {
            return;
        }
        d(iArr);
    }

    public static void p(int[] iArr, int[] iArr2) {
        int[] l10 = AbstractC15321g.l();
        AbstractC15321g.K(iArr, l10);
        n(l10, iArr2);
    }

    public static void q(int[] iArr, int i10, int[] iArr2) {
        int[] l10 = AbstractC15321g.l();
        AbstractC15321g.K(iArr, l10);
        while (true) {
            n(l10, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15321g.K(iArr2, l10);
            }
        }
    }

    public static void r(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) - 1;
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j12;
            j11 = j12 >> 32;
        }
        long j13 = j11 + ((4294967295L & iArr[2]) - 1);
        iArr[2] = (int) j13;
        if ((j13 >> 32) != 0) {
            AbstractC15329o.K(6, iArr, 3);
        }
    }

    public static void s(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15321g.M(iArr, iArr2, iArr3) != 0) {
            r(iArr3);
        }
    }

    public static void t(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(12, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f97417d;
            if (AbstractC15329o.e1(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.K(12, iArr3, iArr4.length);
            }
        }
    }

    public static void u(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && AbstractC15321g.u(iArr2, f97415b))) {
            d(iArr2);
        }
    }
}
