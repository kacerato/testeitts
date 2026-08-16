package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.FastMath;

public class HarmonicOscillator implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    private final double amplitude;
    private final double omega;
    private final double phase;

    public static class Parametric implements ParametricUnivariateFunction {
        private void validateParameters(double[] dArr) throws NullArgumentException, DimensionMismatchException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 3) {
                throw new DimensionMismatchException(dArr.length, 3);
            }
        }

        @Override
        public double[] gradient(double d10, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            double d11 = dArr[0];
            double d12 = (dArr[1] * d10) + dArr[2];
            double value = HarmonicOscillator.value(d12, 1.0d);
            double sin = (-d11) * FastMath.sin(d12);
            return new double[]{value, d10 * sin, sin};
        }

        @Override
        public double value(double d10, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return HarmonicOscillator.value((d10 * dArr[1]) + dArr[2], dArr[0]);
        }
    }

    public HarmonicOscillator(double d10, double d11, double d12) {
        this.amplitude = d10;
        this.omega = d11;
        this.phase = d12;
    }

    @Override
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override
    public double value(double d10) {
        return value((this.omega * d10) + this.phase, this.amplitude);
    }

    public static double value(double d10, double d11) {
        return d11 * FastMath.cos(d10);
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        double value = derivativeStructure.getValue();
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr = new double[order];
        double d10 = (this.omega * value) + this.phase;
        dArr[0] = this.amplitude * FastMath.cos(d10);
        if (order > 1) {
            dArr[1] = (-this.amplitude) * this.omega * FastMath.sin(d10);
            double d11 = this.omega;
            double d12 = (-d11) * d11;
            for (int i10 = 2; i10 < order; i10++) {
                dArr[i10] = dArr[i10 - 2] * d12;
            }
        }
        return derivativeStructure.compose(dArr);
    }
}
