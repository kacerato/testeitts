package org.apache.commons.math3.special;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.ContinuedFraction;
import org.apache.commons.math3.util.FastMath;

public class Beta {
    private static final double DEFAULT_EPSILON = 1.0E-14d;
    private static final double[] DELTA = {0.08333333333333333d, -2.777777777777778E-5d, 7.936507936507937E-8d, -5.952380952380953E-10d, 8.417508417508329E-12d, -1.917526917518546E-13d, 6.410256405103255E-15d, -2.955065141253382E-16d, 1.7964371635940225E-17d, -1.3922896466162779E-18d, 1.338028550140209E-19d, -1.542460098679661E-20d, 1.9770199298095743E-21d, -2.3406566479399704E-22d, 1.713480149663986E-23d};
    private static final double HALF_LOG_TWO_PI = 0.9189385332046727d;

    private Beta() {
    }

    private static double deltaMinusDeltaSum(double d10, double d11) throws OutOfRangeException, NumberIsTooSmallException {
        if (d10 < 0.0d || d10 > d11) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, Double.valueOf(d11));
        }
        if (d11 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d11), 10, true);
        }
        double d12 = d10 / d11;
        double d13 = d12 + 1.0d;
        double d14 = d12 / d13;
        double d15 = 1.0d / d13;
        double d16 = d15 * d15;
        int length = DELTA.length;
        double[] dArr = new double[length];
        dArr[0] = 1.0d;
        for (int i10 = 1; i10 < length; i10++) {
            dArr[i10] = (dArr[i10 - 1] * d16) + d15 + 1.0d;
        }
        double d17 = 10.0d / d11;
        double d18 = d17 * d17;
        double[] dArr2 = DELTA;
        double d19 = dArr2[dArr2.length - 1] * dArr[length - 1];
        for (int length2 = dArr2.length - 2; length2 >= 0; length2--) {
            d19 = (d19 * d18) + (DELTA[length2] * dArr[length2]);
        }
        return (d19 * d14) / d11;
    }

    @Deprecated
    public static double logBeta(double d10, double d11, double d12, int i10) {
        return logBeta(d10, d11);
    }

    private static double logGammaMinusLogGammaSum(double d10, double d11) throws NumberIsTooSmallException {
        double d12;
        double deltaMinusDeltaSum;
        if (d10 < 0.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d10), Double.valueOf(0.0d), true);
        }
        if (d11 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d11), Double.valueOf(10.0d), true);
        }
        if (d10 <= d11) {
            d12 = (d10 - 0.5d) + d11;
            deltaMinusDeltaSum = deltaMinusDeltaSum(d10, d11);
        } else {
            d12 = (d11 - 0.5d) + d10;
            deltaMinusDeltaSum = deltaMinusDeltaSum(d11, d10);
        }
        double log1p = d12 * FastMath.log1p(d10 / d11);
        double log = d10 * (FastMath.log(d11) - 1.0d);
        return log1p <= log ? (deltaMinusDeltaSum - log1p) - log : (deltaMinusDeltaSum - log) - log1p;
    }

    private static double logGammaSum(double d10, double d11) throws OutOfRangeException {
        double logGamma1p;
        double log;
        Double valueOf = Double.valueOf(1.0d);
        Double valueOf2 = Double.valueOf(2.0d);
        if (d10 < 1.0d || d10 > 2.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), valueOf, valueOf2);
        }
        if (d11 < 1.0d || d11 > 2.0d) {
            throw new OutOfRangeException(Double.valueOf(d11), valueOf, valueOf2);
        }
        double d12 = (d10 - 1.0d) + (d11 - 1.0d);
        if (d12 <= 0.5d) {
            return Gamma.logGamma1p(d12 + 1.0d);
        }
        if (d12 <= 1.5d) {
            logGamma1p = Gamma.logGamma1p(d12);
            log = FastMath.log1p(d12);
        } else {
            logGamma1p = Gamma.logGamma1p(d12 - 1.0d);
            log = FastMath.log(d12 * (1.0d + d12));
        }
        return logGamma1p + log;
    }

    public static double regularizedBeta(double d10, double d11, double d12) {
        return regularizedBeta(d10, d11, d12, DEFAULT_EPSILON, Integer.MAX_VALUE);
    }

    private static double sumDeltaMinusDeltaSum(double d10, double d11) {
        Double valueOf = Double.valueOf(10.0d);
        if (d10 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d10), valueOf, true);
        }
        if (d11 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d11), valueOf, true);
        }
        double min = FastMath.min(d10, d11);
        double max = FastMath.max(d10, d11);
        double d12 = 10.0d / min;
        double d13 = d12 * d12;
        double[] dArr = DELTA;
        double d14 = dArr[dArr.length - 1];
        for (int length = dArr.length - 2; length >= 0; length--) {
            d14 = (d14 * d13) + DELTA[length];
        }
        return (d14 / min) + deltaMinusDeltaSum(min, max);
    }

    public static double logBeta(double d10, double d11) {
        if (Double.isNaN(d10) || Double.isNaN(d11) || d10 <= 0.0d || d11 <= 0.0d) {
            return Double.NaN;
        }
        double min = FastMath.min(d10, d11);
        double max = FastMath.max(d10, d11);
        if (min >= 10.0d) {
            double sumDeltaMinusDeltaSum = sumDeltaMinusDeltaSum(min, max);
            double d12 = min / max;
            double log = (-(min - 0.5d)) * FastMath.log(d12 / (1.0d + d12));
            double log1p = FastMath.log1p(d12) * max;
            if (log <= log1p) {
                return ((((FastMath.log(max) * (-0.5d)) + HALF_LOG_TWO_PI) + sumDeltaMinusDeltaSum) - log) - log1p;
            }
            return ((((FastMath.log(max) * (-0.5d)) + HALF_LOG_TWO_PI) + sumDeltaMinusDeltaSum) - log1p) - log;
        }
        if (min <= 2.0d) {
            if (min < 1.0d) {
                if (max >= 10.0d) {
                    return Gamma.logGamma(min) + logGammaMinusLogGammaSum(min, max);
                }
                return FastMath.log((Gamma.gamma(min) * Gamma.gamma(max)) / Gamma.gamma(min + max));
            }
            if (max <= 2.0d) {
                return (Gamma.logGamma(min) + Gamma.logGamma(max)) - logGammaSum(min, max);
            }
            if (max < 10.0d) {
                double d13 = 1.0d;
                while (max > 2.0d) {
                    max -= 1.0d;
                    d13 *= max / (min + max);
                }
                return FastMath.log(d13) + Gamma.logGamma(min) + (Gamma.logGamma(max) - logGammaSum(min, max));
            }
            return Gamma.logGamma(min) + logGammaMinusLogGammaSum(min, max);
        }
        if (max > 1000.0d) {
            int floor = (int) FastMath.floor(min - 1.0d);
            double d14 = 1.0d;
            for (int i10 = 0; i10 < floor; i10++) {
                min -= 1.0d;
                d14 *= min / ((min / max) + 1.0d);
            }
            return (FastMath.log(d14) - (floor * FastMath.log(max))) + Gamma.logGamma(min) + logGammaMinusLogGammaSum(min, max);
        }
        double d15 = 1.0d;
        while (min > 2.0d) {
            min -= 1.0d;
            double d16 = min / max;
            d15 *= d16 / (d16 + 1.0d);
        }
        if (max < 10.0d) {
            double d17 = 1.0d;
            while (max > 2.0d) {
                max -= 1.0d;
                d17 *= max / (min + max);
            }
            return FastMath.log(d15) + FastMath.log(d17) + Gamma.logGamma(min) + (Gamma.logGamma(max) - logGammaSum(min, max));
        }
        return FastMath.log(d15) + Gamma.logGamma(min) + logGammaMinusLogGammaSum(min, max);
    }

    public static double regularizedBeta(double d10, double d11, double d12, double d13) {
        return regularizedBeta(d10, d11, d12, d13, Integer.MAX_VALUE);
    }

    public static double regularizedBeta(double d10, double d11, double d12, int i10) {
        return regularizedBeta(d10, d11, d12, DEFAULT_EPSILON, i10);
    }

    public static double regularizedBeta(double d10, final double d11, final double d12, double d13, int i10) {
        if (Double.isNaN(d10) || Double.isNaN(d11) || Double.isNaN(d12) || d10 < 0.0d || d10 > 1.0d || d11 <= 0.0d || d12 <= 0.0d) {
            return Double.NaN;
        }
        double d14 = 2.0d + d12 + d11;
        if (d10 > (d11 + 1.0d) / d14) {
            double d15 = 1.0d - d10;
            if (d15 <= (d12 + 1.0d) / d14) {
                return 1.0d - regularizedBeta(d15, d12, d11, d13, i10);
            }
        }
        return (FastMath.exp((((FastMath.log(d10) * d11) + (FastMath.log1p(-d10) * d12)) - FastMath.log(d11)) - logBeta(d11, d12)) * 1.0d) / new ContinuedFraction() {
            @Override
            public double getA(int i11, double d16) {
                return 1.0d;
            }

            @Override
            public double getB(int i11, double d16) {
                if (i11 % 2 == 0) {
                    double d17 = i11 / 2.0d;
                    double d18 = (d12 - d17) * d17 * d16;
                    double d19 = d11;
                    double d20 = d17 * 2.0d;
                    return d18 / (((d19 + d20) - 1.0d) * (d19 + d20));
                }
                double d21 = (i11 - 1.0d) / 2.0d;
                double d22 = d11;
                double d23 = -((d22 + d21) * (d12 + d22 + d21) * d16);
                double d24 = d21 * 2.0d;
                return d23 / ((d22 + d24) * ((d22 + d24) + 1.0d));
            }
        }.evaluate(d10, d13, i10);
    }
}
