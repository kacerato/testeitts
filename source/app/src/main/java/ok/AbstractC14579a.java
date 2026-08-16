package ok;

import java.security.SecureRandom;
import pk.AbstractC15007b;

public abstract class AbstractC14579a {

    public static final int f99071a = 32;

    public static final int f99072b = 32;

    public static final int f99073c = 486662;

    public static final int f99074d = 121666;

    public static class C1893a extends AbstractC14580b {
    }

    public static class b {

        public static final b f99075a = new b();
    }

    public static boolean a(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
        h(bArr, i10, bArr2, i11, bArr3, i12);
        return !org.bouncycastle.util.a.e(bArr3, i12, 32);
    }

    public static int b(byte[] bArr, int i10) {
        return (bArr[i10 + 3] << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static void c(byte[] bArr, int i10, int[] iArr) {
        for (int i11 = 0; i11 < 8; i11++) {
            iArr[i11] = b(bArr, (i11 * 4) + i10);
        }
        iArr[0] = iArr[0] & (-8);
        int i12 = iArr[7] & Integer.MAX_VALUE;
        iArr[7] = i12;
        iArr[7] = i12 | 1073741824;
    }

    public static void d(SecureRandom secureRandom, byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("k");
        }
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & 248);
        byte b10 = (byte) (bArr[31] & Byte.MAX_VALUE);
        bArr[31] = b10;
        bArr[31] = (byte) (b10 | 64);
    }

    public static void e(byte[] bArr, int i10, byte[] bArr2, int i11) {
        i(bArr, i10, bArr2, i11);
    }

    public static void f(int[] iArr, int[] iArr2) {
        int[] k10 = AbstractC14580b.k();
        int[] k11 = AbstractC14580b.k();
        AbstractC14580b.d(iArr, iArr2, k10, k11);
        AbstractC14580b.P(k10, k10);
        AbstractC14580b.P(k11, k11);
        AbstractC14580b.I(k10, k11, iArr);
        AbstractC14580b.R(k10, k11, k10);
        AbstractC14580b.H(k10, f99074d, iArr2);
        AbstractC14580b.a(iArr2, k11, iArr2);
        AbstractC14580b.I(iArr2, k10, iArr2);
    }

    public static void g() {
        AbstractC15007b.S();
    }

    public static void h(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
        int[] iArr = new int[8];
        c(bArr, i10, iArr);
        int[] k10 = AbstractC14580b.k();
        AbstractC14580b.n(bArr2, i11, k10);
        int[] k11 = AbstractC14580b.k();
        AbstractC14580b.j(k10, 0, k11, 0);
        int[] k12 = AbstractC14580b.k();
        k12[0] = 1;
        int[] k13 = AbstractC14580b.k();
        k13[0] = 1;
        int[] k14 = AbstractC14580b.k();
        int[] k15 = AbstractC14580b.k();
        int[] k16 = AbstractC14580b.k();
        int i13 = 254;
        int i14 = 1;
        while (true) {
            AbstractC14580b.d(k13, k14, k15, k13);
            AbstractC14580b.d(k11, k12, k14, k11);
            AbstractC14580b.I(k15, k11, k15);
            AbstractC14580b.I(k13, k14, k13);
            AbstractC14580b.P(k14, k14);
            AbstractC14580b.P(k11, k11);
            AbstractC14580b.R(k14, k11, k16);
            AbstractC14580b.H(k16, f99074d, k12);
            AbstractC14580b.a(k12, k11, k12);
            AbstractC14580b.I(k12, k16, k12);
            AbstractC14580b.I(k11, k14, k11);
            AbstractC14580b.d(k15, k13, k13, k14);
            AbstractC14580b.P(k13, k13);
            AbstractC14580b.P(k14, k14);
            AbstractC14580b.I(k14, k10, k14);
            i13--;
            int i15 = (iArr[i13 >>> 5] >>> (i13 & 31)) & 1;
            int i16 = i14 ^ i15;
            AbstractC14580b.m(i16, k11, k13);
            AbstractC14580b.m(i16, k12, k14);
            if (i13 < 3) {
                break;
            } else {
                i14 = i15;
            }
        }
        for (int i17 = 0; i17 < 3; i17++) {
            f(k11, k12);
        }
        AbstractC14580b.B(k12, k12);
        AbstractC14580b.I(k11, k12, k11);
        AbstractC14580b.K(k11);
        AbstractC14580b.w(k11, bArr3, i12);
    }

    public static void i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int[] k10 = AbstractC14580b.k();
        int[] k11 = AbstractC14580b.k();
        AbstractC15007b.X(b.f99075a, bArr, i10, k10, k11);
        AbstractC14580b.d(k11, k10, k10, k11);
        AbstractC14580b.B(k11, k11);
        AbstractC14580b.I(k10, k11, k10);
        AbstractC14580b.K(k10);
        AbstractC14580b.w(k10, bArr2, i11);
    }
}
