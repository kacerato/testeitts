package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15322h;
import sk.AbstractC15329o;

public class C14320x {

    public static final int[] f97438a = {-6803, -2, -1, -1, -1, -1, -1};

    public static final int[] f97439b = {46280809, 13606, 1, 0, 0, 0, 0, -13606, -3, -1, -1, -1, -1, -1};

    public static final int[] f97440c = {-46280809, -13607, -2, -1, -1, -1, -1, 13605, 2};

    public static final int f97441d = -1;

    public static final int f97442e = -1;

    public static final int f97443f = 6803;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15322h.b(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && AbstractC15322h.r(iArr3, f97438a))) {
            AbstractC15329o.d(7, f97443f, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(14, iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && AbstractC15329o.a0(14, iArr3, f97439b))) {
            int[] iArr4 = f97440c;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(14, iArr3, iArr4.length);
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && AbstractC15322h.r(iArr2, f97438a))) {
            AbstractC15329o.d(7, f97443f, iArr2);
        }
    }

    public static int[] d(BigInteger bigInteger) {
        int[] o10 = AbstractC15322h.o(bigInteger);
        if (o10[6] == -1 && AbstractC15322h.r(o10, f97438a)) {
            AbstractC15329o.d(7, f97443f, o10);
        }
        return o10;
    }

    public static void e(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(7, iArr, 0, iArr2);
        } else {
            AbstractC15329o.t0(7, iArr2, AbstractC15322h.b(iArr, f97438a, iArr2));
        }
    }

    public static void f(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97438a, iArr, iArr2);
    }

    public static int g(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 7; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] l10 = AbstractC15322h.l();
        AbstractC15322h.v(iArr, iArr2, l10);
        m(l10, iArr3);
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15322h.A(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && AbstractC15329o.a0(14, iArr3, f97439b))) {
            int[] iArr4 = f97440c;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(14, iArr3, iArr4.length);
            }
        }
    }

    public static void j(int[] iArr, int[] iArr2) {
        if (g(iArr) == 0) {
            AbstractC15322h.J(f97438a, iArr, iArr2);
        } else {
            int[] iArr3 = f97438a;
            AbstractC15322h.J(iArr3, iArr3, iArr2);
        }
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[28];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 7);
        } while (AbstractC15329o.i0(7, iArr, f97438a) == 0);
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        do {
            k(secureRandom, iArr);
        } while (g(iArr) != 0);
    }

    public static void m(int[] iArr, int[] iArr2) {
        if (AbstractC15322h.x(f97443f, AbstractC15322h.w(f97443f, iArr, 7, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[6] == -1 && AbstractC15322h.r(iArr2, f97438a))) {
            AbstractC15329o.d(7, f97443f, iArr2);
        }
    }

    public static void n(int i10, int[] iArr) {
        if ((i10 == 0 || AbstractC15322h.y(f97443f, i10, iArr, 0) == 0) && !(iArr[6] == -1 && AbstractC15322h.r(iArr, f97438a))) {
            return;
        }
        AbstractC15329o.d(7, f97443f, iArr);
    }

    public static void o(int[] iArr, int[] iArr2) {
        int[] l10 = AbstractC15322h.l();
        AbstractC15322h.H(iArr, l10);
        m(l10, iArr2);
    }

    public static void p(int[] iArr, int i10, int[] iArr2) {
        int[] l10 = AbstractC15322h.l();
        AbstractC15322h.H(iArr, l10);
        while (true) {
            m(l10, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15322h.H(iArr2, l10);
            }
        }
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15322h.J(iArr, iArr2, iArr3) != 0) {
            AbstractC15329o.V0(7, f97443f, iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(14, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f97440c;
            if (AbstractC15329o.e1(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.K(14, iArr3, iArr4.length);
            }
        }
    }

    public static void s(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && AbstractC15322h.r(iArr2, f97438a))) {
            AbstractC15329o.d(7, f97443f, iArr2);
        }
    }
}
