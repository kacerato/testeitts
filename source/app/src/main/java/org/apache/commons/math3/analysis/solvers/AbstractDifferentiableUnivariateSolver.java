package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;

@Deprecated
public abstract class AbstractDifferentiableUnivariateSolver extends BaseAbstractUnivariateSolver<DifferentiableUnivariateFunction> implements DifferentiableUnivariateSolver {
    private UnivariateFunction functionDerivative;

    public AbstractDifferentiableUnivariateSolver(double d10) {
        super(d10);
    }

    public double computeDerivativeObjectiveValue(double d10) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.functionDerivative.value(d10);
    }

    public AbstractDifferentiableUnivariateSolver(double d10, double d11, double d12) {
        super(d10, d11, d12);
    }

    @Override
    public void setup(int i10, DifferentiableUnivariateFunction differentiableUnivariateFunction, double d10, double d11, double d12) {
        super.setup(i10, (int) differentiableUnivariateFunction, d10, d11, d12);
        this.functionDerivative = differentiableUnivariateFunction.derivative();
    }
}
