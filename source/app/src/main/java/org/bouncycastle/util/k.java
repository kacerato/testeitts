package org.bouncycastle.util;

public class k {

    public static final int f102330a = 4;

    public static final int f102331b = 32;

    public static int a(int i10) {
        return Integer.bitCount(i10);
    }

    public static int b(int i10) {
        return Integer.highestOneBit(i10);
    }

    public static int c(int i10) {
        return Integer.lowestOneBit(i10);
    }

    public static int d(int i10) {
        return Integer.numberOfLeadingZeros(i10);
    }

    public static int e(int i10) {
        return Integer.numberOfTrailingZeros(i10);
    }

    public static int f(int i10) {
        return Integer.reverse(i10);
    }

    public static int g(int i10) {
        return Integer.reverseBytes(i10);
    }

    public static int h(int i10, int i11) {
        return Integer.rotateLeft(i10, i11);
    }

    public static int i(int i10, int i11) {
        return Integer.rotateRight(i10, i11);
    }

    public static Integer j(int i10) {
        return Integer.valueOf(i10);
    }
}
