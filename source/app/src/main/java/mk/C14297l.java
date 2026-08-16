package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15320f;
import sk.AbstractC15329o;

public class C14297l {

    public static final int[] f97363a = {-21389, -2, -1, -1, -1};

    public static final int[] f97364b = {457489321, 42778, 1, 0, 0, -42778, -3, -1, -1, -1};

    public static final int[] f97365c = {-457489321, -42779, -2, -1, -1, 42777, 2};

    public static final int f97366d = -1;

    public static final int f97367e = -1;

    public static final int f97368f = 21389;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15320f.a(iArr, iArr2, iArr3) != 0 || (iArr3[4] == -1 && AbstractC15320f.o(iArr3, f97363a))) {
            AbstractC15329o.d(5, f97368f, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(10, iArr, iArr2, iArr3) != 0 || (iArr3[9] == -1 && AbstractC15329o.a0(10, iArr3, f97364b))) {
            int[] iArr4 = f97365c;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(10, iArr3, iArr4.length);
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(5, iArr, iArr2) != 0 || (iArr2[4] == -1 && AbstractC15320f.o(iArr2, f97363a))) {
            AbstractC15329o.d(5, f97368f, iArr2);
        }
    }

    public static int[] d(BigInteger bigInteger) {
        int[] l10 = AbstractC15320f.l(bigInteger);
        if (l10[4] == -1) {
            int[] iArr = f97363a;
            if (AbstractC15320f.o(l10, iArr)) {
                AbstractC15320f.I(iArr, l10);
            }
        }
        return l10;
    }

    public static void e(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(5, iArr, 0, iArr2);
        } else {
            AbstractC15329o.t0(5, iArr2, AbstractC15320f.a(iArr, f97363a, iArr2));
        }
    }

    public static void f(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97363a, iArr, iArr2);
    }

    public static int g(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 5; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] i10 = AbstractC15320f.i();
        AbstractC15320f.s(iArr, iArr2, i10);
        m(i10, iArr3);
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15320f.x(iArr, iArr2, iArr3) != 0 || (iArr3[9] == -1 && AbstractC15329o.a0(10, iArr3, f97364b))) {
            int[] iArr4 = f97365c;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(10, iArr3, iArr4.length);
            }
        }
    }

    public static void j(int[] iArr, int[] iArr2) {
        if (g(iArr) == 0) {
            AbstractC15320f.F(f97363a, iArr, iArr2);
        } else {
            int[] iArr3 = f97363a;
            AbstractC15320f.F(iArr3, iArr3, iArr2);
        }
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[20];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 5);
        } while (AbstractC15329o.i0(5, iArr, f97363a) == 0);
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        do {
            k(secureRandom, iArr);
        } while (g(iArr) != 0);
    }

    public static void m(int[] iArr, int[] iArr2) {
        if (AbstractC15320f.u(f97368f, AbstractC15320f.t(f97368f, iArr, 5, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[4] == -1 && AbstractC15320f.o(iArr2, f97363a))) {
            AbstractC15329o.d(5, f97368f, iArr2);
        }
    }

    public static void n(int i10, int[] iArr) {
        if ((i10 == 0 || AbstractC15320f.v(f97368f, i10, iArr, 0) == 0) && !(iArr[4] == -1 && AbstractC15320f.o(iArr, f97363a))) {
            return;
        }
        AbstractC15329o.d(5, f97368f, iArr);
    }

    public static void o(int[] iArr, int[] iArr2) {
        int[] i10 = AbstractC15320f.i();
        AbstractC15320f.D(iArr, i10);
        m(i10, iArr2);
    }

    public static void p(int[] iArr, int i10, int[] iArr2) {
        int[] i11 = AbstractC15320f.i();
        AbstractC15320f.D(iArr, i11);
        while (true) {
            m(i11, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15320f.D(iArr2, i11);
            }
        }
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15320f.F(iArr, iArr2, iArr3) != 0) {
            AbstractC15329o.V0(5, f97368f, iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(10, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f97365c;
            if (AbstractC15329o.e1(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.K(10, iArr3, iArr4.length);
            }
        }
    }

    public static void s(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(5, iArr, 0, iArr2) != 0 || (iArr2[4] == -1 && AbstractC15320f.o(iArr2, f97363a))) {
            AbstractC15329o.d(5, f97368f, iArr2);
        }
    }
}
