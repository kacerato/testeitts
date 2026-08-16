package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.FastMath;

public class Logistic implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    private final double f100114a;

    private final double f100115b;

    private final double f100116k;

    private final double f100117m;
    private final double oneOverN;

    private final double f100118q;

    public static class Parametric implements ParametricUnivariateFunction {
        private void validateParameters(double[] dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 6) {
                throw new DimensionMismatchException(dArr.length, 6);
            }
            if (dArr[5] <= 0.0d) {
                throw new NotStrictlyPositiveException(Double.valueOf(dArr[5]));
            }
        }

        @Override
        public double[] gradient(double d10, double... dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            validateParameters(dArr);
            double d11 = dArr[2];
            double d12 = dArr[3];
            double d13 = dArr[1] - d10;
            double d14 = 1.0d / dArr[5];
            double exp = FastMath.exp(d11 * d13);
            double d15 = d12 * exp;
            double d16 = d15 + 1.0d;
            double pow = ((dArr[0] - dArr[4]) * d14) / FastMath.pow(d16, d14);
            double d17 = (-pow) / d16;
            return new double[]{Logistic.value(d13, 1.0d, d11, d12, 0.0d, d14), d17 * d11 * d15, d15 * d17 * d13, d17 * exp, Logistic.value(d13, 0.0d, d11, d12, 1.0d, d14), pow * FastMath.log(d16) * d14};
        }

        @Override
        public double value(double d10, double... dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            validateParameters(dArr);
            return Logistic.value(dArr[1] - d10, dArr[0], dArr[2], dArr[3], dArr[4], 1.0d / dArr[5]);
        }
    }

    public Logistic(double d10, double d11, double d12, double d13, double d14, double d15) throws NotStrictlyPositiveException {
        if (d15 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d15));
        }
        this.f100116k = d10;
        this.f100117m = d11;
        this.f100115b = d12;
        this.f100118q = d13;
        this.f100114a = d14;
        this.oneOverN = 1.0d / d15;
    }

    @Override
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override
    public double value(double d10) {
        return value(this.f100117m - d10, this.f100116k, this.f100115b, this.f100118q, this.f100114a, this.oneOverN);
    }

    public static double value(double d10, double d11, double d12, double d13, double d14, double d15) {
        return d14 + ((d11 - d14) / FastMath.pow((d13 * FastMath.exp(d12 * d10)) + 1.0d, d15));
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        return derivativeStructure.negate().add(this.f100117m).multiply(this.f100115b).exp().multiply(this.f100118q).add(1.0d).pow(this.oneOverN).reciprocal().multiply(this.f100116k - this.f100114a).add(this.f100114a);
    }
}
