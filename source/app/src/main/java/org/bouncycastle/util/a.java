package org.bouncycastle.util;

import java.math.BigInteger;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class a {

    public static class C1929a<T> implements Iterator<T> {

        public final T[] f102313b;

        public int f102314c = 0;

        public C1929a(T[] tArr) {
            this.f102313b = tArr;
        }

        @Override
        public boolean hasNext() {
            return this.f102314c < this.f102313b.length;
        }

        @Override
        public T next() {
            int i10 = this.f102314c;
            T[] tArr = this.f102313b;
            if (i10 != tArr.length) {
                this.f102314c = i10 + 1;
                return tArr[i10];
            }
            throw new NoSuchElementException("Out of elements: " + this.f102314c);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Cannot remove element from an Array.");
        }
    }

    public static int A(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return 0;
        }
        if (bArr == null) {
            return -1;
        }
        if (bArr2 == null) {
            return 1;
        }
        int min = Math.min(bArr.length, bArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            int i11 = bArr[i10] & 255;
            int i12 = bArr2[i10] & 255;
            if (i11 < i12) {
                return -1;
            }
            if (i11 > i12) {
                return 1;
            }
        }
        if (bArr.length < bArr2.length) {
            return -1;
        }
        return bArr.length > bArr2.length ? 1 : 0;
    }

    public static int A0(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        int length = objArr.length;
        int i10 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            i10 = (i10 * 257) ^ o.b(objArr[length]);
        }
    }

    public static byte[] B(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return p(bArr2);
        }
        if (bArr2 == null) {
            return p(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static int B0(short[] sArr) {
        if (sArr == null) {
            return 0;
        }
        int length = sArr.length;
        int i10 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            i10 = (i10 * 257) ^ (sArr[length] & 255);
        }
    }

    public static byte[] C(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            return B(bArr2, bArr3);
        }
        if (bArr2 == null) {
            return B(bArr, bArr3);
        }
        if (bArr3 == null) {
            return B(bArr, bArr2);
        }
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        int length = bArr.length;
        System.arraycopy(bArr2, 0, bArr4, length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, length + bArr2.length, bArr3.length);
        return bArr4;
    }

    public static int C0(int[][] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 != iArr.length; i11++) {
            i10 = (i10 * 257) + w0(iArr[i11]);
        }
        return i10;
    }

    public static byte[] D(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr == null) {
            return C(bArr2, bArr3, bArr4);
        }
        if (bArr2 == null) {
            return C(bArr, bArr3, bArr4);
        }
        if (bArr3 == null) {
            return C(bArr, bArr2, bArr4);
        }
        if (bArr4 == null) {
            return C(bArr, bArr2, bArr3);
        }
        byte[] bArr5 = new byte[bArr.length + bArr2.length + bArr3.length + bArr4.length];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        int length = bArr.length;
        System.arraycopy(bArr2, 0, bArr5, length, bArr2.length);
        int length2 = length + bArr2.length;
        System.arraycopy(bArr3, 0, bArr5, length2, bArr3.length);
        System.arraycopy(bArr4, 0, bArr5, length2 + bArr3.length, bArr4.length);
        return bArr5;
    }

    public static int D0(short[][] sArr) {
        int i10 = 0;
        for (int i11 = 0; i11 != sArr.length; i11++) {
            i10 = (i10 * 257) + B0(sArr[i11]);
        }
        return i10;
    }

    public static byte[] E(byte[][] bArr) {
        int i10 = 0;
        for (int i11 = 0; i11 != bArr.length; i11++) {
            i10 += bArr[i11].length;
        }
        byte[] bArr2 = new byte[i10];
        int i12 = 0;
        for (int i13 = 0; i13 != bArr.length; i13++) {
            byte[] bArr3 = bArr[i13];
            System.arraycopy(bArr3, 0, bArr2, i12, bArr3.length);
            i12 += bArr[i13].length;
        }
        return bArr2;
    }

    public static int E0(short[][][] sArr) {
        int i10 = 0;
        for (int i11 = 0; i11 != sArr.length; i11++) {
            i10 = (i10 * 257) + D0(sArr[i11]);
        }
        return i10;
    }

    public static int[] F(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return s(iArr2);
        }
        if (iArr2 == null) {
            return s(iArr);
        }
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }

    public static boolean F0(Object[] objArr) {
        if (objArr == null) {
            return true;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                return true;
            }
        }
        return false;
    }

    public static short[] G(short[] sArr, short[] sArr2) {
        if (sArr == null) {
            return w(sArr2);
        }
        if (sArr2 == null) {
            return w(sArr);
        }
        short[] sArr3 = new short[sArr.length + sArr2.length];
        System.arraycopy(sArr, 0, sArr3, 0, sArr.length);
        System.arraycopy(sArr2, 0, sArr3, sArr.length, sArr2.length);
        return sArr3;
    }

    public static boolean G0(byte[] bArr) {
        return bArr == null || bArr.length < 1;
    }

    public static boolean H(int i10, byte[] bArr, int i11, byte[] bArr2, int i12) {
        if (bArr == null) {
            throw new NullPointerException("'a' cannot be null");
        }
        if (bArr2 == null) {
            throw new NullPointerException("'b' cannot be null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("'len' cannot be negative");
        }
        if (i11 > bArr.length - i10) {
            throw new IndexOutOfBoundsException("'aOff' value invalid for specified length");
        }
        if (i12 > bArr2.length - i10) {
            throw new IndexOutOfBoundsException("'bOff' value invalid for specified length");
        }
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            i13 |= bArr[i11 + i14] ^ bArr2[i12 + i14];
        }
        return i13 == 0;
    }

    public static boolean H0(int[] iArr) {
        return iArr == null || iArr.length < 1;
    }

    public static boolean I(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            return false;
        }
        if (bArr == bArr2) {
            return true;
        }
        int length = bArr.length < bArr2.length ? bArr.length : bArr2.length;
        int length2 = bArr.length ^ bArr2.length;
        for (int i10 = 0; i10 != length; i10++) {
            length2 |= bArr[i10] ^ bArr2[i10];
        }
        while (length < bArr2.length) {
            byte b10 = bArr2[length];
            length2 |= b10 ^ (~b10);
            length++;
        }
        return length2 == 0;
    }

    public static boolean I0(Object[] objArr) {
        return objArr == null || objArr.length < 1;
    }

    public static boolean J(char[] cArr, char[] cArr2) {
        if (cArr == null || cArr2 == null) {
            return false;
        }
        if (cArr == cArr2) {
            return true;
        }
        int min = Math.min(cArr.length, cArr2.length);
        int length = cArr.length ^ cArr2.length;
        for (int i10 = 0; i10 != min; i10++) {
            length |= cArr[i10] ^ cArr2[i10];
        }
        while (min < cArr2.length) {
            char c10 = cArr2[min];
            length |= ((byte) (~c10)) ^ ((byte) c10);
            min++;
        }
        return length == 0;
    }

    public static byte[] J0(byte[] bArr, byte b10) {
        if (bArr == null) {
            return new byte[]{b10};
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        System.arraycopy(bArr, 0, bArr2, 1, length);
        bArr2[0] = b10;
        return bArr2;
    }

    public static boolean K(byte[] bArr, byte b10) {
        for (byte b11 : bArr) {
            if (b11 == b10) {
                return true;
            }
        }
        return false;
    }

    public static int[] K0(int[] iArr, int i10) {
        if (iArr == null) {
            return new int[]{i10};
        }
        int length = iArr.length;
        int[] iArr2 = new int[length + 1];
        System.arraycopy(iArr, 0, iArr2, 1, length);
        iArr2[0] = i10;
        return iArr2;
    }

    public static boolean L(char[] cArr, char c10) {
        for (char c11 : cArr) {
            if (c11 == c10) {
                return true;
            }
        }
        return false;
    }

    public static short[] L0(short[] sArr, short s10) {
        if (sArr == null) {
            return new short[]{s10};
        }
        int length = sArr.length;
        short[] sArr2 = new short[length + 1];
        System.arraycopy(sArr, 0, sArr2, 1, length);
        sArr2[0] = s10;
        return sArr2;
    }

    public static boolean M(int[] iArr, int i10) {
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static void M0(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - 1;
        for (int i10 = 0; i10 <= length; i10++) {
            bArr2[i10] = bArr[length - i10];
        }
    }

    public static boolean N(long[] jArr, long j10) {
        for (long j11 : jArr) {
            if (j11 == j10) {
                return true;
            }
        }
        return false;
    }

    public static byte[] N0(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        int i10 = 0;
        while (true) {
            length--;
            if (length < 0) {
                return bArr2;
            }
            bArr2[length] = bArr[i10];
            i10++;
        }
    }

    public static boolean O(short[] sArr, short s10) {
        for (short s11 : sArr) {
            if (s11 == s10) {
                return true;
            }
        }
        return false;
    }

    public static int[] O0(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i10 = 0;
        while (true) {
            length--;
            if (length < 0) {
                return iArr2;
            }
            iArr2[length] = iArr[i10];
            i10++;
        }
    }

    public static boolean P(boolean[] zArr, boolean z10) {
        for (boolean z11 : zArr) {
            if (z11 == z10) {
                return true;
            }
        }
        return false;
    }

    public static void P0(byte[] bArr, int i10, int i11) {
        int i12 = (i11 + i10) - 1;
        while (i10 < i12) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[i12];
            bArr[i12] = b10;
            i12--;
            i10++;
        }
    }

    public static byte[] Q(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i10));
        return bArr2;
    }

    public static byte[] Q0(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length - 1;
        for (int i10 = 0; i10 < length; i10++) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[length];
            bArr[length] = b10;
            length--;
        }
        return bArr;
    }

    public static char[] R(char[] cArr, int i10) {
        char[] cArr2 = new char[i10];
        System.arraycopy(cArr, 0, cArr2, 0, Math.min(cArr.length, i10));
        return cArr2;
    }

    public static int[] R0(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length - 1;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = iArr[i10];
            iArr[i10] = iArr[length];
            iArr[length] = i11;
            length--;
        }
        return iArr;
    }

    public static int[] S(int[] iArr, int i10) {
        int[] iArr2 = new int[i10];
        System.arraycopy(iArr, 0, iArr2, 0, Math.min(iArr.length, i10));
        return iArr2;
    }

    public static short[] S0(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        int length = sArr.length - 1;
        for (int i10 = 0; i10 < length; i10++) {
            short s10 = sArr[i10];
            sArr[i10] = sArr[length];
            sArr[length] = s10;
            length--;
        }
        return sArr;
    }

    public static long[] T(long[] jArr, int i10) {
        long[] jArr2 = new long[i10];
        System.arraycopy(jArr, 0, jArr2, 0, Math.min(jArr.length, i10));
        return jArr2;
    }

    public static BigInteger[] U(BigInteger[] bigIntegerArr, int i10) {
        BigInteger[] bigIntegerArr2 = new BigInteger[i10];
        System.arraycopy(bigIntegerArr, 0, bigIntegerArr2, 0, Math.min(bigIntegerArr.length, i10));
        return bigIntegerArr2;
    }

    public static short[] V(short[] sArr, int i10) {
        short[] sArr2 = new short[i10];
        System.arraycopy(sArr, 0, sArr2, 0, Math.min(sArr.length, i10));
        return sArr2;
    }

    public static boolean[] W(boolean[] zArr, int i10) {
        boolean[] zArr2 = new boolean[i10];
        System.arraycopy(zArr, 0, zArr2, 0, Math.min(zArr.length, i10));
        return zArr2;
    }

    public static byte[] X(byte[] bArr, int i10, int i11) {
        int s02 = s0(i10, i11);
        byte[] bArr2 = new byte[s02];
        System.arraycopy(bArr, i10, bArr2, 0, Math.min(bArr.length - i10, s02));
        return bArr2;
    }

    public static char[] Y(char[] cArr, int i10, int i11) {
        int s02 = s0(i10, i11);
        char[] cArr2 = new char[s02];
        System.arraycopy(cArr, i10, cArr2, 0, Math.min(cArr.length - i10, s02));
        return cArr2;
    }

    public static int[] Z(int[] iArr, int i10, int i11) {
        int s02 = s0(i10, i11);
        int[] iArr2 = new int[s02];
        System.arraycopy(iArr, i10, iArr2, 0, Math.min(iArr.length - i10, s02));
        return iArr2;
    }

    public static byte[] a(byte[] bArr, byte b10) {
        if (bArr == null) {
            return new byte[]{b10};
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[1 + length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        bArr2[length] = b10;
        return bArr2;
    }

    public static long[] a0(long[] jArr, int i10, int i11) {
        int s02 = s0(i10, i11);
        long[] jArr2 = new long[s02];
        System.arraycopy(jArr, i10, jArr2, 0, Math.min(jArr.length - i10, s02));
        return jArr2;
    }

    public static int[] b(int[] iArr, int i10) {
        if (iArr == null) {
            return new int[]{i10};
        }
        int length = iArr.length;
        int[] iArr2 = new int[length + 1];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        iArr2[length] = i10;
        return iArr2;
    }

    public static BigInteger[] b0(BigInteger[] bigIntegerArr, int i10, int i11) {
        int s02 = s0(i10, i11);
        BigInteger[] bigIntegerArr2 = new BigInteger[s02];
        System.arraycopy(bigIntegerArr, i10, bigIntegerArr2, 0, Math.min(bigIntegerArr.length - i10, s02));
        return bigIntegerArr2;
    }

    public static String[] c(String[] strArr, String str) {
        if (strArr == null) {
            return new String[]{str};
        }
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, length);
        strArr2[length] = str;
        return strArr2;
    }

    public static short[] c0(short[] sArr, int i10, int i11) {
        int s02 = s0(i10, i11);
        short[] sArr2 = new short[s02];
        System.arraycopy(sArr, i10, sArr2, 0, Math.min(sArr.length - i10, s02));
        return sArr2;
    }

    public static short[] d(short[] sArr, short s10) {
        if (sArr == null) {
            return new short[]{s10};
        }
        int length = sArr.length;
        short[] sArr2 = new short[1 + length];
        System.arraycopy(sArr, 0, sArr2, 0, length);
        sArr2[length] = s10;
        return sArr2;
    }

    public static boolean[] d0(boolean[] zArr, int i10, int i11) {
        int s02 = s0(i10, i11);
        boolean[] zArr2 = new boolean[s02];
        System.arraycopy(zArr, i10, zArr2, 0, Math.min(zArr.length - i10, s02));
        return zArr2;
    }

    public static boolean e(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            i12 |= bArr[i10 + i13];
        }
        return i12 == 0;
    }

    public static void e0(byte[] bArr, byte b10) {
        Arrays.fill(bArr, b10);
    }

    public static boolean f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int i14 = i11 - i10;
        if (i14 != i13 - i12) {
            return false;
        }
        for (int i15 = 0; i15 < i14; i15++) {
            if (bArr[i10 + i15] != bArr2[i12 + i15]) {
                return false;
            }
        }
        return true;
    }

    public static void f0(byte[] bArr, int i10, int i11, byte b10) {
        Arrays.fill(bArr, i10, i11, b10);
    }

    public static boolean g(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    public static void g0(char[] cArr, char c10) {
        Arrays.fill(cArr, c10);
    }

    public static boolean h(char[] cArr, char[] cArr2) {
        return Arrays.equals(cArr, cArr2);
    }

    public static void h0(char[] cArr, int i10, int i11, char c10) {
        Arrays.fill(cArr, i10, i11, c10);
    }

    public static boolean i(int[] iArr, int[] iArr2) {
        return Arrays.equals(iArr, iArr2);
    }

    public static void i0(int[] iArr, int i10) {
        Arrays.fill(iArr, i10);
    }

    public static boolean j(long[] jArr, long[] jArr2) {
        return Arrays.equals(jArr, jArr2);
    }

    public static void j0(int[] iArr, int i10, int i11, int i12) {
        Arrays.fill(iArr, i10, i11, i12);
    }

    public static boolean k(Object[] objArr, Object[] objArr2) {
        return Arrays.equals(objArr, objArr2);
    }

    public static void k0(long[] jArr, int i10, int i11, long j10) {
        Arrays.fill(jArr, i10, i11, j10);
    }

    public static boolean l(short[] sArr, short[] sArr2) {
        return Arrays.equals(sArr, sArr2);
    }

    public static void l0(long[] jArr, long j10) {
        Arrays.fill(jArr, j10);
    }

    public static boolean m(boolean[] zArr, boolean[] zArr2) {
        return Arrays.equals(zArr, zArr2);
    }

    public static void m0(Object[] objArr, int i10, int i11, Object obj) {
        Arrays.fill(objArr, i10, i11, obj);
    }

    public static void n(byte[] bArr) {
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    public static void n0(Object[] objArr, Object obj) {
        Arrays.fill(objArr, obj);
    }

    public static void o(int[] iArr) {
        if (iArr != null) {
            Arrays.fill(iArr, 0);
        }
    }

    public static void o0(short[] sArr, int i10, int i11, short s10) {
        Arrays.fill(sArr, i10, i11, s10);
    }

    public static byte[] p(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static void p0(short[] sArr, short s10) {
        Arrays.fill(sArr, s10);
    }

    public static byte[] q(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return null;
        }
        if (bArr2 == null || bArr2.length != bArr.length) {
            return p(bArr);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        return bArr2;
    }

    public static void q0(boolean[] zArr, int i10, int i11, boolean z10) {
        Arrays.fill(zArr, i10, i11, z10);
    }

    public static char[] r(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return (char[]) cArr.clone();
    }

    public static void r0(boolean[] zArr, boolean z10) {
        Arrays.fill(zArr, z10);
    }

    public static int[] s(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    public static int s0(int i10, int i11) {
        int i12 = i11 - i10;
        if (i12 >= 0) {
            return i12;
        }
        throw new IllegalArgumentException(i10 + " > " + i11);
    }

    public static long[] t(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public static int t0(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length;
        int i10 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            i10 = (i10 * 257) ^ bArr[length];
        }
    }

    public static long[] u(long[] jArr, long[] jArr2) {
        if (jArr == null) {
            return null;
        }
        if (jArr2 == null || jArr2.length != jArr.length) {
            return t(jArr);
        }
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        return jArr2;
    }

    public static int u0(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            return 0;
        }
        int i12 = i11 + 1;
        while (true) {
            i11--;
            if (i11 < 0) {
                return i12;
            }
            i12 = (i12 * 257) ^ bArr[i10 + i11];
        }
    }

    public static BigInteger[] v(BigInteger[] bigIntegerArr) {
        if (bigIntegerArr == null) {
            return null;
        }
        return (BigInteger[]) bigIntegerArr.clone();
    }

    public static int v0(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i10 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            i10 = (i10 * 257) ^ cArr[length];
        }
    }

    public static short[] w(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    public static int w0(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int length = iArr.length;
        int i10 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            i10 = (i10 * 257) ^ iArr[length];
        }
    }

    public static boolean[] x(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        return (boolean[]) zArr.clone();
    }

    public static int x0(int[] iArr, int i10, int i11) {
        if (iArr == null) {
            return 0;
        }
        int i12 = i11 + 1;
        while (true) {
            i11--;
            if (i11 < 0) {
                return i12;
            }
            i12 = (i12 * 257) ^ iArr[i10 + i11];
        }
    }

    public static byte[][] y(byte[][] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[][] bArr2 = new byte[length];
        for (int i10 = 0; i10 != length; i10++) {
            bArr2[i10] = p(bArr[i10]);
        }
        return bArr2;
    }

    public static int y0(long[] jArr) {
        if (jArr == null) {
            return 0;
        }
        int length = jArr.length;
        int i10 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            long j10 = jArr[length];
            i10 = (((i10 * 257) ^ ((int) j10)) * 257) ^ ((int) (j10 >>> 32));
        }
    }

    public static byte[][][] z(byte[][][] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[][][] bArr2 = new byte[length][];
        for (int i10 = 0; i10 != length; i10++) {
            bArr2[i10] = y(bArr[i10]);
        }
        return bArr2;
    }

    public static int z0(long[] jArr, int i10, int i11) {
        if (jArr == null) {
            return 0;
        }
        int i12 = i11 + 1;
        while (true) {
            i11--;
            if (i11 < 0) {
                return i12;
            }
            long j10 = jArr[i10 + i11];
            i12 = (((i12 * 257) ^ ((int) j10)) * 257) ^ ((int) (j10 >>> 32));
        }
    }
}
