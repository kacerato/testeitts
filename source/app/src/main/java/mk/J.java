package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15323i;
import sk.AbstractC15329o;

public class J {

    public static final long f97206a = 4294967295L;

    public static final int[] f97207b = {-1, -1, -1, 0, 0, 0, 1, -1};

    public static final int[] f97208c = {1, 0, 0, -2, -1, -1, -2, 1, -2, 1, -2, 1, 1, -2, 2, -2};

    public static final int f97209d = -1;

    public static final int f97210e = Integer.MAX_VALUE;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.b(iArr, iArr2, iArr3) != 0 || (iArr3[7] == -1 && AbstractC15323i.x(iArr3, f97207b))) {
            d(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(16, iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && AbstractC15329o.a0(16, iArr3, f97208c))) {
            AbstractC15329o.e1(16, f97208c, iArr3);
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(8, iArr, iArr2) != 0 || (iArr2[7] == -1 && AbstractC15323i.x(iArr2, f97207b))) {
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
            long j13 = (j12 >> 32) + (iArr[2] & 4294967295L);
            iArr[2] = (int) j13;
            j11 = j13 >> 32;
        }
        long j14 = j11 + ((iArr[3] & 4294967295L) - 1);
        iArr[3] = (int) j14;
        long j15 = j14 >> 32;
        if (j15 != 0) {
            long j16 = j15 + (iArr[4] & 4294967295L);
            iArr[4] = (int) j16;
            long j17 = (j16 >> 32) + (iArr[5] & 4294967295L);
            iArr[5] = (int) j17;
            j15 = j17 >> 32;
        }
        long j18 = j15 + ((iArr[6] & 4294967295L) - 1);
        iArr[6] = (int) j18;
        iArr[7] = (int) ((j18 >> 32) + (4294967295L & iArr[7]) + 1);
    }

    public static int[] e(BigInteger bigInteger) {
        int[] t10 = AbstractC15323i.t(bigInteger);
        if (t10[7] == -1) {
            int[] iArr = f97207b;
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
            AbstractC15329o.t0(8, iArr2, AbstractC15323i.b(iArr, f97207b, iArr2));
        }
    }

    public static void g(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97207b, iArr, iArr2);
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
        o(o10, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        AbstractC15323i.D(iArr, iArr2, iArr4);
        o(iArr4, iArr3);
    }

    public static void k(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.J(iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && AbstractC15329o.a0(16, iArr3, f97208c))) {
            AbstractC15329o.e1(16, f97208c, iArr3);
        }
    }

    public static void l(int[] iArr, int[] iArr2) {
        if (h(iArr) == 0) {
            AbstractC15323i.S(f97207b, iArr, iArr2);
        } else {
            int[] iArr3 = f97207b;
            AbstractC15323i.S(iArr3, iArr3, iArr2);
        }
    }

    public static void m(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 8);
        } while (AbstractC15329o.i0(8, iArr, f97207b) == 0);
    }

    public static void n(SecureRandom secureRandom, int[] iArr) {
        do {
            m(secureRandom, iArr);
        } while (h(iArr) != 0);
    }

    public static void o(int[] iArr, int[] iArr2) {
        long j10 = iArr[9] & 4294967295L;
        long j11 = iArr[10] & 4294967295L;
        long j12 = iArr[11] & 4294967295L;
        long j13 = iArr[12] & 4294967295L;
        long j14 = iArr[13] & 4294967295L;
        long j15 = iArr[14] & 4294967295L;
        long j16 = iArr[15] & 4294967295L;
        long j17 = (iArr[8] & 4294967295L) - 6;
        long j18 = j17 + j10;
        long j19 = j10 + j11;
        long j20 = (j11 + j12) - j16;
        long j21 = j12 + j13;
        long j22 = j13 + j14;
        long j23 = j14 + j15;
        long j24 = j15 + j16;
        long j25 = j23 - j18;
        long j26 = ((iArr[0] & 4294967295L) - j21) - j25;
        iArr2[0] = (int) j26;
        long j27 = (j26 >> 32) + ((((iArr[1] & 4294967295L) + j19) - j22) - j24);
        iArr2[1] = (int) j27;
        long j28 = (j27 >> 32) + (((iArr[2] & 4294967295L) + j20) - j23);
        iArr2[2] = (int) j28;
        long j29 = (j28 >> 32) + ((((iArr[3] & 4294967295L) + (j21 << 1)) + j25) - j24);
        iArr2[3] = (int) j29;
        long j30 = (j29 >> 32) + ((((iArr[4] & 4294967295L) + (j22 << 1)) + j15) - j19);
        iArr2[4] = (int) j30;
        long j31 = (j30 >> 32) + (((iArr[5] & 4294967295L) + (j23 << 1)) - j20);
        iArr2[5] = (int) j31;
        long j32 = (j31 >> 32) + (iArr[6] & 4294967295L) + (j24 << 1) + j25;
        iArr2[6] = (int) j32;
        long j33 = (j32 >> 32) + (((((iArr[7] & 4294967295L) + (j16 << 1)) + j17) - j20) - j22);
        iArr2[7] = (int) j33;
        p((int) ((j33 >> 32) + 6), iArr2);
    }

    public static void p(int i10, int[] iArr) {
        long j10;
        if (i10 != 0) {
            long j11 = i10 & 4294967295L;
            long j12 = (iArr[0] & 4294967295L) + j11;
            iArr[0] = (int) j12;
            long j13 = j12 >> 32;
            if (j13 != 0) {
                long j14 = j13 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j14;
                long j15 = (j14 >> 32) + (iArr[2] & 4294967295L);
                iArr[2] = (int) j15;
                j13 = j15 >> 32;
            }
            long j16 = j13 + ((iArr[3] & 4294967295L) - j11);
            iArr[3] = (int) j16;
            long j17 = j16 >> 32;
            if (j17 != 0) {
                long j18 = j17 + (iArr[4] & 4294967295L);
                iArr[4] = (int) j18;
                long j19 = (j18 >> 32) + (iArr[5] & 4294967295L);
                iArr[5] = (int) j19;
                j17 = j19 >> 32;
            }
            long j20 = j17 + ((iArr[6] & 4294967295L) - j11);
            iArr[6] = (int) j20;
            long j21 = (j20 >> 32) + (4294967295L & iArr[7]) + j11;
            iArr[7] = (int) j21;
            j10 = j21 >> 32;
        } else {
            j10 = 0;
        }
        if (j10 != 0 || (iArr[7] == -1 && AbstractC15323i.x(iArr, f97207b))) {
            d(iArr);
        }
    }

    public static void q(int[] iArr, int[] iArr2) {
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.Q(iArr, o10);
        o(o10, iArr2);
    }

    public static void r(int[] iArr, int[] iArr2, int[] iArr3) {
        AbstractC15323i.Q(iArr, iArr3);
        o(iArr3, iArr2);
    }

    public static void s(int[] iArr, int i10, int[] iArr2) {
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.Q(iArr, o10);
        while (true) {
            o(o10, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15323i.Q(iArr2, o10);
            }
        }
    }

    public static void t(int[] iArr, int i10, int[] iArr2, int[] iArr3) {
        AbstractC15323i.Q(iArr, iArr3);
        while (true) {
            o(iArr3, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15323i.Q(iArr2, iArr3);
            }
        }
    }

    public static void u(int[] iArr) {
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
        long j14 = j11 + (iArr[3] & 4294967295L) + 1;
        iArr[3] = (int) j14;
        long j15 = j14 >> 32;
        if (j15 != 0) {
            long j16 = j15 + (iArr[4] & 4294967295L);
            iArr[4] = (int) j16;
            long j17 = (j16 >> 32) + (iArr[5] & 4294967295L);
            iArr[5] = (int) j17;
            j15 = j17 >> 32;
        }
        long j18 = j15 + (iArr[6] & 4294967295L) + 1;
        iArr[6] = (int) j18;
        iArr[7] = (int) ((j18 >> 32) + ((4294967295L & iArr[7]) - 1));
    }

    public static void v(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.S(iArr, iArr2, iArr3) != 0) {
            u(iArr3);
        }
    }

    public static void w(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(16, iArr, iArr2, iArr3) != 0) {
            AbstractC15329o.n(16, f97208c, iArr3);
        }
    }

    public static void x(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(8, iArr, 0, iArr2) != 0 || (iArr2[7] == -1 && AbstractC15323i.x(iArr2, f97207b))) {
            d(iArr2);
        }
    }
}
