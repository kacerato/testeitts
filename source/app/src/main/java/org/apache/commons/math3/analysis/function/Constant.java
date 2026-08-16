package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;

public class Constant implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    private final double f100113c;

    public Constant(double d10) {
        this.f100113c = d10;
    }

    @Override
    public double value(double d10) {
        return this.f100113c;
    }

    @Override
    @Deprecated
    public DifferentiableUnivariateFunction derivative() {
        return new Constant(0.0d);
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        return new DerivativeStructure(derivativeStructure.getFreeParameters(), derivativeStructure.getOrder(), this.f100113c);
    }
}
