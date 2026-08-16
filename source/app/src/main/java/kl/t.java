package kl;

public class t {
    public static int a(int i10) {
        if (i10 == 0) {
            return 0;
        }
        return 32 - h(i10 - 1);
    }

    public static byte b(byte[] bArr, int i10) {
        return (byte) ((bArr[i10 >>> 3] >>> ((i10 & 7) ^ 7)) & 1);
    }

    public static int c(int i10, int i11) {
        return (i10 >>> (i11 ^ 7)) & 1;
    }

    public static int d(int[] iArr, int i10) {
        return (iArr[i10 >>> 5] >>> ((i10 & 31) ^ 7)) & 1;
    }

    public static int e(int[] iArr, int i10) {
        return d(iArr, i10);
    }

    public static byte f(byte[] bArr, int i10) {
        int i11 = bArr[i10 >>> 2] >>> (((i10 << 1) & 6) ^ 6);
        return (byte) (((i11 & 2) >> 1) | ((i11 & 1) << 1));
    }

    public static int g(int i10) {
        int i11 = i10 & (-8);
        int i12 = ~((-1) << i11);
        int i13 = i10 & 7;
        return i13 != 0 ? i12 ^ (((65280 >>> i13) & 255) << i11) : i12;
    }

    public static int h(int i10) {
        int i11;
        if (i10 == 0) {
            return 32;
        }
        if ((i10 >>> 16) == 0) {
            i10 <<= 16;
            i11 = 17;
        } else {
            i11 = 1;
        }
        if ((i10 >>> 24) == 0) {
            i11 += 8;
            i10 <<= 8;
        }
        if ((i10 >>> 28) == 0) {
            i11 += 4;
            i10 <<= 4;
        }
        if ((i10 >>> 30) == 0) {
            i11 += 2;
            i10 <<= 2;
        }
        return i11 - (i10 >>> 31);
    }

    public static int i(int i10) {
        if (i10 == 0) {
            return 0;
        }
        return ((i10 - 1) / 8) + 1;
    }

    public static int j(byte[] bArr, int i10) {
        byte b10 = bArr[0];
        for (int i11 = 1; i11 < i10; i11++) {
            b10 = (byte) (b10 ^ bArr[i11]);
        }
        return org.bouncycastle.util.k.a(b10 & 255) & 1;
    }

    public static int k(int i10) {
        return org.bouncycastle.util.k.a(i10 & 65535) & 1;
    }

    public static int l(int i10) {
        return org.bouncycastle.util.k.a(i10) & 1;
    }

    public static int m(int i10, int i11, int i12) {
        int i13 = i11 ^ 7;
        return (i10 & (~(1 << i13))) | (i12 << i13);
    }

    public static void n(byte[] bArr, int i10, byte b10) {
        int i11 = i10 >>> 3;
        int i12 = (i10 & 7) ^ 7;
        bArr[i11] = (byte) ((b10 << i12) | (bArr[i11] & (~(1 << i12))));
    }

    public static void o(int[] iArr, int i10, int i11) {
        int i12 = i10 >>> 5;
        int i13 = (i10 & 31) ^ 7;
        iArr[i12] = (i11 << i13) | (iArr[i12] & (~(1 << i13)));
    }

    public static void p(int[] iArr, int i10, int i11) {
        o(iArr, i10, i11);
    }

    public static void q(int[] iArr, int i10) {
        if ((i10 & 31) != 0) {
            int i11 = i10 >>> 5;
            iArr[i11] = g(i10) & iArr[i11];
        }
    }
}
