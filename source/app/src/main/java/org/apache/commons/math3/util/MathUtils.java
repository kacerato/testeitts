package org.apache.commons.math3.util;

import java.util.Arrays;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public final class MathUtils {
    public static final double PI_SQUARED = 9.869604401089358d;
    public static final double TWO_PI = 6.283185307179586d;

    private MathUtils() {
    }

    public static void checkFinite(double d10) throws NotFiniteNumberException {
        if (Double.isInfinite(d10) || Double.isNaN(d10)) {
            throw new NotFiniteNumberException(Double.valueOf(d10), new Object[0]);
        }
    }

    public static void checkNotNull(Object obj, Localizable localizable, Object... objArr) throws NullArgumentException {
        if (obj == null) {
            throw new NullArgumentException(localizable, objArr);
        }
    }

    public static byte copySign(byte b10, byte b11) throws MathArithmeticException {
        if ((b10 >= 0 && b11 >= 0) || (b10 < 0 && b11 < 0)) {
            return b10;
        }
        if (b11 < 0 || b10 != Byte.MIN_VALUE) {
            return (byte) (-b10);
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }

    public static boolean equals(double d10, double d11) {
        return new Double(d10).equals(new Double(d11));
    }

    public static int hash(double d10) {
        return new Double(d10).hashCode();
    }

    public static <T extends RealFieldElement<T>> T max(T t10, T t11) {
        return ((RealFieldElement) t10.subtract(t11)).getReal() >= 0.0d ? t10 : t11;
    }

    public static <T extends RealFieldElement<T>> T min(T t10, T t11) {
        return ((RealFieldElement) t10.subtract(t11)).getReal() >= 0.0d ? t11 : t10;
    }

    public static double normalizeAngle(double d10, double d11) {
        return d10 - (FastMath.floor(((3.141592653589793d + d10) - d11) / 6.283185307179586d) * 6.283185307179586d);
    }

    public static double reduce(double d10, double d11, double d12) {
        double abs = FastMath.abs(d11);
        return (d10 - (abs * FastMath.floor((d10 - d12) / abs))) - d12;
    }

    public static void checkNotNull(Object obj) throws NullArgumentException {
        if (obj == null) {
            throw new NullArgumentException();
        }
    }

    public static short copySign(short s10, short s11) throws MathArithmeticException {
        if ((s10 >= 0 && s11 >= 0) || (s10 < 0 && s11 < 0)) {
            return s10;
        }
        if (s11 < 0 || s10 != Short.MIN_VALUE) {
            return (short) (-s10);
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }

    public static int hash(double[] dArr) {
        return Arrays.hashCode(dArr);
    }

    public static void checkFinite(double[] dArr) throws NotFiniteNumberException {
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double d10 = dArr[i10];
            if (Double.isInfinite(d10) || Double.isNaN(d10)) {
                throw new NotFiniteNumberException(LocalizedFormats.ARRAY_ELEMENT, Double.valueOf(d10), Integer.valueOf(i10));
            }
        }
    }

    public static int copySign(int i10, int i11) throws MathArithmeticException {
        if ((i10 >= 0 && i11 >= 0) || (i10 < 0 && i11 < 0)) {
            return i10;
        }
        if (i11 < 0 || i10 != Integer.MIN_VALUE) {
            return -i10;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }

    public static long copySign(long j10, long j11) throws MathArithmeticException {
        if ((j10 >= 0 && j11 >= 0) || (j10 < 0 && j11 < 0)) {
            return j10;
        }
        if (j11 < 0 || j10 != Long.MIN_VALUE) {
            return -j10;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }
}
