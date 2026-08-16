package org.apache.commons.math3.util;

import java.math.BigDecimal;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class Precision {
    private static final long EXPONENT_OFFSET = 1023;
    private static final double POSITIVE_ZERO = 0.0d;
    private static final long SGN_MASK = Long.MIN_VALUE;
    private static final int SGN_MASK_FLOAT = Integer.MIN_VALUE;
    private static final long POSITIVE_ZERO_DOUBLE_BITS = Double.doubleToRawLongBits(0.0d);
    private static final long NEGATIVE_ZERO_DOUBLE_BITS = Double.doubleToRawLongBits(-0.0d);
    private static final int POSITIVE_ZERO_FLOAT_BITS = Float.floatToRawIntBits(0.0f);
    private static final int NEGATIVE_ZERO_FLOAT_BITS = Float.floatToRawIntBits(-0.0f);
    public static final double EPSILON = Double.longBitsToDouble(4368491638549381120L);
    public static final double SAFE_MIN = Double.longBitsToDouble(4503599627370496L);

    private Precision() {
    }

    public static int compareTo(double d10, double d11, double d12) {
        if (equals(d10, d11, d12)) {
            return 0;
        }
        return d10 < d11 ? -1 : 1;
    }

    public static boolean equals(float f10, float f11) {
        return equals(f10, f11, 1);
    }

    public static boolean equalsIncludingNaN(float f10, float f11) {
        if (f10 == f10 && f11 == f11) {
            return equals(f10, f11, 1);
        }
        return !(((f11 > f11 ? 1 : (f11 == f11 ? 0 : -1)) != 0) ^ ((f10 > f10 ? 1 : (f10 == f10 ? 0 : -1)) != 0));
    }

    public static boolean equalsWithRelativeTolerance(double d10, double d11, double d12) {
        if (equals(d10, d11, 1)) {
            return true;
        }
        return FastMath.abs((d10 - d11) / FastMath.max(FastMath.abs(d10), FastMath.abs(d11))) <= d12;
    }

    public static double representableDelta(double d10, double d11) {
        return (d11 + d10) - d10;
    }

    public static double round(double d10, int i10) {
        return round(d10, i10, 4);
    }

    private static double roundUnscaled(double d10, double d11, int i10) throws MathArithmeticException, MathIllegalArgumentException {
        switch (i10) {
            case 0:
                return d10 != FastMath.floor(d10) ? FastMath.ceil(FastMath.nextAfter(d10, Double.POSITIVE_INFINITY)) : d10;
            case 1:
                return FastMath.floor(FastMath.nextAfter(d10, Double.NEGATIVE_INFINITY));
            case 2:
                return d11 == -1.0d ? FastMath.floor(FastMath.nextAfter(d10, Double.NEGATIVE_INFINITY)) : FastMath.ceil(FastMath.nextAfter(d10, Double.POSITIVE_INFINITY));
            case 3:
                return d11 == -1.0d ? FastMath.ceil(FastMath.nextAfter(d10, Double.POSITIVE_INFINITY)) : FastMath.floor(FastMath.nextAfter(d10, Double.NEGATIVE_INFINITY));
            case 4:
                double nextAfter = FastMath.nextAfter(d10, Double.POSITIVE_INFINITY);
                return nextAfter - FastMath.floor(nextAfter) >= 0.5d ? FastMath.ceil(nextAfter) : FastMath.floor(nextAfter);
            case 5:
                double nextAfter2 = FastMath.nextAfter(d10, Double.NEGATIVE_INFINITY);
                return nextAfter2 - FastMath.floor(nextAfter2) > 0.5d ? FastMath.ceil(nextAfter2) : FastMath.floor(nextAfter2);
            case 6:
                double floor = d10 - FastMath.floor(d10);
                if (floor > 0.5d) {
                    return FastMath.ceil(d10);
                }
                if (floor >= 0.5d && FastMath.floor(d10) / 2.0d != FastMath.floor(FastMath.floor(d10) / 2.0d)) {
                    return FastMath.ceil(d10);
                }
                return FastMath.floor(d10);
            case 7:
                if (d10 == FastMath.floor(d10)) {
                    return d10;
                }
                throw new MathArithmeticException();
            default:
                throw new MathIllegalArgumentException(LocalizedFormats.INVALID_ROUNDING_METHOD, Integer.valueOf(i10), "ROUND_CEILING", 2, "ROUND_DOWN", 1, "ROUND_FLOOR", 3, "ROUND_HALF_DOWN", 5, "ROUND_HALF_EVEN", 6, "ROUND_HALF_UP", 4, "ROUND_UNNECESSARY", 7, "ROUND_UP", 0);
        }
    }

    public static int compareTo(double d10, double d11, int i10) {
        if (equals(d10, d11, i10)) {
            return 0;
        }
        return d10 < d11 ? -1 : 1;
    }

    public static boolean equals(float f10, float f11, float f12) {
        return equals(f10, f11, 1) || FastMath.abs(f11 - f10) <= f12;
    }

    public static boolean equalsIncludingNaN(float f10, float f11, float f12) {
        return equalsIncludingNaN(f10, f11) || FastMath.abs(f11 - f10) <= f12;
    }

    public static double round(double d10, int i10, int i11) {
        try {
            double doubleValue = new BigDecimal(Double.toString(d10)).setScale(i10, i11).doubleValue();
            return doubleValue == 0.0d ? d10 * 0.0d : doubleValue;
        } catch (NumberFormatException unused) {
            if (Double.isInfinite(d10)) {
                return d10;
            }
            return Double.NaN;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0039, code lost:
    
        if (java.lang.Float.isNaN(r6) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        if (r0 > (r7 - r1)) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0014, code lost:
    
        if (org.apache.commons.math3.util.FastMath.abs(r0 - r1) <= r7) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        if (java.lang.Float.isNaN(r5) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean equals(float f10, float f11, int i10) {
        int i11;
        int i12;
        int floatToRawIntBits = Float.floatToRawIntBits(f10);
        int floatToRawIntBits2 = Float.floatToRawIntBits(f11);
        if (((floatToRawIntBits ^ floatToRawIntBits2) & Integer.MIN_VALUE) != 0) {
            if (floatToRawIntBits < floatToRawIntBits2) {
                i11 = floatToRawIntBits2 - POSITIVE_ZERO_FLOAT_BITS;
                i12 = floatToRawIntBits - NEGATIVE_ZERO_FLOAT_BITS;
            } else {
                int i13 = floatToRawIntBits - POSITIVE_ZERO_FLOAT_BITS;
                int i14 = floatToRawIntBits2 - NEGATIVE_ZERO_FLOAT_BITS;
                i11 = i13;
                i12 = i14;
            }
            if (i11 <= i10) {
            }
        }
        return false;
    }

    public static boolean equalsIncludingNaN(float f10, float f11, int i10) {
        if (f10 == f10 && f11 == f11) {
            return equals(f10, f11, i10);
        }
        return !(((f11 > f11 ? 1 : (f11 == f11 ? 0 : -1)) != 0) ^ ((f10 > f10 ? 1 : (f10 == f10 ? 0 : -1)) != 0));
    }

    public static boolean equalsIncludingNaN(double d10, double d11) {
        if (d10 == d10 && d11 == d11) {
            return equals(d10, d11, 1);
        }
        return !(((d10 > d10 ? 1 : (d10 == d10 ? 0 : -1)) != 0) ^ ((d11 > d11 ? 1 : (d11 == d11 ? 0 : -1)) != 0));
    }

    public static float round(float f10, int i10) {
        return round(f10, i10, 4);
    }

    public static boolean equalsIncludingNaN(double d10, double d11, double d12) {
        return equalsIncludingNaN(d10, d11) || FastMath.abs(d11 - d10) <= d12;
    }

    public static float round(float f10, int i10, int i11) throws MathArithmeticException, MathIllegalArgumentException {
        float copySign = FastMath.copySign(1.0f, f10);
        return ((float) roundUnscaled(f10 * r6, copySign, i11)) / (((float) FastMath.pow(10.0d, i10)) * copySign);
    }

    public static boolean equalsIncludingNaN(double d10, double d11, int i10) {
        if (d10 == d10 && d11 == d11) {
            return equals(d10, d11, i10);
        }
        return !(((d11 > d11 ? 1 : (d11 == d11 ? 0 : -1)) != 0) ^ ((d10 > d10 ? 1 : (d10 == d10 ? 0 : -1)) != 0));
    }

    public static boolean equals(double d10, double d11) {
        return equals(d10, d11, 1);
    }

    public static boolean equals(double d10, double d11, double d12) {
        return equals(d10, d11, 1) || FastMath.abs(d11 - d10) <= d12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0047, code lost:
    
        if (java.lang.Double.isNaN(r12) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
    
        if (r0 > (r4 - r2)) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001b, code lost:
    
        if (org.apache.commons.math3.util.FastMath.abs(r0 - r2) <= r14) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0041, code lost:
    
        if (java.lang.Double.isNaN(r10) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean equals(double d10, double d11, int i10) {
        long j10;
        long j11;
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10);
        long doubleToRawLongBits2 = Double.doubleToRawLongBits(d11);
        if (((doubleToRawLongBits ^ doubleToRawLongBits2) & Long.MIN_VALUE) != 0) {
            if (doubleToRawLongBits < doubleToRawLongBits2) {
                j11 = doubleToRawLongBits2 - POSITIVE_ZERO_DOUBLE_BITS;
                j10 = doubleToRawLongBits - NEGATIVE_ZERO_DOUBLE_BITS;
            } else {
                long j12 = doubleToRawLongBits - POSITIVE_ZERO_DOUBLE_BITS;
                j10 = doubleToRawLongBits2 - NEGATIVE_ZERO_DOUBLE_BITS;
                j11 = j12;
            }
            long j13 = i10;
            if (j11 <= j13) {
            }
        }
        return false;
    }
}
