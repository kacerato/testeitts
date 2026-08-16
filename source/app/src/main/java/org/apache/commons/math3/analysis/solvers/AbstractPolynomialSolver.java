package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;

public abstract class AbstractPolynomialSolver extends BaseAbstractUnivariateSolver<PolynomialFunction> implements PolynomialSolver {
    private PolynomialFunction polynomialFunction;

    public AbstractPolynomialSolver(double d10) {
        super(d10);
    }

    public double[] getCoefficients() {
        return this.polynomialFunction.getCoefficients();
    }

    public AbstractPolynomialSolver(double d10, double d11) {
        super(d10, d11);
    }

    @Override
    public void setup(int i10, PolynomialFunction polynomialFunction, double d10, double d11, double d12) {
        super.setup(i10, (int) polynomialFunction, d10, d11, d12);
        this.polynomialFunction = polynomialFunction;
    }

    public AbstractPolynomialSolver(double d10, double d11, double d12) {
        super(d10, d11, d12);
    }
}
