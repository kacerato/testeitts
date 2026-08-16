package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15323i;
import sk.AbstractC15329o;

public class F {

    public static final int[] f97181a = {-977, -2, -1, -1, -1, -1, -1, -1};

    public static final int[] f97182b = {954529, 1954, 1, 0, 0, 0, 0, 0, -1954, -3, -1, -1, -1, -1, -1, -1};

    public static final int[] f97183c = {-954529, -1955, -2, -1, -1, -1, -1, -1, 1953, 2};

    public static final int f97184d = -1;

    public static final int f97185e = -1;

    public static final int f97186f = 977;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.b(iArr, iArr2, iArr3) != 0 || (iArr3[7] == -1 && AbstractC15323i.x(iArr3, f97181a))) {
            AbstractC15329o.d(8, 977, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(16, iArr, iArr2, iArr3) != 0 || (iArr3[15] == -1 && AbstractC15329o.a0(16, iArr3, f97182b))) {
            int[] iArr4 = f97183c;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(16, iArr3, iArr4.length);
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(8, iArr, iArr2) != 0 || (iArr2[7] == -1 && AbstractC15323i.x(iArr2, f97181a))) {
            AbstractC15329o.d(8, 977, iArr2);
        }
    }

    public static int[] d(BigInteger bigInteger) {
        int[] t10 = AbstractC15323i.t(bigInteger);
        if (t10[7] == -1) {
            int[] iArr = f97181a;
            if (AbstractC15323i.x(t10, iArr)) {
                AbstractC15323i.W(iArr, t10);
            }
        }
        return t10;
    }

    public static void e(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(8, iArr, 0, iArr2);
        } else {
            AbstractC15329o.t0(8, iArr2, AbstractC15323i.b(iArr, f97181a, iArr2));
        }
    }

    public static void f(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97181a, iArr, iArr2);
    }

    public static int g(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.D(iArr, iArr2, o10);
        n(o10, iArr3);
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        AbstractC15323i.D(iArr, iArr2, iArr4);
        n(iArr4, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.J(iArr, iArr2, iArr3) != 0 || (iArr3[15] == -1 && AbstractC15329o.a0(16, iArr3, f97182b))) {
            int[] iArr4 = f97183c;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(16, iArr3, iArr4.length);
            }
        }
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (g(iArr) == 0) {
            AbstractC15323i.S(f97181a, iArr, iArr2);
        } else {
            int[] iArr3 = f97181a;
            AbstractC15323i.S(iArr3, iArr3, iArr2);
        }
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 8);
        } while (AbstractC15329o.i0(8, iArr, f97181a) == 0);
    }

    public static void m(SecureRandom secureRandom, int[] iArr) {
        do {
            l(secureRandom, iArr);
        } while (g(iArr) != 0);
    }

    public static void n(int[] iArr, int[] iArr2) {
        if (AbstractC15323i.G(977, AbstractC15323i.F(977, iArr, 8, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[7] == -1 && AbstractC15323i.x(iArr2, f97181a))) {
            AbstractC15329o.d(8, 977, iArr2);
        }
    }

    public static void o(int i10, int[] iArr) {
        if ((i10 == 0 || AbstractC15323i.H(977, i10, iArr, 0) == 0) && !(iArr[7] == -1 && AbstractC15323i.x(iArr, f97181a))) {
            return;
        }
        AbstractC15329o.d(8, 977, iArr);
    }

    public static void p(int[] iArr, int[] iArr2) {
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.Q(iArr, o10);
        n(o10, iArr2);
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        AbstractC15323i.Q(iArr, iArr3);
        n(iArr3, iArr2);
    }

    public static void r(int[] iArr, int i10, int[] iArr2) {
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

    public static void s(int[] iArr, int i10, int[] iArr2, int[] iArr3) {
        AbstractC15323i.Q(iArr, iArr3);
        while (true) {
            n(iArr3, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                AbstractC15323i.Q(iArr2, iArr3);
            }
        }
    }

    public static void t(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.S(iArr, iArr2, iArr3) != 0) {
            AbstractC15329o.V0(8, 977, iArr3);
        }
    }

    public static void u(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(16, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f97183c;
            if (AbstractC15329o.e1(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.K(16, iArr3, iArr4.length);
            }
        }
    }

    public static void v(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(8, iArr, 0, iArr2) != 0 || (iArr2[7] == -1 && AbstractC15323i.x(iArr2, f97181a))) {
            AbstractC15329o.d(8, 977, iArr2);
        }
    }
}
