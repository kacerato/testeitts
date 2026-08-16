package org.apache.commons.math3.analysis.function;

import java.util.Arrays;
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
import org.apache.commons.math3.util.Precision;

public class Gaussian implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    private final double i2s2;
    private final double is;
    private final double mean;
    private final double norm;

    public static class Parametric implements ParametricUnivariateFunction {
        private void validateParameters(double[] dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 3) {
                throw new DimensionMismatchException(dArr.length, 3);
            }
            if (dArr[2] <= 0.0d) {
                throw new NotStrictlyPositiveException(Double.valueOf(dArr[2]));
            }
        }

        @Override
        public double[] gradient(double d10, double... dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            validateParameters(dArr);
            double d11 = dArr[0];
            double d12 = d10 - dArr[1];
            double d13 = dArr[2];
            double d14 = 1.0d / ((d13 * 2.0d) * d13);
            double value = Gaussian.value(d12, 1.0d, d14);
            double d15 = d11 * value * 2.0d * d14 * d12;
            return new double[]{value, d15, (d12 * d15) / d13};
        }

        @Override
        public double value(double d10, double... dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            validateParameters(dArr);
            double d11 = d10 - dArr[1];
            double d12 = dArr[2];
            return Gaussian.value(d11, dArr[0], 1.0d / ((2.0d * d12) * d12));
        }
    }

    public Gaussian(double d10, double d11, double d12) throws NotStrictlyPositiveException {
        if (d12 > 0.0d) {
            this.norm = d10;
            this.mean = d11;
            double d13 = 1.0d / d12;
            this.is = d13;
            this.i2s2 = 0.5d * d13 * d13;
            return;
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d12));
    }

    @Override
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override
    public double value(double d10) {
        return value(d10 - this.mean, this.norm, this.i2s2);
    }

    public static double value(double d10, double d11, double d12) {
        return d11 * FastMath.exp((-d10) * d10 * d12);
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        double d10;
        double value = this.is * (derivativeStructure.getValue() - this.mean);
        int i10 = 1;
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr = new double[order];
        double[] dArr2 = new double[order];
        dArr2[0] = 1.0d;
        double d11 = value * value;
        double exp = this.norm * FastMath.exp((-0.5d) * d11);
        if (exp <= Precision.SAFE_MIN) {
            Arrays.fill(dArr, 0.0d);
        } else {
            dArr[0] = exp;
            int i11 = 1;
            while (i11 < order) {
                dArr2[i11] = -dArr2[i11 - 1];
                int i12 = i11;
                double d12 = 0.0d;
                while (i12 >= 0) {
                    d12 = (d12 * d11) + dArr2[i12];
                    if (i12 > 2) {
                        int i13 = i12 - 1;
                        d10 = d11;
                        dArr2[i12 - 2] = (i13 * dArr2[i13]) - dArr2[i12 - 3];
                        i10 = 1;
                    } else {
                        d10 = d11;
                        i10 = 1;
                        if (i12 == 2) {
                            dArr2[0] = dArr2[1];
                            i12 -= 2;
                            d11 = d10;
                        }
                    }
                    i12 -= 2;
                    d11 = d10;
                }
                double d13 = d11;
                if ((i11 & 1) == i10) {
                    d12 *= value;
                }
                exp *= this.is;
                dArr[i11] = d12 * exp;
                i11++;
                d11 = d13;
            }
        }
        return derivativeStructure.compose(dArr);
    }

    public Gaussian(double d10, double d11) throws NotStrictlyPositiveException {
        this(1.0d / (FastMath.sqrt(6.283185307179586d) * d11), d10, d11);
    }

    public Gaussian() {
        this(0.0d, 1.0d);
    }
}
