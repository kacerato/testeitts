package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15319e;
import sk.AbstractC15323i;
import sk.AbstractC15329o;

public class C14277b {

    public static final long f97299a = 4294967295L;

    public static final int[] f97300b = {-1, -1, -1, -3};

    public static final int[] f97301c = {1, 0, 0, 4, -2, -1, 3, -4};

    public static final int[] f97302d = {-1, -1, -1, -5, 1, 0, -4, 3};

    public static final int f97303e = 2147483646;

    public static final int f97304f = 2147483646;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15319e.a(iArr, iArr2, iArr3) != 0 || ((iArr3[3] >>> 1) >= 2147483646 && AbstractC15319e.u(iArr3, f97300b))) {
            d(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.b(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && AbstractC15323i.x(iArr3, f97301c))) {
            int[] iArr4 = f97302d;
            AbstractC15329o.n(iArr4.length, iArr4, iArr3);
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(4, iArr, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && AbstractC15319e.u(iArr2, f97300b))) {
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
        iArr[3] = (int) (j11 + (4294967295L & iArr[3]) + 2);
    }

    public static int[] e(BigInteger bigInteger) {
        int[] q10 = AbstractC15319e.q(bigInteger);
        if ((q10[3] >>> 1) >= 2147483646) {
            int[] iArr = f97300b;
            if (AbstractC15319e.u(q10, iArr)) {
                AbstractC15319e.Q(iArr, q10);
            }
        }
        return q10;
    }

    public static void f(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(4, iArr, 0, iArr2);
        } else {
            AbstractC15329o.t0(4, iArr2, AbstractC15319e.a(iArr, f97300b, iArr2));
        }
    }

    public static void g(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97300b, iArr, iArr2);
    }

    public static int h(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] l10 = AbstractC15319e.l();
        AbstractC15319e.A(iArr, iArr2, l10);
        n(l10, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15319e.F(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && AbstractC15323i.x(iArr3, f97301c))) {
            int[] iArr4 = f97302d;
            AbstractC15329o.n(iArr4.length, iArr4, iArr3);
        }
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (h(iArr) == 0) {
            AbstractC15319e.N(f97300b, iArr, iArr2);
        } else {
            int[] iArr3 = f97300b;
            AbstractC15319e.N(iArr3, iArr3, iArr2);
        }
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[16];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 4);
        } while (AbstractC15329o.i0(4, iArr, f97300b) == 0);
    }

    public static void m(SecureRandom secureRandom, int[] iArr) {
        do {
            l(secureRandom, iArr);
        } while (h(iArr) != 0);
    }

    public static void n(int[] iArr, int[] iArr2) {
        long j10 = iArr[7] & 4294967295L;
        long j11 = (iArr[3] & 4294967295L) + j10;
        long j12 = (iArr[6] & 4294967295L) + (j10 << 1);
        long j13 = (iArr[2] & 4294967295L) + j12;
        long j14 = (iArr[5] & 4294967295L) + (j12 << 1);
        long j15 = (iArr[1] & 4294967295L) + j14;
        long j16 = (iArr[4] & 4294967295L) + (j14 << 1);
        long j17 = (iArr[0] & 4294967295L) + j16;
        iArr2[0] = (int) j17;
        long j18 = j15 + (j17 >>> 32);
        iArr2[1] = (int) j18;
        long j19 = j13 + (j18 >>> 32);
        iArr2[2] = (int) j19;
        long j20 = j11 + (j16 << 1) + (j19 >>> 32);
        iArr2[3] = (int) j20;
        o((int) (j20 >>> 32), iArr2);
    }

    public static void o(int i10, int[] iArr) {
        while (i10 != 0) {
            long j10 = i10 & 4294967295L;
            long j11 = (iArr[0] & 4294967295L) + j10;
            iArr[0] = (int) j11;
            long j12 = j11 >> 32;
            if (j12 != 0) {
                long j13 = j12 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j13;
                long j14 = (j13 >> 32) + (iArr[2] & 4294967295L);
                iArr[2] = (int) j14;
                j12 = j14 >> 32;
            }
            long j15 = j12 + (4294967295L & iArr[3]) + (j10 << 1);
            iArr[3] = (int) j15;
            i10 = (int) (j15 >> 32);
        }
        if ((iArr[3] >>> 1) < 2147483646 || !AbstractC15319e.u(iArr, f97300b)) {
            return;
        }
        d(iArr);
    }

    public static void p(int[] iArr, int[] iArr2) {
        int[] l10 = AbstractC15319e.l();
        AbstractC15319e.L(iArr, l10);
        n(l10, iArr2);
    }

    public static void q(int[] iArr, int i10, int[] iArr2) {
        int[] l10 = AbstractC15319e.l();
        AbstractC15319e.L(iArr, l10);
        while (true) {
            n(l10, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15319e.L(iArr2, l10);
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
            long j13 = (j12 >> 32) + (iArr[2] & 4294967295L);
            iArr[2] = (int) j13;
            j11 = j13 >> 32;
        }
        iArr[3] = (int) (j11 + ((4294967295L & iArr[3]) - 2));
    }

    public static void s(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15319e.N(iArr, iArr2, iArr3) != 0) {
            r(iArr3);
        }
    }

    public static void t(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(10, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f97302d;
            AbstractC15329o.e1(iArr4.length, iArr4, iArr3);
        }
    }

    public static void u(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(4, iArr, 0, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && AbstractC15319e.u(iArr2, f97300b))) {
            d(iArr2);
        }
    }
}
