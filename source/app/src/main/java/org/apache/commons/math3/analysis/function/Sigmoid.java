package org.apache.commons.math3.analysis.function;

import java.util.Arrays;
import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.FastMath;

public class Sigmoid implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    private final double f100121hi;
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
            double exp = 1.0d / (FastMath.exp(-d10) + 1.0d);
            return new double[]{1.0d - exp, exp};
        }

        @Override
        public double value(double d10, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return Sigmoid.value(d10, dArr[0], dArr[1]);
        }
    }

    public Sigmoid() {
        this(0.0d, 1.0d);
    }

    @Override
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override
    public double value(double d10) {
        return value(d10, this.lo, this.f100121hi);
    }

    public Sigmoid(double d10, double d11) {
        this.lo = d10;
        this.f100121hi = d11;
    }

    public static double value(double d10, double d11, double d12) {
        return d11 + ((d12 - d11) / (FastMath.exp(-d10) + 1.0d));
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        boolean z10;
        int i10 = 1;
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr = new double[order];
        double exp = FastMath.exp(-derivativeStructure.getValue());
        boolean z11 = false;
        if (Double.isInfinite(exp)) {
            dArr[0] = this.lo;
            Arrays.fill(dArr, 1, order, 0.0d);
        } else {
            double[] dArr2 = new double[order];
            double d10 = 1.0d;
            double d11 = 1.0d / (exp + 1.0d);
            double d12 = this.f100121hi - this.lo;
            int i11 = 0;
            while (i11 < order) {
                dArr2[i11] = d10;
                int i12 = i11;
                double d13 = 0.0d;
                while (i12 >= 0) {
                    d13 = (d13 * exp) + dArr2[i12];
                    if (i12 > i10) {
                        int i13 = i12 - 1;
                        dArr2[i13] = (((i11 - i12) + 2) * dArr2[i12 - 2]) - (i13 * dArr2[i13]);
                        z10 = false;
                    } else {
                        z10 = z11;
                        dArr2[z10 ? 1 : 0] = 0.0d;
                    }
                    i12--;
                    z11 = z10;
                    i10 = 1;
                }
                d12 *= d11;
                dArr[i11] = d13 * d12;
                i11++;
                z11 = z11;
                i10 = 1;
                d10 = 1.0d;
            }
            boolean z12 = z11;
            dArr[z12 ? 1 : 0] = dArr[z12 ? 1 : 0] + this.lo;
        }
        return derivativeStructure.compose(dArr);
    }
}
