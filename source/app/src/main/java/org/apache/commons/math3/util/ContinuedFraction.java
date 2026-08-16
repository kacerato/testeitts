package org.apache.commons.math3.util;

import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public abstract class ContinuedFraction {
    private static final double DEFAULT_EPSILON = 1.0E-8d;

    public double evaluate(double d10) throws ConvergenceException {
        return evaluate(d10, 1.0E-8d, Integer.MAX_VALUE);
    }

    public abstract double getA(int i10, double d10);

    public abstract double getB(int i10, double d10);

    public double evaluate(double d10, double d11) throws ConvergenceException {
        return evaluate(d10, d11, Integer.MAX_VALUE);
    }

    public double evaluate(double d10, int i10) throws ConvergenceException, MaxCountExceededException {
        return evaluate(d10, 1.0E-8d, i10);
    }

    public double evaluate(double d10, double d11, int i10) throws ConvergenceException, MaxCountExceededException {
        double a10 = getA(0, d10);
        if (Precision.equals(a10, 0.0d, 1.0E-50d)) {
            a10 = 1.0E-50d;
        }
        int i11 = 1;
        double d12 = 0.0d;
        double d13 = a10;
        while (i11 < i10) {
            double a11 = getA(i11, d10);
            double b10 = getB(i11, d10);
            double d14 = (d12 * b10) + a11;
            if (Precision.equals(d14, 0.0d, 1.0E-50d)) {
                d14 = 1.0E-50d;
            }
            double d15 = a11 + (b10 / a10);
            a10 = Precision.equals(d15, 0.0d, 1.0E-50d) ? 1.0E-50d : d15;
            d12 = 1.0d / d14;
            double d16 = a10 * d12;
            d13 *= d16;
            if (!Double.isInfinite(d13)) {
                if (Double.isNaN(d13)) {
                    throw new ConvergenceException(LocalizedFormats.CONTINUED_FRACTION_NAN_DIVERGENCE, Double.valueOf(d10));
                }
                if (FastMath.abs(d16 - 1.0d) < d11) {
                    break;
                }
                i11++;
            } else {
                throw new ConvergenceException(LocalizedFormats.CONTINUED_FRACTION_INFINITY_DIVERGENCE, Double.valueOf(d10));
            }
        }
        if (i11 < i10) {
            return d13;
        }
        throw new MaxCountExceededException(LocalizedFormats.NON_CONVERGENT_CONTINUED_FRACTION, Integer.valueOf(i10), Double.valueOf(d10));
    }
}
