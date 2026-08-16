package lk;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.util.p;
import sk.AbstractC15317c;
import sk.AbstractC15323i;
import sk.AbstractC15329o;

public class b {

    public static final long f96525a = 4294967295L;

    public static final int[] f96526b = {-1, -1, 0, -1, -1, -1, -1, -2};

    public static final int[] f96527c = {1, 0, -2, 1, 1, -2, 0, 2, -2, -3, 3, -2, -1, -1, 0, -2};

    public static final int f96528d = Integer.MAX_VALUE;

    public static final int f96529e = Integer.MAX_VALUE;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.b(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= Integer.MAX_VALUE && AbstractC15323i.x(iArr3, f96526b))) {
            d(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(16, iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && AbstractC15329o.a0(16, iArr3, f96527c))) {
            AbstractC15329o.e1(16, f96527c, iArr3);
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(8, iArr, iArr2) != 0 || ((iArr2[7] >>> 1) >= Integer.MAX_VALUE && AbstractC15323i.x(iArr2, f96526b))) {
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
        long j13 = j11 + ((iArr[2] & 4294967295L) - 1);
        iArr[2] = (int) j13;
        long j14 = (j13 >> 32) + (iArr[3] & 4294967295L) + 1;
        iArr[3] = (int) j14;
        long j15 = j14 >> 32;
        if (j15 != 0) {
            long j16 = j15 + (iArr[4] & 4294967295L);
            iArr[4] = (int) j16;
            long j17 = (j16 >> 32) + (iArr[5] & 4294967295L);
            iArr[5] = (int) j17;
            long j18 = (j17 >> 32) + (iArr[6] & 4294967295L);
            iArr[6] = (int) j18;
            j15 = j18 >> 32;
        }
        iArr[7] = (int) (j15 + (4294967295L & iArr[7]) + 1);
    }

    public static int[] e(BigInteger bigInteger) {
        int[] t10 = AbstractC15323i.t(bigInteger);
        if ((t10[7] >>> 1) >= Integer.MAX_VALUE) {
            int[] iArr = f96526b;
            if (AbstractC15323i.x(t10, iArr)) {
                AbstractC15323i.W(iArr, t10);
            }
        }
        return t10;
    }

    public static void f(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(8, iArr, 0, iArr2);
        } else {
            AbstractC15329o.t0(8, iArr2, AbstractC15323i.b(iArr, f96526b, iArr2));
        }
    }

    public static void g(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f96526b, iArr, iArr2);
    }

    public static int h(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.D(iArr, iArr2, o10);
        n(o10, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.J(iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && AbstractC15329o.a0(16, iArr3, f96527c))) {
            AbstractC15329o.e1(16, f96527c, iArr3);
        }
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (h(iArr) == 0) {
            AbstractC15323i.S(f96526b, iArr, iArr2);
        } else {
            int[] iArr3 = f96526b;
            AbstractC15323i.S(iArr3, iArr3, iArr2);
        }
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            p.t(bArr, 0, iArr, 0, 8);
        } while (AbstractC15329o.i0(8, iArr, f96526b) == 0);
    }

    public static void m(SecureRandom secureRandom, int[] iArr) {
        do {
            l(secureRandom, iArr);
        } while (h(iArr) != 0);
    }

    public static void n(int[] iArr, int[] iArr2) {
        long j10 = iArr[8] & 4294967295L;
        long j11 = iArr[9] & 4294967295L;
        long j12 = iArr[10] & 4294967295L;
        long j13 = iArr[11] & 4294967295L;
        long j14 = iArr[12] & 4294967295L;
        long j15 = iArr[13] & 4294967295L;
        long j16 = iArr[14] & 4294967295L;
        long j17 = iArr[15] & 4294967295L;
        long j18 = j12 + j13;
        long j19 = j15 + j16;
        long j20 = j19 + (j17 << 1);
        long j21 = j10 + j11 + j19;
        long j22 = j18 + j14 + j17 + j21;
        long j23 = (iArr[0] & 4294967295L) + j22 + j15 + j16 + j17;
        iArr2[0] = (int) j23;
        long j24 = (j23 >> 32) + (((iArr[1] & 4294967295L) + j22) - j10) + j16 + j17;
        iArr2[1] = (int) j24;
        long j25 = (j24 >> 32) + ((iArr[2] & 4294967295L) - j21);
        iArr2[2] = (int) j25;
        long j26 = (j25 >> 32) + ((((iArr[3] & 4294967295L) + j22) - j11) - j12) + j15;
        iArr2[3] = (int) j26;
        long j27 = (j26 >> 32) + ((((iArr[4] & 4294967295L) + j22) - j18) - j10) + j16;
        iArr2[4] = (int) j27;
        long j28 = (j27 >> 32) + (iArr[5] & 4294967295L) + j20 + j12;
        iArr2[5] = (int) j28;
        long j29 = (j28 >> 32) + (iArr[6] & 4294967295L) + j13 + j16 + j17;
        iArr2[6] = (int) j29;
        long j30 = (j29 >> 32) + (4294967295L & iArr[7]) + j22 + j20 + j14;
        iArr2[7] = (int) j30;
        o((int) (j30 >> 32), iArr2);
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
            long j15 = j13 + ((iArr[2] & 4294967295L) - j11);
            iArr[2] = (int) j15;
            long j16 = (j15 >> 32) + (iArr[3] & 4294967295L) + j11;
            iArr[3] = (int) j16;
            long j17 = j16 >> 32;
            if (j17 != 0) {
                long j18 = j17 + (iArr[4] & 4294967295L);
                iArr[4] = (int) j18;
                long j19 = (j18 >> 32) + (iArr[5] & 4294967295L);
                iArr[5] = (int) j19;
                long j20 = (j19 >> 32) + (iArr[6] & 4294967295L);
                iArr[6] = (int) j20;
                j17 = j20 >> 32;
            }
            long j21 = j17 + (4294967295L & iArr[7]) + j11;
            iArr[7] = (int) j21;
            j10 = j21 >> 32;
        } else {
            j10 = 0;
        }
        if (j10 != 0 || ((iArr[7] >>> 1) >= Integer.MAX_VALUE && AbstractC15323i.x(iArr, f96526b))) {
            d(iArr);
        }
    }

    public static void p(int[] iArr, int[] iArr2) {
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.Q(iArr, o10);
        n(o10, iArr2);
    }

    public static void q(int[] iArr, int i10, int[] iArr2) {
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.Q(iArr, o10);
        while (true) {
            n(o10, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15323i.Q(iArr2, o10);
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
        long j13 = j11 + (iArr[2] & 4294967295L) + 1;
        iArr[2] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr[3] & 4294967295L) - 1);
        iArr[3] = (int) j14;
        long j15 = j14 >> 32;
        if (j15 != 0) {
            long j16 = j15 + (iArr[4] & 4294967295L);
            iArr[4] = (int) j16;
            long j17 = (j16 >> 32) + (iArr[5] & 4294967295L);
            iArr[5] = (int) j17;
            long j18 = (j17 >> 32) + (iArr[6] & 4294967295L);
            iArr[6] = (int) j18;
            j15 = j18 >> 32;
        }
        iArr[7] = (int) (j15 + ((4294967295L & iArr[7]) - 1));
    }

    public static void s(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.S(iArr, iArr2, iArr3) != 0) {
            r(iArr3);
        }
    }

    public static void t(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(16, iArr, iArr2, iArr3) != 0) {
            AbstractC15329o.n(16, f96527c, iArr3);
        }
    }

    public static void u(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(8, iArr, 0, iArr2) != 0 || ((iArr2[7] >>> 1) >= Integer.MAX_VALUE && AbstractC15323i.x(iArr2, f96526b))) {
            d(iArr2);
        }
    }
}
