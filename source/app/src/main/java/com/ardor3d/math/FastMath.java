package com.ardor3d.math;

public final class FastMath {
    public static final double EPSILON_ACOS = 0.0014d;
    public static final double EPSILON_ASIN = 0.0014d;
    public static final double EPSILON_ATAN = 0.005d;
    public static final double EPSILON_COS = 0.0011d;
    public static final double EPSILON_SIN = 0.0011d;
    public static final double EPSILON_SIN2COS2 = 0.002d;
    private static final double _asin_a = -0.048129527683101345d;
    private static final double _asin_b = -0.3438359939479152d;
    private static final double _asin_c = 0.9627618484259132d;
    private static final double _asin_d = 1.0013894086010704d;
    private static final double _atan_a = 0.280872d;
    private static final double _sin_a = -0.4052847345693511d;
    private static final double _sin_b = 1.2732395447351628d;
    private static final double _sin_p = 0.225d;

    private FastMath() {
    }

    public static final double acos(double d10) {
        return 1.5707963267948966d - asin(d10);
    }

    public static final double asin(double d10) {
        return (((Math.abs(d10) * ((Math.abs(d10) * _asin_a) + _asin_b)) + _asin_c) * d10) + (Math.signum(d10) * (_asin_d - Math.sqrt(1.0d - (d10 * d10))));
    }

    public static final double atan(double d10) {
        return Math.abs(d10) < 1.0d ? d10 / (((_atan_a * d10) * d10) + 1.0d) : (Math.signum(d10) * 1.5707963267948966d) - (d10 / ((d10 * d10) + _atan_a));
    }

    public static final double cos(double d10) {
        return sin(d10 + (d10 > 1.5707963267948966d ? -4.71238898038469d : 1.5707963267948966d));
    }

    public static final double inverseSqrt(double d10) {
        double d11 = 0.5d * d10;
        double longBitsToDouble = Double.longBitsToDouble(6910469410427058090L - (Double.doubleToRawLongBits(d10) >> 1));
        return longBitsToDouble * (1.5d - ((d11 * longBitsToDouble) * longBitsToDouble));
    }

    public static final double sin(double d10) {
        double abs = (_sin_a * d10 * Math.abs(d10)) + (d10 * _sin_b);
        return (((Math.abs(abs) * abs) - abs) * _sin_p) + abs;
    }

    public static final double sqrt(double d10) {
        return d10 * inverseSqrt(d10);
    }

    public static final double tan(double d10) {
        return sin(d10) / cos(d10);
    }
}
