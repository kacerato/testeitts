package ok;

import Oi.K;
import java.security.SecureRandom;
import pk.AbstractC15008c;
import pk.AbstractC15010e;

public abstract class c {

    public static final int f99082a = 56;

    public static final int f99083b = 56;

    public static final int f99084c = 156326;

    public static final int f99085d = 39082;

    public static class a extends d {
    }

    public static class b {

        public static final b f99086a = new b();
    }

    public static boolean a(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
        h(bArr, i10, bArr2, i11, bArr3, i12);
        return !org.bouncycastle.util.a.e(bArr3, i12, 56);
    }

    public static int b(byte[] bArr, int i10) {
        return (bArr[i10 + 3] << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static void c(byte[] bArr, int i10, int[] iArr) {
        for (int i11 = 0; i11 < 14; i11++) {
            iArr[i11] = b(bArr, (i11 * 4) + i10);
        }
        iArr[0] = iArr[0] & (-4);
        iArr[13] = iArr[13] | Integer.MIN_VALUE;
    }

    public static void d(SecureRandom secureRandom, byte[] bArr) {
        if (bArr.length != 56) {
            throw new IllegalArgumentException("k");
        }
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & K.f20148c);
        bArr[55] = (byte) (bArr[55] | 128);
    }

    public static void e(byte[] bArr, int i10, byte[] bArr2, int i11) {
        i(bArr, i10, bArr2, i11);
    }

    public static void f(int[] iArr, int[] iArr2) {
        int[] j10 = d.j();
        int[] j11 = d.j();
        d.a(iArr, iArr2, j10);
        d.S(iArr, iArr2, j11);
        d.Q(j10, j10);
        d.Q(j11, j11);
        d.J(j10, j11, iArr);
        d.S(j10, j11, j10);
        d.I(j10, f99085d, iArr2);
        d.a(iArr2, j11, iArr2);
        d.J(iArr2, j10, iArr2);
    }

    public static void g() {
        AbstractC15008c.P();
    }

    public static void h(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
        int[] iArr = new int[14];
        c(bArr, i10, iArr);
        int[] j10 = d.j();
        d.m(bArr2, i11, j10);
        int[] j11 = d.j();
        d.i(j10, 0, j11, 0);
        int[] j12 = d.j();
        j12[0] = 1;
        int[] j13 = d.j();
        j13[0] = 1;
        int[] j14 = d.j();
        int[] j15 = d.j();
        int[] j16 = d.j();
        int i13 = AbstractC15010e.f104124f;
        int i14 = 1;
        while (true) {
            d.a(j13, j14, j15);
            d.S(j13, j14, j13);
            d.a(j11, j12, j14);
            d.S(j11, j12, j11);
            d.J(j15, j11, j15);
            d.J(j13, j14, j13);
            d.Q(j14, j14);
            d.Q(j11, j11);
            d.S(j14, j11, j16);
            d.I(j16, f99085d, j12);
            d.a(j12, j11, j12);
            d.J(j12, j16, j12);
            d.J(j11, j14, j11);
            d.S(j15, j13, j14);
            d.a(j15, j13, j13);
            d.Q(j13, j13);
            d.Q(j14, j14);
            d.J(j14, j10, j14);
            i13--;
            int i15 = (iArr[i13 >>> 5] >>> (i13 & 31)) & 1;
            int i16 = i14 ^ i15;
            d.l(i16, j11, j13);
            d.l(i16, j12, j14);
            if (i13 < 2) {
                break;
            } else {
                i14 = i15;
            }
        }
        for (int i17 = 0; i17 < 2; i17++) {
            f(j11, j12);
        }
        d.C(j12, j12);
        d.J(j11, j12, j11);
        d.L(j11);
        d.w(j11, bArr3, i12);
    }

    public static void i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int[] j10 = d.j();
        int[] j11 = d.j();
        AbstractC15008c.U(b.f99086a, bArr, i10, j10, j11);
        d.C(j10, j10);
        d.J(j10, j11, j10);
        d.Q(j10, j10);
        d.L(j10);
        d.w(j10, bArr2, i11);
    }
}
