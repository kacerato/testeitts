package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;

public class Identity implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    @Override
    public double value(double d10) {
        return d10;
    }

    @Override
    @Deprecated
    public DifferentiableUnivariateFunction derivative() {
        return new Constant(1.0d);
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        return derivativeStructure;
    }
}
