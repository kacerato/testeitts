package java.lang;

import E2.d;
import android.bluetooth.le.AdvertisingSetParameters;
import android.view.KeyEvent;
import java.math.BigDecimal;
import java.util.Random;
import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Math.class
 */
public final class Math {

    public static final double f92786E = 2.718281828459045d;
    public static final double PI = 3.141592653589793d;
    public static final double TAU = 6.283185307179586d;
    private static final double DEGREES_TO_RADIANS = 0.017453292519943295d;
    private static final double RADIANS_TO_DEGREES = 57.29577951308232d;
    private static final long negativeZeroFloatBits;
    private static final long negativeZeroDoubleBits;
    private static final double F_UP = 8.98846567431158E307d;
    private static final double F_DOWN = 1.1125369292536007E-308d;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !Math.class.desiredAssertionStatus();
        negativeZeroFloatBits = Float.floatToRawIntBits(-0.0f);
        negativeZeroDoubleBits = Double.doubleToRawLongBits(-0.0d);
    }

    private Math() {
    }

    @IntrinsicCandidate
    public static double sin(double a10) {
        return StrictMath.sin(a10);
    }

    @IntrinsicCandidate
    public static double cos(double a10) {
        return StrictMath.cos(a10);
    }

    @IntrinsicCandidate
    public static double tan(double a10) {
        return StrictMath.tan(a10);
    }

    public static double asin(double a10) {
        return StrictMath.asin(a10);
    }

    public static double acos(double a10) {
        return StrictMath.acos(a10);
    }

    public static double atan(double a10) {
        return StrictMath.atan(a10);
    }

    public static double toRadians(double angdeg) {
        return angdeg * 0.017453292519943295d;
    }

    public static double toDegrees(double angrad) {
        return angrad * 57.29577951308232d;
    }

    @IntrinsicCandidate
    public static double exp(double a10) {
        return StrictMath.exp(a10);
    }

    @IntrinsicCandidate
    public static double log(double a10) {
        return StrictMath.log(a10);
    }

    @IntrinsicCandidate
    public static double log10(double a10) {
        return StrictMath.log10(a10);
    }

    @IntrinsicCandidate
    public static double sqrt(double a10) {
        return StrictMath.sqrt(a10);
    }

    @IntrinsicCandidate
    public static double cbrt(double a10) {
        return StrictMath.cbrt(a10);
    }

    public static double IEEEremainder(double f12, double f22) {
        return StrictMath.IEEEremainder(f12, f22);
    }

    @IntrinsicCandidate
    public static double ceil(double a10) {
        return StrictMath.ceil(a10);
    }

    @IntrinsicCandidate
    public static double floor(double a10) {
        return StrictMath.floor(a10);
    }

    @IntrinsicCandidate
    public static double rint(double a10) {
        return StrictMath.rint(a10);
    }

    @IntrinsicCandidate
    public static double atan2(double y10, double x10) {
        return StrictMath.atan2(y10, x10);
    }

    @IntrinsicCandidate
    public static double pow(double a10, double b10) {
        return StrictMath.pow(a10, b10);
    }

    @IntrinsicCandidate
    public static int round(float a10) {
        int intBits = Float.floatToRawIntBits(a10);
        int biasedExp = (intBits & 2139095040) >> 23;
        int shift = 149 - biasedExp;
        if ((shift & (-32)) == 0) {
            int r10 = (intBits & 8388607) | 8388608;
            if (intBits < 0) {
                r10 = -r10;
            }
            return ((r10 >> shift) + 1) >> 1;
        }
        return (int) a10;
    }

    @IntrinsicCandidate
    public static long round(double a10) {
        long longBits = Double.doubleToRawLongBits(a10);
        long biasedExp = (longBits & d.f5376b) >> 52;
        long shift = 1074 - biasedExp;
        if ((shift & (-64)) == 0) {
            long r10 = (longBits & d.f5375a) | 4503599627370496L;
            if (longBits < 0) {
                r10 = -r10;
            }
            return ((r10 >> ((int) shift)) + 1) >> 1;
        }
        return (long) a10;
    }

    private static final class RandomNumberGeneratorHolder {
        static final Random randomNumberGenerator = new Random();

        private RandomNumberGeneratorHolder() {
        }
    }

    public static double random() {
        return RandomNumberGeneratorHolder.randomNumberGenerator.nextDouble();
    }

    @IntrinsicCandidate
    public static int addExact(int x10, int y10) {
        int r10 = x10 + y10;
        if (((x10 ^ r10) & (y10 ^ r10)) < 0) {
            throw new ArithmeticException("integer overflow");
        }
        return r10;
    }

    @IntrinsicCandidate
    public static long addExact(long x10, long y10) {
        long r10 = x10 + y10;
        if (((x10 ^ r10) & (y10 ^ r10)) < 0) {
            throw new ArithmeticException("long overflow");
        }
        return r10;
    }

    @IntrinsicCandidate
    public static int subtractExact(int x10, int y10) {
        int r10 = x10 - y10;
        if (((x10 ^ y10) & (x10 ^ r10)) < 0) {
            throw new ArithmeticException("integer overflow");
        }
        return r10;
    }

    @IntrinsicCandidate
    public static long subtractExact(long x10, long y10) {
        long r10 = x10 - y10;
        if (((x10 ^ y10) & (x10 ^ r10)) < 0) {
            throw new ArithmeticException("long overflow");
        }
        return r10;
    }

    @IntrinsicCandidate
    public static int multiplyExact(int x10, int y10) {
        long r10 = x10 * y10;
        if (((int) r10) != r10) {
            throw new ArithmeticException("integer overflow");
        }
        return (int) r10;
    }

    public static long multiplyExact(long x10, int y10) {
        return multiplyExact(x10, y10);
    }

    @IntrinsicCandidate
    public static long multiplyExact(long x10, long y10) {
        long r10 = x10 * y10;
        long ax = abs(x10);
        long ay = abs(y10);
        if (((ax | ay) >>> 31) != 0 && ((y10 != 0 && r10 / y10 != x10) || (x10 == Long.MIN_VALUE && y10 == -1))) {
            throw new ArithmeticException("long overflow");
        }
        return r10;
    }

    public static int divideExact(int x10, int y10) {
        int q10 = x10 / y10;
        if ((x10 & y10 & q10) >= 0) {
            return q10;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long divideExact(long x10, long y10) {
        long q10 = x10 / y10;
        if ((x10 & y10 & q10) >= 0) {
            return q10;
        }
        throw new ArithmeticException("long overflow");
    }

    public static int floorDivExact(int x10, int y10) {
        int q10 = x10 / y10;
        if ((x10 & y10 & q10) >= 0) {
            if ((x10 ^ y10) < 0 && q10 * y10 != x10) {
                return q10 - 1;
            }
            return q10;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long floorDivExact(long x10, long y10) {
        long q10 = x10 / y10;
        if ((x10 & y10 & q10) < 0) {
            throw new ArithmeticException("long overflow");
        }
        if ((x10 ^ y10) < 0 && q10 * y10 != x10) {
            return q10 - 1;
        }
        return q10;
    }

    public static int ceilDivExact(int x10, int y10) {
        int q10 = x10 / y10;
        if ((x10 & y10 & q10) >= 0) {
            if ((x10 ^ y10) >= 0 && q10 * y10 != x10) {
                return q10 + 1;
            }
            return q10;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long ceilDivExact(long x10, long y10) {
        long q10 = x10 / y10;
        if ((x10 & y10 & q10) < 0) {
            throw new ArithmeticException("long overflow");
        }
        if ((x10 ^ y10) >= 0 && q10 * y10 != x10) {
            return q10 + 1;
        }
        return q10;
    }

    @IntrinsicCandidate
    public static int incrementExact(int a10) {
        if (a10 == Integer.MAX_VALUE) {
            throw new ArithmeticException("integer overflow");
        }
        return a10 + 1;
    }

    @IntrinsicCandidate
    public static long incrementExact(long a10) {
        if (a10 == Long.MAX_VALUE) {
            throw new ArithmeticException("long overflow");
        }
        return a10 + 1;
    }

    @IntrinsicCandidate
    public static int decrementExact(int a10) {
        if (a10 == Integer.MIN_VALUE) {
            throw new ArithmeticException("integer overflow");
        }
        return a10 - 1;
    }

    @IntrinsicCandidate
    public static long decrementExact(long a10) {
        if (a10 == Long.MIN_VALUE) {
            throw new ArithmeticException("long overflow");
        }
        return a10 - 1;
    }

    @IntrinsicCandidate
    public static int negateExact(int a10) {
        if (a10 == Integer.MIN_VALUE) {
            throw new ArithmeticException("integer overflow");
        }
        return -a10;
    }

    @IntrinsicCandidate
    public static long negateExact(long a10) {
        if (a10 == Long.MIN_VALUE) {
            throw new ArithmeticException("long overflow");
        }
        return -a10;
    }

    public static int toIntExact(long value) {
        if (((int) value) != value) {
            throw new ArithmeticException("integer overflow");
        }
        return (int) value;
    }

    public static long multiplyFull(int x10, int y10) {
        return x10 * y10;
    }

    @IntrinsicCandidate
    public static long multiplyHigh(long x10, long y10) {
        long x12 = x10 >> 32;
        long x22 = x10 & 4294967295L;
        long y12 = y10 >> 32;
        long y22 = y10 & 4294967295L;
        long z22 = x22 * y22;
        long t10 = (x12 * y22) + (z22 >>> 32);
        long z12 = t10 & 4294967295L;
        long z02 = t10 >> 32;
        return (x12 * y12) + z02 + ((z12 + (x22 * y12)) >> 32);
    }

    @IntrinsicCandidate
    public static long unsignedMultiplyHigh(long x10, long y10) {
        long result = multiplyHigh(x10, y10);
        return result + (y10 & (x10 >> 63)) + (x10 & (y10 >> 63));
    }

    public static int floorDiv(int x10, int y10) {
        int q10 = x10 / y10;
        if ((x10 ^ y10) < 0 && q10 * y10 != x10) {
            return q10 - 1;
        }
        return q10;
    }

    public static long floorDiv(long x10, int y10) {
        return floorDiv(x10, y10);
    }

    public static long floorDiv(long x10, long y10) {
        long q10 = x10 / y10;
        if ((x10 ^ y10) < 0 && q10 * y10 != x10) {
            return q10 - 1;
        }
        return q10;
    }

    public static int floorMod(int x10, int y10) {
        int r10 = x10 % y10;
        if ((x10 ^ y10) < 0 && r10 != 0) {
            return r10 + y10;
        }
        return r10;
    }

    public static int floorMod(long x10, int y10) {
        return (int) floorMod(x10, y10);
    }

    public static long floorMod(long x10, long y10) {
        long r10 = x10 % y10;
        if ((x10 ^ y10) < 0 && r10 != 0) {
            return r10 + y10;
        }
        return r10;
    }

    public static int ceilDiv(int x10, int y10) {
        int q10 = x10 / y10;
        if ((x10 ^ y10) >= 0 && q10 * y10 != x10) {
            return q10 + 1;
        }
        return q10;
    }

    public static long ceilDiv(long x10, int y10) {
        return ceilDiv(x10, y10);
    }

    public static long ceilDiv(long x10, long y10) {
        long q10 = x10 / y10;
        if ((x10 ^ y10) >= 0 && q10 * y10 != x10) {
            return q10 + 1;
        }
        return q10;
    }

    public static int ceilMod(int x10, int y10) {
        int r10 = x10 % y10;
        if ((x10 ^ y10) >= 0 && r10 != 0) {
            return r10 - y10;
        }
        return r10;
    }

    public static int ceilMod(long x10, int y10) {
        return (int) ceilMod(x10, y10);
    }

    public static long ceilMod(long x10, long y10) {
        long r10 = x10 % y10;
        if ((x10 ^ y10) >= 0 && r10 != 0) {
            return r10 - y10;
        }
        return r10;
    }

    @IntrinsicCandidate
    public static int abs(int a10) {
        return a10 < 0 ? -a10 : a10;
    }

    public static int absExact(int a10) {
        if (a10 == Integer.MIN_VALUE) {
            throw new ArithmeticException("Overflow to represent absolute value of Integer.MIN_VALUE");
        }
        return abs(a10);
    }

    @IntrinsicCandidate
    public static long abs(long a10) {
        return a10 < 0 ? -a10 : a10;
    }

    public static long absExact(long a10) {
        if (a10 == Long.MIN_VALUE) {
            throw new ArithmeticException("Overflow to represent absolute value of Long.MIN_VALUE");
        }
        return abs(a10);
    }

    @IntrinsicCandidate
    public static float abs(float a10) {
        return Float.intBitsToFloat(Float.floatToRawIntBits(a10) & Integer.MAX_VALUE);
    }

    @IntrinsicCandidate
    public static double abs(double a10) {
        return Double.longBitsToDouble(Double.doubleToRawLongBits(a10) & Long.MAX_VALUE);
    }

    @IntrinsicCandidate
    public static int max(int a10, int b10) {
        return a10 >= b10 ? a10 : b10;
    }

    @IntrinsicCandidate
    public static long max(long a10, long b10) {
        return a10 >= b10 ? a10 : b10;
    }

    @IntrinsicCandidate
    public static float max(float a10, float b10) {
        if (a10 != a10) {
            return a10;
        }
        if (a10 == 0.0f && b10 == 0.0f && Float.floatToRawIntBits(a10) == negativeZeroFloatBits) {
            return b10;
        }
        return a10 >= b10 ? a10 : b10;
    }

    @IntrinsicCandidate
    public static double max(double a10, double b10) {
        if (a10 != a10) {
            return a10;
        }
        if (a10 == 0.0d && b10 == 0.0d && Double.doubleToRawLongBits(a10) == negativeZeroDoubleBits) {
            return b10;
        }
        return a10 >= b10 ? a10 : b10;
    }

    @IntrinsicCandidate
    public static int min(int a10, int b10) {
        return a10 <= b10 ? a10 : b10;
    }

    @IntrinsicCandidate
    public static long min(long a10, long b10) {
        return a10 <= b10 ? a10 : b10;
    }

    @IntrinsicCandidate
    public static float min(float a10, float b10) {
        if (a10 != a10) {
            return a10;
        }
        if (a10 == 0.0f && b10 == 0.0f && Float.floatToRawIntBits(b10) == negativeZeroFloatBits) {
            return b10;
        }
        return a10 <= b10 ? a10 : b10;
    }

    @IntrinsicCandidate
    public static double min(double a10, double b10) {
        if (a10 != a10) {
            return a10;
        }
        if (a10 == 0.0d && b10 == 0.0d && Double.doubleToRawLongBits(b10) == negativeZeroDoubleBits) {
            return b10;
        }
        return a10 <= b10 ? a10 : b10;
    }

    public static int clamp(long value, int min, int max) {
        if (min > max) {
            throw new IllegalArgumentException(min + " > " + max);
        }
        return (int) min(max, max(value, min));
    }

    public static long clamp(long value, long min, long max) {
        if (min > max) {
            throw new IllegalArgumentException(min + " > " + max);
        }
        return min(max, max(value, min));
    }

    public static double clamp(double value, double min, double max) {
        if (min >= max) {
            if (Double.isNaN(min)) {
                throw new IllegalArgumentException("min is NaN");
            }
            if (Double.isNaN(max)) {
                throw new IllegalArgumentException("max is NaN");
            }
            if (Double.compare(min, max) > 0) {
                throw new IllegalArgumentException(min + " > " + max);
            }
        }
        return min(max, max(value, min));
    }

    public static float clamp(float value, float min, float max) {
        if (min >= max) {
            if (Float.isNaN(min)) {
                throw new IllegalArgumentException("min is NaN");
            }
            if (Float.isNaN(max)) {
                throw new IllegalArgumentException("max is NaN");
            }
            if (Float.compare(min, max) > 0) {
                throw new IllegalArgumentException(min + " > " + max);
            }
        }
        return min(max, max(value, min));
    }

    @IntrinsicCandidate
    public static double fma(double a10, double b10, double c10) {
        if (Double.isNaN(a10) || Double.isNaN(b10) || Double.isNaN(c10)) {
            return Double.NaN;
        }
        boolean infiniteA = Double.isInfinite(a10);
        boolean infiniteB = Double.isInfinite(b10);
        boolean infiniteC = Double.isInfinite(c10);
        if (infiniteA || infiniteB || infiniteC) {
            if (infiniteA && b10 == 0.0d) {
                return Double.NaN;
            }
            if (infiniteB && a10 == 0.0d) {
                return Double.NaN;
            }
            double product = a10 * b10;
            if (Double.isInfinite(product) && !infiniteA && !infiniteB) {
                if ($assertionsDisabled || Double.isInfinite(c10)) {
                    return c10;
                }
                throw new AssertionError();
            }
            double result = product + c10;
            if ($assertionsDisabled || !Double.isFinite(result)) {
                return result;
            }
            throw new AssertionError();
        }
        BigDecimal product2 = new BigDecimal(a10).multiply(new BigDecimal(b10));
        if (c10 != 0.0d) {
            return product2.add(new BigDecimal(c10)).doubleValue();
        }
        if (a10 == 0.0d || b10 == 0.0d) {
            return (a10 * b10) + c10;
        }
        return product2.doubleValue();
    }

    @IntrinsicCandidate
    public static float fma(float a10, float b10, float c10) {
        if (!Float.isFinite(a10) || !Float.isFinite(b10) || !Float.isFinite(c10)) {
            return (float) fma(a10, b10, c10);
        }
        if (a10 == 0.0d || b10 == 0.0d) {
            return (a10 * b10) + c10;
        }
        return new BigDecimal(a10 * b10).add(new BigDecimal(c10)).floatValue();
    }

    public static double ulp(double d10) {
        int exp = getExponent(d10);
        switch (exp) {
            case -1023:
                return Double.MIN_VALUE;
            case 1024:
                return abs(d10);
            default:
                if (!$assertionsDisabled && (exp > 1023 || exp < -1022)) {
                    throw new AssertionError();
                }
                int exp2 = exp - 52;
                if (exp2 >= -1022) {
                    return powerOfTwoD(exp2);
                }
                return Double.longBitsToDouble(1 << (exp2 - (-1074)));
        }
    }

    public static float ulp(float f10) {
        int exp = getExponent(f10);
        switch (exp) {
            case AdvertisingSetParameters.TX_POWER_MIN:
                return Float.MIN_VALUE;
            case 128:
                return abs(f10);
            default:
                if (!$assertionsDisabled && (exp > 127 || exp < -126)) {
                    throw new AssertionError();
                }
                int exp2 = exp - 23;
                if (exp2 >= -126) {
                    return powerOfTwoF(exp2);
                }
                return Float.intBitsToFloat(1 << (exp2 - (-149)));
        }
    }

    @IntrinsicCandidate
    public static double signum(double d10) {
        return (d10 == 0.0d || Double.isNaN(d10)) ? d10 : copySign(1.0d, d10);
    }

    @IntrinsicCandidate
    public static float signum(float f10) {
        return (f10 == 0.0f || Float.isNaN(f10)) ? f10 : copySign(1.0f, f10);
    }

    public static double sinh(double x10) {
        return StrictMath.sinh(x10);
    }

    public static double cosh(double x10) {
        return StrictMath.cosh(x10);
    }

    @IntrinsicCandidate
    public static double tanh(double x10) {
        return StrictMath.tanh(x10);
    }

    public static double hypot(double x10, double y10) {
        return StrictMath.hypot(x10, y10);
    }

    public static double expm1(double x10) {
        return StrictMath.expm1(x10);
    }

    public static double log1p(double x10) {
        return StrictMath.log1p(x10);
    }

    @IntrinsicCandidate
    public static double copySign(double magnitude, double sign) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(sign) & Long.MIN_VALUE) | (Double.doubleToRawLongBits(magnitude) & Long.MAX_VALUE));
    }

    @IntrinsicCandidate
    public static float copySign(float magnitude, float sign) {
        return Float.intBitsToFloat((Float.floatToRawIntBits(sign) & Integer.MIN_VALUE) | (Float.floatToRawIntBits(magnitude) & Integer.MAX_VALUE));
    }

    public static int getExponent(float f10) {
        return ((Float.floatToRawIntBits(f10) & 2139095040) >> 23) - 127;
    }

    public static int getExponent(double d10) {
        return (int) (((Double.doubleToRawLongBits(d10) & d.f5376b) >> 52) - 1023);
    }

    public static double nextAfter(double start, double direction) {
        if (start > direction) {
            if (start != 0.0d) {
                long transducer = Double.doubleToRawLongBits(start);
                return Double.longBitsToDouble(transducer + (transducer > 0 ? -1L : 1L));
            }
            return -4.9E-324d;
        }
        if (start < direction) {
            long transducer2 = Double.doubleToRawLongBits(start + 0.0d);
            return Double.longBitsToDouble(transducer2 + (transducer2 >= 0 ? 1L : -1L));
        }
        if (start == direction) {
            return direction;
        }
        return start + direction;
    }

    public static float nextAfter(float start, double direction) {
        if (start > direction) {
            if (start != 0.0f) {
                int transducer = Float.floatToRawIntBits(start);
                return Float.intBitsToFloat(transducer + (transducer > 0 ? -1 : 1));
            }
            return -1.4E-45f;
        }
        if (start < direction) {
            int transducer2 = Float.floatToRawIntBits(start + 0.0f);
            return Float.intBitsToFloat(transducer2 + (transducer2 >= 0 ? 1 : -1));
        }
        if (start == direction) {
            return (float) direction;
        }
        return start + ((float) direction);
    }

    public static double nextUp(double d10) {
        if (d10 < Double.POSITIVE_INFINITY) {
            long transducer = Double.doubleToRawLongBits(d10 + 0.0d);
            return Double.longBitsToDouble(transducer + (transducer >= 0 ? 1L : -1L));
        }
        return d10;
    }

    public static float nextUp(float f10) {
        if (f10 < Float.POSITIVE_INFINITY) {
            int transducer = Float.floatToRawIntBits(f10 + 0.0f);
            return Float.intBitsToFloat(transducer + (transducer >= 0 ? 1 : -1));
        }
        return f10;
    }

    public static double nextDown(double d10) {
        if (Double.isNaN(d10) || d10 == Double.NEGATIVE_INFINITY) {
            return d10;
        }
        if (d10 == 0.0d) {
            return -4.9E-324d;
        }
        return Double.longBitsToDouble(Double.doubleToRawLongBits(d10) + (d10 > 0.0d ? -1L : 1L));
    }

    public static float nextDown(float f10) {
        if (Float.isNaN(f10) || f10 == Float.NEGATIVE_INFINITY) {
            return f10;
        }
        if (f10 == 0.0f) {
            return -1.4E-45f;
        }
        return Float.intBitsToFloat(Float.floatToRawIntBits(f10) + (f10 > 0.0f ? -1 : 1));
    }

    public static double scalb(double d10, int scaleFactor) {
        if (scaleFactor > -1023) {
            if (scaleFactor <= 1023) {
                return d10 * primPowerOfTwoD(scaleFactor);
            }
            if (scaleFactor <= 2046) {
                return d10 * primPowerOfTwoD(scaleFactor - 1023) * F_UP;
            }
            if (scaleFactor < 2098) {
                return d10 * primPowerOfTwoD(scaleFactor - 2046) * F_UP * F_UP;
            }
            return d10 * F_UP * F_UP * F_UP;
        }
        if (scaleFactor > -2046) {
            return d10 * primPowerOfTwoD(scaleFactor + 1023) * F_DOWN;
        }
        if (scaleFactor > -2099) {
            return d10 * primPowerOfTwoD(scaleFactor + 2046) * F_DOWN * F_DOWN;
        }
        return d10 * Double.MIN_VALUE * Double.MIN_VALUE;
    }

    public static float scalb(float f10, int scaleFactor) {
        return (float) (f10 * powerOfTwoD(max(min(scaleFactor, KeyEvent.KEYCODE_COPY), -278)));
    }

    public static double powerOfTwoD(int n10) {
        if ($assertionsDisabled || (n10 >= -1022 && n10 <= 1023)) {
            return primPowerOfTwoD(n10);
        }
        throw new AssertionError();
    }

    private static double primPowerOfTwoD(int n10) {
        return Double.longBitsToDouble((n10 + 1023) << 52);
    }

    static float powerOfTwoF(int n10) {
        if ($assertionsDisabled || (n10 >= -126 && n10 <= 127)) {
            return Float.intBitsToFloat(((n10 + 127) << 23) & 2139095040);
        }
        throw new AssertionError();
    }

    public static int unsignedMultiplyExact(int x10, int y10) {
        long r10 = (x10 & 4294967295L) * (y10 & 4294967295L);
        if ((r10 >>> 32) != 0) {
            throw new ArithmeticException("unsigned integer overflow");
        }
        return (int) r10;
    }

    public static long unsignedMultiplyExact(long x10, int y10) {
        return unsignedMultiplyExact(x10, y10 & 4294967295L);
    }

    public static long unsignedMultiplyExact(long x10, long y10) {
        long l10 = x10 * y10;
        long h10 = unsignedMultiplyHigh(x10, y10);
        if (h10 == 0) {
            return l10;
        }
        throw new ArithmeticException("unsigned long overflow");
    }

    public static int powExact(int x10, int n10) {
        if (n10 < 0) {
            throw new ArithmeticException("negative exponent");
        }
        if (n10 == 0) {
            return 1;
        }
        if (x10 == 0 || x10 == 1) {
            return x10;
        }
        if (x10 == -1) {
            return (n10 & 1) == 0 ? 1 : -1;
        }
        int p10 = 1;
        while (n10 > 1) {
            if ((n10 & 1) != 0) {
                p10 *= x10;
            }
            x10 = multiplyExact(x10, x10);
            n10 >>>= 1;
        }
        return multiplyExact(p10, x10);
    }

    public static int unsignedPowExact(int x10, int n10) {
        if (n10 < 0) {
            throw new ArithmeticException("negative exponent");
        }
        if (n10 == 0) {
            return 1;
        }
        if (x10 == 0 || x10 == 1) {
            return x10;
        }
        int p10 = 1;
        while (n10 > 1) {
            if ((n10 & 1) != 0) {
                p10 *= x10;
            }
            x10 = unsignedMultiplyExact(x10, x10);
            n10 >>>= 1;
        }
        return unsignedMultiplyExact(p10, x10);
    }

    public static long powExact(long x10, int n10) {
        if (n10 < 0) {
            throw new ArithmeticException("negative exponent");
        }
        if (n10 == 0) {
            return 1L;
        }
        if (x10 == 0 || x10 == 1) {
            return x10;
        }
        if (x10 == -1) {
            return (n10 & 1) != 0 ? -1L : 1L;
        }
        long p10 = 1;
        while (n10 > 1) {
            if ((n10 & 1) != 0) {
                p10 *= x10;
            }
            x10 = multiplyExact(x10, x10);
            n10 >>>= 1;
        }
        return multiplyExact(p10, x10);
    }

    public static long unsignedPowExact(long x10, int n10) {
        if (n10 < 0) {
            throw new ArithmeticException("negative exponent");
        }
        if (n10 == 0) {
            return 1L;
        }
        if (x10 == 0 || x10 == 1) {
            return x10;
        }
        long p10 = 1;
        while (n10 > 1) {
            if ((n10 & 1) != 0) {
                p10 *= x10;
            }
            x10 = unsignedMultiplyExact(x10, x10);
            n10 >>>= 1;
        }
        return unsignedMultiplyExact(p10, x10);
    }
}
