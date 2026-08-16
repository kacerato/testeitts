package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15321g;
import sk.AbstractC15329o;

public class C14305p {

    public static final int[] f97390a = {-4553, -2, -1, -1, -1, -1};

    public static final int[] f97391b = {20729809, 9106, 1, 0, 0, 0, -9106, -3, -1, -1, -1, -1};

    public static final int[] f97392c = {-20729809, -9107, -2, -1, -1, -1, 9105, 2};

    public static final int f97393d = -1;

    public static final int f97394e = -1;

    public static final int f97395f = 4553;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15321g.a(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && AbstractC15321g.u(iArr3, f97390a))) {
            AbstractC15329o.d(6, f97395f, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(12, iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && AbstractC15329o.a0(12, iArr3, f97391b))) {
            int[] iArr4 = f97392c;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(12, iArr3, iArr4.length);
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && AbstractC15321g.u(iArr2, f97390a))) {
            AbstractC15329o.d(6, f97395f, iArr2);
        }
    }

    public static int[] d(BigInteger bigInteger) {
        int[] q10 = AbstractC15321g.q(bigInteger);
        if (q10[5] == -1) {
            int[] iArr = f97390a;
            if (AbstractC15321g.u(q10, iArr)) {
                AbstractC15321g.P(iArr, q10);
            }
        }
        return q10;
    }

    public static void e(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(6, iArr, 0, iArr2);
        } else {
            AbstractC15329o.t0(6, iArr2, AbstractC15321g.a(iArr, f97390a, iArr2));
        }
    }

    public static void f(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97390a, iArr, iArr2);
    }

    public static int g(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 6; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] l10 = AbstractC15321g.l();
        AbstractC15321g.A(iArr, iArr2, l10);
        m(l10, iArr3);
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15321g.F(iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && AbstractC15329o.a0(12, iArr3, f97391b))) {
            int[] iArr4 = f97392c;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(12, iArr3, iArr4.length);
            }
        }
    }

    public static void j(int[] iArr, int[] iArr2) {
        if (g(iArr) == 0) {
            AbstractC15321g.M(f97390a, iArr, iArr2);
        } else {
            int[] iArr3 = f97390a;
            AbstractC15321g.M(iArr3, iArr3, iArr2);
        }
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[24];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 6);
        } while (AbstractC15329o.i0(6, iArr, f97390a) == 0);
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        do {
            k(secureRandom, iArr);
        } while (g(iArr) != 0);
    }

    public static void m(int[] iArr, int[] iArr2) {
        if (AbstractC15321g.C(f97395f, AbstractC15321g.B(f97395f, iArr, 6, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[5] == -1 && AbstractC15321g.u(iArr2, f97390a))) {
            AbstractC15329o.d(6, f97395f, iArr2);
        }
    }

    public static void n(int i10, int[] iArr) {
        if ((i10 == 0 || AbstractC15321g.D(f97395f, i10, iArr, 0) == 0) && !(iArr[5] == -1 && AbstractC15321g.u(iArr, f97390a))) {
            return;
        }
        AbstractC15329o.d(6, f97395f, iArr);
    }

    public static void o(int[] iArr, int[] iArr2) {
        int[] l10 = AbstractC15321g.l();
        AbstractC15321g.K(iArr, l10);
        m(l10, iArr2);
    }

    public static void p(int[] iArr, int i10, int[] iArr2) {
        int[] l10 = AbstractC15321g.l();
        AbstractC15321g.K(iArr, l10);
        while (true) {
            m(l10, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15321g.K(iArr2, l10);
            }
        }
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15321g.M(iArr, iArr2, iArr3) != 0) {
            AbstractC15329o.V0(6, f97395f, iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(12, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f97392c;
            if (AbstractC15329o.e1(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.K(12, iArr3, iArr4.length);
            }
        }
    }

    public static void s(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && AbstractC15321g.u(iArr2, f97390a))) {
            AbstractC15329o.d(6, f97395f, iArr2);
        }
    }
}
