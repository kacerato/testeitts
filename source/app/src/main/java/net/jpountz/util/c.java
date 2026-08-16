package net.jpountz.util;

import java.nio.ByteOrder;

public enum c {
    ;

    public static void a(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("lengths must be >= 0");
        }
    }

    public static void b(byte[] bArr, int i10) {
        if (i10 < 0 || i10 >= bArr.length) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
    }

    public static void c(byte[] bArr, int i10, int i11) {
        a(i11);
        if (i11 > 0) {
            b(bArr, i10);
            b(bArr, (i10 + i11) - 1);
        }
    }

    public static byte d(byte[] bArr, int i10) {
        return bArr[i10];
    }

    public static int e(byte[] bArr, int i10) {
        return e.NATIVE_BYTE_ORDER == ByteOrder.BIG_ENDIAN ? h(bArr, i10) : i(bArr, i10);
    }

    public static int g(int[] iArr, int i10) {
        return iArr[i10];
    }

    public static int h(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public static int i(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static long j(byte[] bArr, int i10) {
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public static int k(short[] sArr, int i10) {
        return sArr[i10] & 65535;
    }

    public static int m(byte[] bArr, int i10) {
        return ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
    }

    public static void o(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) i11;
    }

    public static void q(int[] iArr, int i10, int i11) {
        iArr[i10] = i11;
    }

    public static void r(short[] sArr, int i10, int i11) {
        sArr[i10] = (short) i11;
    }

    public static void s(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) i11;
        bArr[i10 + 1] = (byte) (i11 >>> 8);
    }
}
