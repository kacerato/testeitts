package E2;

import java.math.BigInteger;
import w2.H;

@e
@v2.c
public final class d {

    public static final long f5375a = 4503599627370495L;

    public static final long f5376b = 9218868437227405312L;

    public static final long f5377c = Long.MIN_VALUE;

    public static final int f5378d = 52;

    public static final int f5379e = 1023;

    public static final long f5380f = 4503599627370496L;

    @v2.d
    public static final long f5381g = 4607182418800017408L;

    public static double a(BigInteger bigInteger) {
        BigInteger abs = bigInteger.abs();
        int bitLength = abs.bitLength();
        int i10 = bitLength - 1;
        if (i10 < 63) {
            return bigInteger.longValue();
        }
        if (i10 > 1023) {
            return bigInteger.signum() * Double.POSITIVE_INFINITY;
        }
        int i11 = bitLength - 54;
        long longValue = abs.shiftRight(i11).longValue();
        long j10 = longValue >> 1;
        long j11 = f5375a & j10;
        if ((longValue & 1) != 0 && ((j10 & 1) != 0 || abs.getLowestSetBit() < i11)) {
            j11++;
        }
        return Double.longBitsToDouble((((bitLength + 1022) << 52) + j11) | (bigInteger.signum() & Long.MIN_VALUE));
    }

    public static double b(double d10) {
        H.d(!Double.isNaN(d10));
        return Math.max(d10, 0.0d);
    }

    public static long c(double d10) {
        H.e(d(d10), "not a normal value");
        int exponent = Math.getExponent(d10);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10) & f5375a;
        return exponent == -1023 ? doubleToRawLongBits << 1 : doubleToRawLongBits | 4503599627370496L;
    }

    public static boolean d(double d10) {
        return Math.getExponent(d10) <= 1023;
    }

    public static boolean e(double d10) {
        return Math.getExponent(d10) >= -1022;
    }

    public static double f(double d10) {
        return -Math.nextUp(-d10);
    }

    public static double g(double d10) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d10) & f5375a) | f5381g);
    }
}
