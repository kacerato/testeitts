package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import sk.AbstractC15317c;
import sk.AbstractC15320f;
import sk.AbstractC15329o;

public class C14289h {

    public static final long f97337a = 4294967295L;

    public static final int[] f97338b = {Integer.MAX_VALUE, -1, -1, -1, -1};

    public static final int[] f97339c = {1, CompilerOptions.ShouldImplementHashcode, 0, 0, 0, -2, -2, -1, -1, -1};

    public static final int[] f97340d = {-1, -1073741826, -1, -1, -1, 1, 1};

    public static final int f97341e = -1;

    public static final int f97342f = -1;

    public static final int f97343g = -2147483647;

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15320f.a(iArr, iArr2, iArr3) != 0 || (iArr3[4] == -1 && AbstractC15320f.o(iArr3, f97338b))) {
            AbstractC15329o.r(5, f97343g, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.a(10, iArr, iArr2, iArr3) != 0 || (iArr3[9] == -1 && AbstractC15329o.a0(10, iArr3, f97339c))) {
            int[] iArr4 = f97340d;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(10, iArr3, iArr4.length);
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.c0(5, iArr, iArr2) != 0 || (iArr2[4] == -1 && AbstractC15320f.o(iArr2, f97338b))) {
            AbstractC15329o.r(5, f97343g, iArr2);
        }
    }

    public static int[] d(BigInteger bigInteger) {
        int[] l10 = AbstractC15320f.l(bigInteger);
        if (l10[4] == -1) {
            int[] iArr = f97338b;
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
            AbstractC15329o.t0(5, iArr2, AbstractC15320f.a(iArr, f97338b, iArr2));
        }
    }

    public static void f(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f97338b, iArr, iArr2);
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
        if (AbstractC15320f.x(iArr, iArr2, iArr3) != 0 || (iArr3[9] == -1 && AbstractC15329o.a0(10, iArr3, f97339c))) {
            int[] iArr4 = f97340d;
            if (AbstractC15329o.n(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.d0(10, iArr3, iArr4.length);
            }
        }
    }

    public static void j(int[] iArr, int[] iArr2) {
        if (g(iArr) == 0) {
            AbstractC15320f.F(f97338b, iArr, iArr2);
        } else {
            int[] iArr3 = f97338b;
            AbstractC15320f.F(iArr3, iArr3, iArr2);
        }
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[20];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.p.t(bArr, 0, iArr, 0, 5);
        } while (AbstractC15329o.i0(5, iArr, f97338b) == 0);
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        do {
            k(secureRandom, iArr);
        } while (g(iArr) != 0);
    }

    public static void m(int[] iArr, int[] iArr2) {
        long j10 = iArr[5] & 4294967295L;
        long j11 = iArr[6] & 4294967295L;
        long j12 = iArr[7] & 4294967295L;
        long j13 = iArr[8] & 4294967295L;
        long j14 = iArr[9] & 4294967295L;
        long j15 = (iArr[0] & 4294967295L) + j10 + (j10 << 31);
        iArr2[0] = (int) j15;
        long j16 = (j15 >>> 32) + (iArr[1] & 4294967295L) + j11 + (j11 << 31);
        iArr2[1] = (int) j16;
        long j17 = (j16 >>> 32) + (iArr[2] & 4294967295L) + j12 + (j12 << 31);
        iArr2[2] = (int) j17;
        long j18 = (j17 >>> 32) + (iArr[3] & 4294967295L) + j13 + (j13 << 31);
        iArr2[3] = (int) j18;
        long j19 = (j18 >>> 32) + (4294967295L & iArr[4]) + j14 + (j14 << 31);
        iArr2[4] = (int) j19;
        n((int) (j19 >>> 32), iArr2);
    }

    public static void n(int i10, int[] iArr) {
        if ((i10 == 0 || AbstractC15320f.B(f97343g, i10, iArr, 0) == 0) && !(iArr[4] == -1 && AbstractC15320f.o(iArr, f97338b))) {
            return;
        }
        AbstractC15329o.r(5, f97343g, iArr);
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
            AbstractC15329o.h1(5, f97343g, iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(10, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f97340d;
            if (AbstractC15329o.e1(iArr4.length, iArr4, iArr3) != 0) {
                AbstractC15329o.K(10, iArr3, iArr4.length);
            }
        }
    }

    public static void s(int[] iArr, int[] iArr2) {
        if (AbstractC15329o.F0(5, iArr, 0, iArr2) != 0 || (iArr2[4] == -1 && AbstractC15320f.o(iArr2, f97338b))) {
            AbstractC15329o.r(5, f97343g, iArr2);
        }
    }
}
