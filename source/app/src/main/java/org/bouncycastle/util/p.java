package org.bouncycastle.util;

public abstract class p {
    public static long A(byte[] bArr, int i10, int i11) {
        return B(bArr, i10, i11) << ((8 - i11) << 3);
    }

    public static long B(byte[] bArr, int i10, int i11) {
        long j10 = bArr[i10] & 255;
        for (int i12 = 1; i12 < i11; i12++) {
            j10 = (j10 << 8) | (bArr[i10 + i12] & 255);
        }
        return j10;
    }

    public static short C(byte[] bArr, int i10) {
        return (short) (((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255));
    }

    public static void D(long j10, byte[] bArr, int i10) {
        h((int) (j10 >>> 32), bArr, i10);
        h((int) (j10 & 4294967295L), bArr, i10 + 4);
    }

    public static void E(long j10, byte[] bArr, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= 0; i12--) {
            bArr[i12 + i10] = (byte) (255 & j10);
            j10 >>>= 8;
        }
    }

    public static void F(long[] jArr, int i10, int i11, byte[] bArr, int i12) {
        for (int i13 = 0; i13 < i11; i13++) {
            D(jArr[i10 + i13], bArr, i12);
            i12 += 8;
        }
    }

    public static void G(long[] jArr, byte[] bArr, int i10) {
        for (long j10 : jArr) {
            D(j10, bArr, i10);
            i10 += 8;
        }
    }

    public static byte[] H(long j10) {
        byte[] bArr = new byte[8];
        D(j10, bArr, 0);
        return bArr;
    }

    public static byte[] I(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        G(jArr, bArr, 0);
        return bArr;
    }

    public static void J(long j10, byte[] bArr, int i10) {
        m((int) (4294967295L & j10), bArr, i10);
        m((int) (j10 >>> 32), bArr, i10 + 4);
    }

    public static void K(long[] jArr, int i10, int i11, byte[] bArr, int i12) {
        for (int i13 = 0; i13 < i11; i13++) {
            J(jArr[i10 + i13], bArr, i12);
            i12 += 8;
        }
    }

    public static void L(long[] jArr, byte[] bArr, int i10) {
        for (long j10 : jArr) {
            J(j10, bArr, i10);
            i10 += 8;
        }
    }

    public static byte[] M(long j10) {
        byte[] bArr = new byte[8];
        J(j10, bArr, 0);
        return bArr;
    }

    public static byte[] N(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        L(jArr, bArr, 0);
        return bArr;
    }

    public static void O(long j10, byte[] bArr, int i10, int i11) {
        int i12 = 56;
        bArr[i10] = (byte) (j10 >>> 56);
        for (int i13 = 1; i13 < i11; i13++) {
            i12 -= 8;
            bArr[i10 + i13] = (byte) (j10 >>> i12);
        }
    }

    public static void P(short s10, byte[] bArr, int i10) {
        bArr[i10] = (byte) (s10 >>> 8);
        bArr[i10 + 1] = (byte) s10;
    }

    public static byte[] Q(short s10) {
        byte[] bArr = new byte[2];
        P(s10, bArr, 0);
        return bArr;
    }

    public static void R(short s10, byte[] bArr, int i10) {
        bArr[i10] = (byte) s10;
        bArr[i10 + 1] = (byte) (s10 >>> 8);
    }

    public static byte[] S(short s10) {
        byte[] bArr = new byte[2];
        R(s10, bArr, 0);
        return bArr;
    }

    public static int a(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | (bArr[i10] << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public static void b(byte[] bArr, int i10, int[] iArr) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            iArr[i11] = a(bArr, i10);
            i10 += 4;
        }
    }

    public static void c(byte[] bArr, int i10, int[] iArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            iArr[i11 + i13] = a(bArr, i10);
            i10 += 4;
        }
    }

    public static long d(byte[] bArr, int i10) {
        return (a(bArr, i10 + 4) & 4294967295L) | ((a(bArr, i10) & 4294967295L) << 32);
    }

    public static void e(byte[] bArr, int i10, long[] jArr) {
        for (int i11 = 0; i11 < jArr.length; i11++) {
            jArr[i11] = d(bArr, i10);
            i10 += 8;
        }
    }

    public static void f(byte[] bArr, int i10, long[] jArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            jArr[i11 + i13] = d(bArr, i10);
            i10 += 8;
        }
    }

    public static short g(byte[] bArr, int i10) {
        return (short) ((bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8));
    }

    public static void h(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) (i10 >>> 24);
        bArr[i11 + 1] = (byte) (i10 >>> 16);
        bArr[i11 + 2] = (byte) (i10 >>> 8);
        bArr[i11 + 3] = (byte) i10;
    }

    public static void i(int[] iArr, int i10, int i11, byte[] bArr, int i12) {
        for (int i13 = 0; i13 < i11; i13++) {
            h(iArr[i10 + i13], bArr, i12);
            i12 += 4;
        }
    }

    public static void j(int[] iArr, byte[] bArr, int i10) {
        for (int i11 : iArr) {
            h(i11, bArr, i10);
            i10 += 4;
        }
    }

    public static byte[] k(int i10) {
        byte[] bArr = new byte[4];
        h(i10, bArr, 0);
        return bArr;
    }

    public static byte[] l(int[] iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        j(iArr, bArr, 0);
        return bArr;
    }

    public static void m(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
        bArr[i11 + 3] = (byte) (i10 >>> 24);
    }

    public static void n(int[] iArr, int i10, int i11, byte[] bArr, int i12) {
        for (int i13 = 0; i13 < i11; i13++) {
            m(iArr[i10 + i13], bArr, i12);
            i12 += 4;
        }
    }

    public static void o(int[] iArr, byte[] bArr, int i10) {
        for (int i11 : iArr) {
            m(i11, bArr, i10);
            i10 += 4;
        }
    }

    public static byte[] p(int i10) {
        byte[] bArr = new byte[4];
        m(i10, bArr, 0);
        return bArr;
    }

    public static byte[] q(int[] iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        o(iArr, bArr, 0);
        return bArr;
    }

    public static int r(byte[] bArr, int i10) {
        return (bArr[i10 + 3] << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static void s(byte[] bArr, int i10, int[] iArr) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            iArr[i11] = r(bArr, i10);
            i10 += 4;
        }
    }

    public static void t(byte[] bArr, int i10, int[] iArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            iArr[i11 + i13] = r(bArr, i10);
            i10 += 4;
        }
    }

    public static int[] u(byte[] bArr, int i10, int i11) {
        int[] iArr = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i12] = r(bArr, i10);
            i10 += 4;
        }
        return iArr;
    }

    public static int v(byte[] bArr, int i10, int i11) {
        return w(bArr, i10, i11) << ((4 - i11) << 3);
    }

    public static int w(byte[] bArr, int i10, int i11) {
        int i12 = bArr[i10] & 255;
        int i13 = 0;
        for (int i14 = 1; i14 < i11; i14++) {
            i13 += 8;
            i12 |= (bArr[i10 + i14] & 255) << i13;
        }
        return i12;
    }

    public static long x(byte[] bArr, int i10) {
        return ((r(bArr, i10 + 4) & 4294967295L) << 32) | (r(bArr, i10) & 4294967295L);
    }

    public static void y(byte[] bArr, int i10, long[] jArr) {
        for (int i11 = 0; i11 < jArr.length; i11++) {
            jArr[i11] = x(bArr, i10);
            i10 += 8;
        }
    }

    public static void z(byte[] bArr, int i10, long[] jArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            jArr[i11 + i13] = x(bArr, i10);
            i10 += 8;
        }
    }
}
