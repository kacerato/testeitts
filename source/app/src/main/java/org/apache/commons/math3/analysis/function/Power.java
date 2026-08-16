package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.util.FastMath;

public class Power implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    private final double f100120p;

    public Power(double d10) {
        this.f100120p = d10;
    }

    @Override
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override
    public double value(double d10) {
        return FastMath.pow(d10, this.f100120p);
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        return derivativeStructure.pow(this.f100120p);
    }
}
