package com.android.tools.r8.internal;

import com.android.tools.r8.dex.C4324y;

public class C7664hu {

    public static final boolean f48733a = true;

    public static int a(C4324y c4324y, long j10, int i10) {
        int numberOfTrailingZeros = ((63 - Long.numberOfTrailingZeros(j10)) / 8) + 1;
        if (!f48733a && (numberOfTrailingZeros <= 0 || numberOfTrailingZeros > i10)) {
            throw new AssertionError();
        }
        long j11 = j10 >> (64 - (numberOfTrailingZeros * 8));
        for (int i11 = 0; i11 < numberOfTrailingZeros; i11++) {
            c4324y.a((byte) j11);
            j11 >>= 8;
        }
        return numberOfTrailingZeros;
    }

    public static float b(com.android.tools.r8.dex.D d10, int i10) {
        return Float.intBitsToFloat((int) (d(d10, i10) << ((4 - i10) * 8)));
    }

    public static long c(com.android.tools.r8.dex.D d10, int i10) {
        if (!f48733a && i10 <= 0) {
            throw new AssertionError();
        }
        long j10 = 0;
        int i11 = 0;
        for (int i12 = 1; i12 < i10; i12++) {
            j10 |= (d10.f35894b.a().get() & 255) << i11;
            i11 += 8;
        }
        return (d10.f35894b.a().get() << i11) | j10;
    }

    public static long d(com.android.tools.r8.dex.D d10, int i10) {
        if (!f48733a && i10 <= 0) {
            throw new AssertionError();
        }
        long j10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            j10 |= (d10.f35894b.a().get() & 255) << i11;
            i11 += 8;
        }
        return j10;
    }

    public static int a(C4324y c4324y, float f10) {
        return a(c4324y, Float.floatToIntBits(f10) << 32, 4);
    }

    public static byte[] a(float f10) {
        long floatToIntBits = Float.floatToIntBits(f10) << 32;
        int numberOfTrailingZeros = ((63 - Long.numberOfTrailingZeros(floatToIntBits)) / 8) + 1;
        long j10 = floatToIntBits >> (64 - (numberOfTrailingZeros * 8));
        byte[] bArr = new byte[numberOfTrailingZeros];
        for (int i10 = 0; i10 < numberOfTrailingZeros; i10++) {
            bArr[i10] = (byte) j10;
            j10 >>= 8;
        }
        if (f48733a || numberOfTrailingZeros <= 4) {
            return bArr;
        }
        throw new AssertionError();
    }

    public static double a(com.android.tools.r8.dex.D d10, int i10) {
        return Double.longBitsToDouble(d(d10, i10) << ((8 - i10) * 8));
    }

    public static int a(C4324y c4324y, double d10) {
        return a(c4324y, Double.doubleToLongBits(d10), 8);
    }

    public static byte[] a(double d10) {
        long doubleToLongBits = Double.doubleToLongBits(d10);
        int numberOfTrailingZeros = ((63 - Long.numberOfTrailingZeros(doubleToLongBits)) / 8) + 1;
        long j10 = doubleToLongBits >> (64 - (numberOfTrailingZeros * 8));
        byte[] bArr = new byte[numberOfTrailingZeros];
        for (int i10 = 0; i10 < numberOfTrailingZeros; i10++) {
            bArr[i10] = (byte) j10;
            j10 >>= 8;
        }
        if (f48733a || numberOfTrailingZeros <= 8) {
            return bArr;
        }
        throw new AssertionError();
    }
}
