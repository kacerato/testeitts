package kk;

import Li.w0;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.util.p;
import sk.AbstractC15317c;
import sk.AbstractC15323i;
import sk.AbstractC15329o;

public class b {

    public static final long f95373a = 4294967295L;

    public static final int f95375c = Integer.MAX_VALUE;

    public static final int f95377e = 19;

    public static final int[] f95374b = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};

    public static final int[] f95376d = {w0.f14283E, 0, 0, 0, 0, 0, 0, 0, -19, -1, -1, -1, -1, -1, -1, 1073741823};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        AbstractC15323i.b(iArr, iArr2, iArr3);
        if (AbstractC15323i.x(iArr3, f95374b)) {
            t(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        AbstractC15329o.a(16, iArr, iArr2, iArr3);
        if (AbstractC15329o.a0(16, iArr3, f95376d)) {
            s(iArr3);
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        AbstractC15329o.c0(8, iArr, iArr2);
        if (AbstractC15323i.x(iArr2, f95374b)) {
            t(iArr2);
        }
    }

    public static int d(int[] iArr) {
        int[] iArr2 = f95376d;
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            j11 = AbstractC15329o.d0(8, iArr, 1);
        }
        long j12 = j11 + ((iArr[8] & 4294967295L) - 19);
        iArr[8] = (int) j12;
        long j13 = j12 >> 32;
        if (j13 != 0) {
            j13 = AbstractC15329o.K(15, iArr, 9);
        }
        long j14 = j13 + (iArr[15] & 4294967295L) + (4294967295L & (iArr2[15] + 1));
        iArr[15] = (int) j14;
        return (int) (j14 >> 32);
    }

    public static int e(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) - 19;
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            j11 = AbstractC15329o.K(7, iArr, 1);
        }
        long j12 = j11 + (4294967295L & iArr[7]) + 2147483648L;
        iArr[7] = (int) j12;
        return (int) (j12 >> 32);
    }

    public static int[] f(BigInteger bigInteger) {
        int[] t10 = AbstractC15323i.t(bigInteger);
        while (true) {
            int[] iArr = f95374b;
            if (!AbstractC15323i.x(t10, iArr)) {
                return t10;
            }
            AbstractC15323i.W(iArr, t10);
        }
    }

    public static void g(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            AbstractC15329o.w0(8, iArr, 0, iArr2);
        } else {
            AbstractC15323i.b(iArr, f95374b, iArr2);
            AbstractC15329o.t0(8, iArr2, 0);
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        AbstractC15317c.b(f95374b, iArr, iArr2);
    }

    public static int i(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static void j(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.D(iArr, iArr2, o10);
        o(o10, iArr3);
    }

    public static void k(int[] iArr, int[] iArr2, int[] iArr3) {
        AbstractC15323i.J(iArr, iArr2, iArr3);
        if (AbstractC15329o.a0(16, iArr3, f95376d)) {
            s(iArr3);
        }
    }

    public static void l(int[] iArr, int[] iArr2) {
        if (i(iArr) == 0) {
            AbstractC15323i.S(f95374b, iArr, iArr2);
        } else {
            int[] iArr3 = f95374b;
            AbstractC15323i.S(iArr3, iArr3, iArr2);
        }
    }

    public static void m(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            p.t(bArr, 0, iArr, 0, 8);
            iArr[7] = iArr[7] & Integer.MAX_VALUE;
        } while (AbstractC15329o.i0(8, iArr, f95374b) == 0);
    }

    public static void n(SecureRandom secureRandom, int[] iArr) {
        do {
            m(secureRandom, iArr);
        } while (i(iArr) != 0);
    }

    public static void o(int[] iArr, int[] iArr2) {
        int i10 = iArr[7];
        AbstractC15329o.E0(8, iArr, 8, i10, iArr2, 0);
        int L10 = AbstractC15323i.L(19, iArr, iArr2) << 1;
        int i11 = iArr2[7];
        iArr2[7] = (i11 & Integer.MAX_VALUE) + AbstractC15329o.r(7, (L10 + ((i11 >>> 31) - (i10 >>> 31))) * 19, iArr2);
        if (AbstractC15323i.x(iArr2, f95374b)) {
            t(iArr2);
        }
    }

    public static void p(int i10, int[] iArr) {
        int i11 = iArr[7];
        iArr[7] = (i11 & Integer.MAX_VALUE) + AbstractC15329o.r(7, ((i10 << 1) | (i11 >>> 31)) * 19, iArr);
        if (AbstractC15323i.x(iArr, f95374b)) {
            t(iArr);
        }
    }

    public static void q(int[] iArr, int[] iArr2) {
        int[] o10 = AbstractC15323i.o();
        AbstractC15323i.Q(iArr, o10);
        o(o10, iArr2);
    }

    public static void r(int[] iArr, int i10, int[] iArr2) {
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

    public static int s(int[] iArr) {
        int[] iArr2 = f95376d;
        long j10 = (iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L);
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            j11 = AbstractC15329o.K(8, iArr, 1);
        }
        long j12 = j11 + (iArr[8] & 4294967295L) + 19;
        iArr[8] = (int) j12;
        long j13 = j12 >> 32;
        if (j13 != 0) {
            j13 = AbstractC15329o.d0(15, iArr, 9);
        }
        long j14 = j13 + ((iArr[15] & 4294967295L) - (4294967295L & (iArr2[15] + 1)));
        iArr[15] = (int) j14;
        return (int) (j14 >> 32);
    }

    public static int t(int[] iArr) {
        long j10 = (iArr[0] & 4294967295L) + 19;
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            j11 = AbstractC15329o.d0(7, iArr, 1);
        }
        long j12 = j11 + ((4294967295L & iArr[7]) - 2147483648L);
        iArr[7] = (int) j12;
        return (int) (j12 >> 32);
    }

    public static void u(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15323i.S(iArr, iArr2, iArr3) != 0) {
            e(iArr3);
        }
    }

    public static void v(int[] iArr, int[] iArr2, int[] iArr3) {
        if (AbstractC15329o.S0(16, iArr, iArr2, iArr3) != 0) {
            d(iArr3);
        }
    }

    public static void w(int[] iArr, int[] iArr2) {
        AbstractC15329o.F0(8, iArr, 0, iArr2);
        if (AbstractC15323i.x(iArr2, f95374b)) {
            t(iArr2);
        }
    }
}
