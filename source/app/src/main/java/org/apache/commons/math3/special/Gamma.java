package org.apache.commons.math3.special;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.ContinuedFraction;
import org.apache.commons.math3.util.FastMath;

public class Gamma {
    private static final double C_LIMIT = 49.0d;
    private static final double DEFAULT_EPSILON = 1.0E-14d;
    public static final double GAMMA = 0.5772156649015329d;
    private static final double INV_GAMMA1P_M1_A0 = 6.116095104481416E-9d;
    private static final double INV_GAMMA1P_M1_A1 = 6.247308301164655E-9d;
    private static final double INV_GAMMA1P_M1_B1 = 0.203610414066807d;
    private static final double INV_GAMMA1P_M1_B2 = 0.026620534842894922d;
    private static final double INV_GAMMA1P_M1_B3 = 4.939449793824468E-4d;
    private static final double INV_GAMMA1P_M1_B4 = -8.514194324403149E-6d;
    private static final double INV_GAMMA1P_M1_B5 = -6.4304548177935305E-6d;
    private static final double INV_GAMMA1P_M1_B6 = 9.926418406727737E-7d;
    private static final double INV_GAMMA1P_M1_B7 = -6.077618957228252E-8d;
    private static final double INV_GAMMA1P_M1_B8 = 1.9575583661463974E-10d;
    private static final double INV_GAMMA1P_M1_C = -0.42278433509846713d;
    private static final double INV_GAMMA1P_M1_C0 = 0.5772156649015329d;
    private static final double INV_GAMMA1P_M1_C1 = -0.6558780715202539d;
    private static final double INV_GAMMA1P_M1_C10 = -2.013485478078824E-5d;
    private static final double INV_GAMMA1P_M1_C11 = -1.2504934821426706E-6d;
    private static final double INV_GAMMA1P_M1_C12 = 1.133027231981696E-6d;
    private static final double INV_GAMMA1P_M1_C13 = -2.056338416977607E-7d;
    private static final double INV_GAMMA1P_M1_C2 = -0.04200263503409524d;
    private static final double INV_GAMMA1P_M1_C3 = 0.16653861138229148d;
    private static final double INV_GAMMA1P_M1_C4 = -0.04219773455554433d;
    private static final double INV_GAMMA1P_M1_C5 = -0.009621971527876973d;
    private static final double INV_GAMMA1P_M1_C6 = 0.0072189432466631d;
    private static final double INV_GAMMA1P_M1_C7 = -0.0011651675918590652d;
    private static final double INV_GAMMA1P_M1_C8 = -2.1524167411495098E-4d;
    private static final double INV_GAMMA1P_M1_C9 = 1.280502823881162E-4d;
    private static final double INV_GAMMA1P_M1_P0 = 6.116095104481416E-9d;
    private static final double INV_GAMMA1P_M1_P1 = 6.8716741130671986E-9d;
    private static final double INV_GAMMA1P_M1_P2 = 6.820161668496171E-10d;
    private static final double INV_GAMMA1P_M1_P3 = 4.686843322948848E-11d;
    private static final double INV_GAMMA1P_M1_P4 = 1.5728330277104463E-12d;
    private static final double INV_GAMMA1P_M1_P5 = -1.2494415722763663E-13d;
    private static final double INV_GAMMA1P_M1_P6 = 4.343529937408594E-15d;
    private static final double INV_GAMMA1P_M1_Q1 = 0.3056961078365221d;
    private static final double INV_GAMMA1P_M1_Q2 = 0.054642130860422966d;
    private static final double INV_GAMMA1P_M1_Q3 = 0.004956830093825887d;
    private static final double INV_GAMMA1P_M1_Q4 = 2.6923694661863613E-4d;
    public static final double LANCZOS_G = 4.7421875d;
    private static final double SQRT_TWO_PI = 2.5066282746310007d;
    private static final double S_LIMIT = 1.0E-5d;
    private static final double[] LANCZOS = {0.9999999999999971d, 57.15623566586292d, -59.59796035547549d, 14.136097974741746d, -0.4919138160976202d, 3.399464998481189E-5d, 4.652362892704858E-5d, -9.837447530487956E-5d, 1.580887032249125E-4d, -2.1026444172410488E-4d, 2.1743961811521265E-4d, -1.643181065367639E-4d, 8.441822398385275E-5d, -2.6190838401581408E-5d, 3.6899182659531625E-6d};
    private static final double HALF_LOG_2_PI = FastMath.log(6.283185307179586d) * 0.5d;

    private Gamma() {
    }

    public static double digamma(double d10) {
        double digamma;
        double d11;
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            return d10;
        }
        if (d10 > 0.0d && d10 <= 1.0E-5d) {
            digamma = -0.5772156649015329d;
        } else {
            if (d10 >= C_LIMIT) {
                double d12 = 1.0d / (d10 * d10);
                digamma = FastMath.log(d10) - (0.5d / d10);
                d11 = d12 * (((0.008333333333333333d - (d12 / 252.0d)) * d12) + 0.08333333333333333d);
                return digamma - d11;
            }
            digamma = digamma(d10 + 1.0d);
        }
        d11 = 1.0d / d10;
        return digamma - d11;
    }

    public static double gamma(double d10) {
        if (d10 == FastMath.rint(d10) && d10 <= 0.0d) {
            return Double.NaN;
        }
        double abs = FastMath.abs(d10);
        if (abs > 20.0d) {
            double d11 = 4.7421875d + abs + 0.5d;
            double lanczos = lanczos(abs) * (SQRT_TWO_PI / abs) * FastMath.pow(d11, 0.5d + abs) * FastMath.exp(-d11);
            return d10 > 0.0d ? lanczos : (-3.141592653589793d) / ((d10 * FastMath.sin(3.141592653589793d * d10)) * lanczos);
        }
        if (d10 >= 1.0d) {
            double d12 = 1.0d;
            while (d10 > 2.5d) {
                d10 -= 1.0d;
                d12 *= d10;
            }
            return d12 / (invGamma1pm1(d10 - 1.0d) + 1.0d);
        }
        double d13 = d10;
        while (d10 < -0.5d) {
            d10 += 1.0d;
            d13 *= d10;
        }
        return 1.0d / (d13 * (invGamma1pm1(d10) + 1.0d));
    }

    public static double invGamma1pm1(double d10) {
        if (d10 < -0.5d) {
            throw new NumberIsTooSmallException(Double.valueOf(d10), Double.valueOf(-0.5d), true);
        }
        if (d10 > 1.5d) {
            throw new NumberIsTooLargeException(Double.valueOf(d10), Double.valueOf(1.5d), true);
        }
        double d11 = d10 <= 0.5d ? d10 : (d10 - 0.5d) - 0.5d;
        if (d11 < 0.0d) {
            double d12 = ((((((((((((((((((((((((((((((INV_GAMMA1P_M1_A1 * d11) + 6.116095104481416E-9d) / ((((((((((((((((INV_GAMMA1P_M1_B8 * d11) + INV_GAMMA1P_M1_B7) * d11) + INV_GAMMA1P_M1_B6) * d11) + INV_GAMMA1P_M1_B5) * d11) + INV_GAMMA1P_M1_B4) * d11) + INV_GAMMA1P_M1_B3) * d11) + INV_GAMMA1P_M1_B2) * d11) + INV_GAMMA1P_M1_B1) * d11) + 1.0d)) * d11) + INV_GAMMA1P_M1_C13) * d11) + INV_GAMMA1P_M1_C12) * d11) + INV_GAMMA1P_M1_C11) * d11) + INV_GAMMA1P_M1_C10) * d11) + INV_GAMMA1P_M1_C9) * d11) + INV_GAMMA1P_M1_C8) * d11) + INV_GAMMA1P_M1_C7) * d11) + INV_GAMMA1P_M1_C6) * d11) + INV_GAMMA1P_M1_C5) * d11) + INV_GAMMA1P_M1_C4) * d11) + INV_GAMMA1P_M1_C3) * d11) + INV_GAMMA1P_M1_C2) * d11) + INV_GAMMA1P_M1_C1) * d11) + INV_GAMMA1P_M1_C;
            return d10 > 0.5d ? (d11 * d12) / d10 : d10 * (d12 + 0.5d + 0.5d);
        }
        double d13 = ((((((((((((((((((((((((((((((((((((((((INV_GAMMA1P_M1_P6 * d11) + INV_GAMMA1P_M1_P5) * d11) + INV_GAMMA1P_M1_P4) * d11) + INV_GAMMA1P_M1_P3) * d11) + INV_GAMMA1P_M1_P2) * d11) + INV_GAMMA1P_M1_P1) * d11) + 6.116095104481416E-9d) / ((((((((INV_GAMMA1P_M1_Q4 * d11) + INV_GAMMA1P_M1_Q3) * d11) + INV_GAMMA1P_M1_Q2) * d11) + INV_GAMMA1P_M1_Q1) * d11) + 1.0d)) * d11) + INV_GAMMA1P_M1_C13) * d11) + INV_GAMMA1P_M1_C12) * d11) + INV_GAMMA1P_M1_C11) * d11) + INV_GAMMA1P_M1_C10) * d11) + INV_GAMMA1P_M1_C9) * d11) + INV_GAMMA1P_M1_C8) * d11) + INV_GAMMA1P_M1_C7) * d11) + INV_GAMMA1P_M1_C6) * d11) + INV_GAMMA1P_M1_C5) * d11) + INV_GAMMA1P_M1_C4) * d11) + INV_GAMMA1P_M1_C3) * d11) + INV_GAMMA1P_M1_C2) * d11) + INV_GAMMA1P_M1_C1) * d11) + 0.5772156649015329d;
        return d10 > 0.5d ? (d11 / d10) * ((d13 - 0.5d) - 0.5d) : d10 * d13;
    }

    public static double lanczos(double d10) {
        double d11 = 0.0d;
        for (int length = LANCZOS.length - 1; length > 0; length--) {
            d11 += LANCZOS[length] / (length + d10);
        }
        return d11 + LANCZOS[0];
    }

    public static double logGamma(double d10) {
        if (Double.isNaN(d10) || d10 <= 0.0d) {
            return Double.NaN;
        }
        if (d10 < 0.5d) {
            return logGamma1p(d10) - FastMath.log(d10);
        }
        if (d10 <= 2.5d) {
            return logGamma1p((d10 - 0.5d) - 0.5d);
        }
        if (d10 > 8.0d) {
            double d11 = 4.7421875d + d10 + 0.5d;
            return (((0.5d + d10) * FastMath.log(d11)) - d11) + HALF_LOG_2_PI + FastMath.log(lanczos(d10) / d10);
        }
        double d12 = 1.0d;
        for (int i10 = 1; i10 <= ((int) FastMath.floor(d10 - 1.5d)); i10++) {
            d12 *= d10 - i10;
        }
        return logGamma1p(d10 - (r0 + 1)) + FastMath.log(d12);
    }

    public static double logGamma1p(double d10) throws NumberIsTooSmallException, NumberIsTooLargeException {
        if (d10 < -0.5d) {
            throw new NumberIsTooSmallException(Double.valueOf(d10), Double.valueOf(-0.5d), true);
        }
        if (d10 <= 1.5d) {
            return -FastMath.log1p(invGamma1pm1(d10));
        }
        throw new NumberIsTooLargeException(Double.valueOf(d10), Double.valueOf(1.5d), true);
    }

    public static double regularizedGammaP(double d10, double d11) {
        return regularizedGammaP(d10, d11, DEFAULT_EPSILON, Integer.MAX_VALUE);
    }

    public static double regularizedGammaQ(double d10, double d11) {
        return regularizedGammaQ(d10, d11, DEFAULT_EPSILON, Integer.MAX_VALUE);
    }

    public static double trigamma(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            return d10;
        }
        if (d10 > 0.0d && d10 <= 1.0E-5d) {
            return 1.0d / (d10 * d10);
        }
        if (d10 < C_LIMIT) {
            return trigamma(d10 + 1.0d) + (1.0d / (d10 * d10));
        }
        double d11 = 1.0d / (d10 * d10);
        return (1.0d / d10) + (d11 / 2.0d) + ((d11 / d10) * (0.16666666666666666d - (d11 * ((d11 / 42.0d) + 0.03333333333333333d))));
    }

    public static double regularizedGammaP(double d10, double d11, double d12, int i10) {
        if (!Double.isNaN(d10) && !Double.isNaN(d11)) {
            double d13 = 0.0d;
            if (d10 > 0.0d && d11 >= 0.0d) {
                if (d11 == 0.0d) {
                    return 0.0d;
                }
                if (d11 >= d10 + 1.0d) {
                    return 1.0d - regularizedGammaQ(d10, d11, d12, i10);
                }
                double d14 = 1.0d / d10;
                double d15 = d14;
                while (FastMath.abs(d14 / d15) > d12 && d13 < i10 && d15 < Double.POSITIVE_INFINITY) {
                    d13 += 1.0d;
                    d14 *= d11 / (d10 + d13);
                    d15 += d14;
                }
                if (d13 < i10) {
                    if (Double.isInfinite(d15)) {
                        return 1.0d;
                    }
                    return FastMath.exp(((-d11) + (FastMath.log(d11) * d10)) - logGamma(d10)) * d15;
                }
                throw new MaxCountExceededException(Integer.valueOf(i10));
            }
        }
        return Double.NaN;
    }

    public static double regularizedGammaQ(final double d10, double d11, double d12, int i10) {
        if (Double.isNaN(d10) || Double.isNaN(d11) || d10 <= 0.0d || d11 < 0.0d) {
            return Double.NaN;
        }
        if (d11 == 0.0d) {
            return 1.0d;
        }
        if (d11 < d10 + 1.0d) {
            return 1.0d - regularizedGammaP(d10, d11, d12, i10);
        }
        return (1.0d / new ContinuedFraction() {
            @Override
            public double getA(int i11, double d13) {
                return (((i11 * 2.0d) + 1.0d) - d10) + d13;
            }

            @Override
            public double getB(int i11, double d13) {
                double d14 = i11;
                return d14 * (d10 - d14);
            }
        }.evaluate(d11, d12, i10)) * FastMath.exp(((-d11) + (FastMath.log(d11) * d10)) - logGamma(d10));
    }
}
