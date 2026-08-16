package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;

public class Logit implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    private final double f100119hi;
    private final double lo;

    public static class Parametric implements ParametricUnivariateFunction {
        private void validateParameters(double[] dArr) throws NullArgumentException, DimensionMismatchException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 2) {
                throw new DimensionMismatchException(dArr.length, 2);
            }
        }

        @Override
        public double[] gradient(double d10, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return new double[]{1.0d / (dArr[0] - d10), 1.0d / (dArr[1] - d10)};
        }

        @Override
        public double value(double d10, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return Logit.value(d10, dArr[0], dArr[1]);
        }
    }

    public Logit() {
        this(0.0d, 1.0d);
    }

    @Override
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override
    public double value(double d10) throws OutOfRangeException {
        return value(d10, this.lo, this.f100119hi);
    }

    public Logit(double d10, double d11) {
        this.lo = d10;
        this.f100119hi = d11;
    }

    public static double value(double d10, double d11, double d12) throws OutOfRangeException {
        if (d10 >= d11 && d10 <= d12) {
            return FastMath.log((d10 - d11) / (d12 - d10));
        }
        throw new OutOfRangeException(Double.valueOf(d10), Double.valueOf(d11), Double.valueOf(d12));
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws OutOfRangeException {
        double value = derivativeStructure.getValue();
        if (value >= this.lo && value <= this.f100119hi) {
            int order = derivativeStructure.getOrder() + 1;
            double[] dArr = new double[order];
            double log = FastMath.log((value - this.lo) / (this.f100119hi - value));
            dArr[0] = log;
            if (Double.isInfinite(log)) {
                if (order > 1) {
                    dArr[1] = Double.POSITIVE_INFINITY;
                }
                for (int i10 = 2; i10 < order; i10++) {
                    dArr[i10] = dArr[i10 - 2];
                }
            } else {
                double d10 = 1.0d / (value - this.lo);
                double d11 = 1.0d / (this.f100119hi - value);
                double d12 = d10;
                double d13 = d11;
                for (int i11 = 1; i11 < order; i11++) {
                    dArr[i11] = d12 + d13;
                    d12 *= (-i11) * d10;
                    d13 *= i11 * d11;
                }
            }
            return derivativeStructure.compose(dArr);
        }
        throw new OutOfRangeException(Double.valueOf(value), Double.valueOf(this.lo), Double.valueOf(this.f100119hi));
    }
}
