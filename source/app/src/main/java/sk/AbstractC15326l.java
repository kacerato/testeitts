package sk;

import java.math.BigInteger;
import org.bouncycastle.util.p;

public abstract class AbstractC15326l {
    public static void a(long[] jArr, int i10, long[] jArr2, int i11) {
        jArr2[i11] = jArr[i10];
        jArr2[i11 + 1] = jArr[i10 + 1];
        jArr2[i11 + 2] = jArr[i10 + 2];
        jArr2[i11 + 3] = jArr[i10 + 3];
        jArr2[i11 + 4] = jArr[i10 + 4];
        jArr2[i11 + 5] = jArr[i10 + 5];
        jArr2[i11 + 6] = jArr[i10 + 6];
    }

    public static void b(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
    }

    public static long[] c() {
        return new long[7];
    }

    public static long[] d() {
        return new long[14];
    }

    public static boolean e(long[] jArr, long[] jArr2) {
        for (int i10 = 6; i10 >= 0; i10--) {
            if (jArr[i10] != jArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static long[] f(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 448) {
            throw new IllegalArgumentException();
        }
        long[] c10 = c();
        for (int i10 = 0; i10 < 7; i10++) {
            c10[i10] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return c10;
    }

    public static boolean g(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i10 = 1; i10 < 7; i10++) {
            if (jArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(long[] jArr) {
        for (int i10 = 0; i10 < 7; i10++) {
            if (jArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        AbstractC15322h.v(iArr, iArr2, iArr3);
        AbstractC15322h.u(iArr, 7, iArr2, 7, iArr3, 14);
        int h10 = AbstractC15322h.h(iArr3, 7, iArr3, 14);
        int e10 = h10 + AbstractC15322h.e(iArr3, 21, iArr3, 14, AbstractC15322h.e(iArr3, 0, iArr3, 7, 0) + h10);
        int[] k10 = AbstractC15322h.k();
        int[] k11 = AbstractC15322h.k();
        boolean z10 = AbstractC15322h.m(iArr, 7, iArr, 0, k10, 0) != AbstractC15322h.m(iArr2, 7, iArr2, 0, k11, 0);
        int[] l10 = AbstractC15322h.l();
        AbstractC15322h.v(k10, k11, l10);
        AbstractC15329o.p(28, e10 + (z10 ? AbstractC15329o.l(14, l10, 0, iArr3, 7) : AbstractC15329o.d1(14, l10, 0, iArr3, 7)), iArr3, 21);
    }

    public static void j(int[] iArr, int[] iArr2) {
        AbstractC15322h.H(iArr, iArr2);
        AbstractC15322h.G(iArr, 7, iArr2, 14);
        int h10 = AbstractC15322h.h(iArr2, 7, iArr2, 14);
        int e10 = h10 + AbstractC15322h.e(iArr2, 21, iArr2, 14, AbstractC15322h.e(iArr2, 0, iArr2, 7, 0) + h10);
        int[] k10 = AbstractC15322h.k();
        AbstractC15322h.m(iArr, 7, iArr, 0, k10, 0);
        int[] l10 = AbstractC15322h.l();
        AbstractC15322h.H(k10, l10);
        AbstractC15329o.p(28, e10 + AbstractC15329o.d1(14, l10, 0, iArr2, 7), iArr2, 21);
    }

    public static BigInteger k(long[] jArr) {
        byte[] bArr = new byte[56];
        for (int i10 = 0; i10 < 7; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                p.D(j10, bArr, (6 - i10) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }
}
