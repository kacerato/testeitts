package org.apache.commons.math3.distribution;

import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

final class SaddlePointExpansion {
    private static final double HALF_LOG_2_PI = FastMath.log(6.283185307179586d) * 0.5d;
    private static final double[] EXACT_STIRLING_ERRORS = {0.0d, 0.15342640972002736d, 0.08106146679532726d, 0.05481412105191765d, 0.0413406959554093d, 0.03316287351993629d, 0.02767792568499834d, 0.023746163656297496d, 0.020790672103765093d, 0.018488450532673187d, 0.016644691189821193d, 0.015134973221917378d, 0.013876128823070748d, 0.012810465242920227d, 0.01189670994589177d, 0.011104559758206917d, 0.010411265261972096d, 0.009799416126158804d, 0.009255462182712733d, 0.008768700134139386d, 0.00833056343336287d, 0.00793411456431402d, 0.007573675487951841d, 0.007244554301320383d, 0.00694284010720953d, 0.006665247032707682d, 0.006408994188004207d, 0.006171712263039458d, 0.0059513701127588475d, 0.0057462165130101155d, 0.005554733551962801d};

    private SaddlePointExpansion() {
    }

    public static double getDeviancePart(double d10, double d11) {
        double d12 = d10 - d11;
        double d13 = d10 + d11;
        if (FastMath.abs(d12) >= 0.1d * d13) {
            return ((FastMath.log(d10 / d11) * d10) + d11) - d10;
        }
        double d14 = d12 / d13;
        double d15 = d12 * d14;
        double d16 = d10 * 2.0d * d14;
        double d17 = d14 * d14;
        double d18 = Double.NaN;
        int i10 = 1;
        while (d15 != d18) {
            d16 *= d17;
            double d19 = (d16 / ((i10 * 2) + 1)) + d15;
            i10++;
            double d20 = d15;
            d15 = d19;
            d18 = d20;
        }
        return d15;
    }

    public static double getStirlingError(double d10) {
        if (d10 < 15.0d) {
            double d11 = 2.0d * d10;
            return FastMath.floor(d11) == d11 ? EXACT_STIRLING_ERRORS[(int) d11] : ((Gamma.logGamma(1.0d + d10) - ((0.5d + d10) * FastMath.log(d10))) + d10) - HALF_LOG_2_PI;
        }
        double d12 = d10 * d10;
        return (0.08333333333333333d - ((0.002777777777777778d - ((7.936507936507937E-4d - ((5.952380952380953E-4d - (8.417508417508417E-4d / d12)) / d12)) / d12)) / d12)) / d10;
    }

    public static double logBinomialProbability(int i10, int i11, double d10, double d11) {
        double d12;
        double log;
        if (i10 == 0) {
            if (d10 < 0.1d) {
                double d13 = i11;
                return (-getDeviancePart(d13, d11 * d13)) - (d13 * d10);
            }
            d12 = i11;
            log = FastMath.log(d11);
        } else {
            if (i10 != i11) {
                double d14 = i11;
                double d15 = i10;
                double d16 = i11 - i10;
                return (FastMath.log(((d15 * 6.283185307179586d) * d16) / d14) * (-0.5d)) + ((((getStirlingError(d14) - getStirlingError(d15)) - getStirlingError(d16)) - getDeviancePart(d15, d10 * d14)) - getDeviancePart(d16, d11 * d14));
            }
            if (d11 < 0.1d) {
                double d17 = i11;
                return (-getDeviancePart(d17, d10 * d17)) - (d17 * d11);
            }
            d12 = i11;
            log = FastMath.log(d10);
        }
        return d12 * log;
    }
}
