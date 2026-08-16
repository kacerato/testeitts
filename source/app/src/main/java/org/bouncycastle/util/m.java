package org.bouncycastle.util;

public class m {

    public static final int f102332a = 8;

    public static final int f102333b = 64;

    public static long a(long j10) {
        return Long.highestOneBit(j10);
    }

    public static long b(long j10) {
        return Long.lowestOneBit(j10);
    }

    public static int c(long j10) {
        return Long.numberOfLeadingZeros(j10);
    }

    public static int d(long j10) {
        return Long.numberOfTrailingZeros(j10);
    }

    public static long e(long j10) {
        return Long.reverse(j10);
    }

    public static long f(long j10) {
        return Long.reverseBytes(j10);
    }

    public static long g(long j10, int i10) {
        return Long.rotateLeft(j10, i10);
    }

    public static long h(long j10, int i10) {
        return Long.rotateRight(j10, i10);
    }

    public static Long i(long j10) {
        return Long.valueOf(j10);
    }
}
