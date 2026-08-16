package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import sk.AbstractC15317c;
import sk.AbstractC15327m;
import sk.AbstractC15329o;

public class S {

    public static final int[] f97258a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 511};

    public static final int f97259b = 511;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int a10 = AbstractC15329o.a(16, iArr, iArr2, iArr3) + iArr[16] + iArr2[16];
        if (a10 > 511 || (a10 == 511 && AbstractC15329o.N(16, iArr3, f97258a))) {
            a10 = (a10 + AbstractC15329o.b0(16, iArr3)) & 511;
        }
        iArr3[16] = a10;
    }

    public static void b(int[] iArr, int[] iArr2) {
        int c02 = AbstractC15329o.c0(16, iArr, iArr2) + iArr[16];
        if (c02 > 511 || (c02 == 511 && AbstractC15329o.N(16, iArr2, f97258a))) {
            c02 = (c02 + AbstractC15329o.b0(16, iArr2)) & 511;
        }
        iArr2[16] = c02;
    }

    public static int[] c(BigInteger bigInteger) {
        int[] U10 = AbstractC15329o.U(521, bigInteger);
        if (AbstractC15329o.N(17, U10, f97258a)) {
            AbstractC15329o.k1(17, U10);
        }
        return U10;
    }

    public static void d(int[] iArr, int[] iArr2) {
        int i10 = iArr[16];
        iArr2[16] = (AbstractC15329o.w0(16, iArr, i10, iArr2) >>> 23) | (i10 >>> 1);
    }

    public static void e(int[] iArr, int[] iArr2, int[] iArr3) {
        AbstractC15327m.a(iArr, iArr2, iArr3);
        int i10 = iArr[16];
        int i11 = iArr2[16];
        iArr3[32] = AbstractC15329o.m0(16, i10, iArr2, i11, iArr, iArr3, 16) + (i10 * i11);
    }

    public static void f(int[] iArr, int[] iArr2) {
        AbstractC15327m.b(iArr, iArr2);
        int i10 = iArr[16];
        iArr2[32] = AbstractC15329o.r0(16, i10 << 1, iArr, 0, iArr2, 16) + (i10 * i10);
    }

    public static void g(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97258a, iArr, iArr2);
    }

    public static int h(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 17; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] E10 = AbstractC15329o.E(33);
        e(iArr, iArr2, E10);
        n(E10, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        e(iArr, iArr2, iArr4);
        n(iArr4, iArr3);
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (h(iArr) == 0) {
            AbstractC15329o.S0(17, f97258a, iArr, iArr2);
        } else {
            int[] iArr3 = f97258a;
            AbstractC15329o.S0(17, iArr3, iArr3, iArr2);
        }
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[68];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 17);
            iArr[16] = iArr[16] & 511;
        } while (AbstractC15329o.i0(17, iArr, f97258a) == 0);
    }

    public static void m(SecureRandom secureRandom, int[] iArr) {
        do {
            l(secureRandom, iArr);
        } while (h(iArr) != 0);
    }

    public static void n(int[] iArr, int[] iArr2) {
        int i10 = iArr[32];
        int z02 = (AbstractC15329o.z0(16, iArr, 16, 9, i10, iArr2, 0) >>> 23) + (i10 >>> 9) + AbstractC15329o.n(16, iArr, iArr2);
        if (z02 > 511 || (z02 == 511 && AbstractC15329o.N(16, iArr2, f97258a))) {
            z02 = (z02 + AbstractC15329o.b0(16, iArr2)) & 511;
        }
        iArr2[16] = z02;
    }

    public static void o(int[] iArr) {
        int i10 = iArr[16];
        int r10 = AbstractC15329o.r(16, i10 >>> 9, iArr) + (i10 & 511);
        if (r10 > 511 || (r10 == 511 && AbstractC15329o.N(16, iArr, f97258a))) {
            r10 = (r10 + AbstractC15329o.b0(16, iArr)) & 511;
        }
        iArr[16] = r10;
    }

    public static void p(int[] iArr, int[] iArr2) {
        int[] E10 = AbstractC15329o.E(33);
        f(iArr, E10);
        n(E10, iArr2);
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        f(iArr, iArr3);
        n(iArr3, iArr2);
    }

    public static void r(int[] iArr, int i10, int[] iArr2) {
        int[] E10 = AbstractC15329o.E(33);
        f(iArr, E10);
        while (true) {
            n(E10, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                f(iArr2, E10);
            }
        }
    }

    public static void s(int[] iArr, int i10, int[] iArr2, int[] iArr3) {
        f(iArr, iArr3);
        while (true) {
            n(iArr3, iArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                f(iArr2, iArr3);
            }
        }
    }

    public static void t(int[] iArr, int[] iArr2, int[] iArr3) {
        int S02 = (AbstractC15329o.S0(16, iArr, iArr2, iArr3) + iArr[16]) - iArr2[16];
        if (S02 < 0) {
            S02 = (S02 + AbstractC15329o.I(16, iArr3)) & 511;
        }
        iArr3[16] = S02;
    }

    public static void u(int[] iArr, int[] iArr2) {
        int i10 = iArr[16];
        iArr2[16] = (AbstractC15329o.F0(16, iArr, i10 << 23, iArr2) | (i10 << 1)) & 511;
    }
}
