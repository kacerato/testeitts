package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;

public class Inverse implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    @Override
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override
    public double value(double d10) {
        return 1.0d / d10;
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        return derivativeStructure.reciprocal();
    }
}
