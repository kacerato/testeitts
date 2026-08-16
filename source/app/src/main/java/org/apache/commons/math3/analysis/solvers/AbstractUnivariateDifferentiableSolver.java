package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;

public abstract class AbstractUnivariateDifferentiableSolver extends BaseAbstractUnivariateSolver<UnivariateDifferentiableFunction> implements UnivariateDifferentiableSolver {
    private UnivariateDifferentiableFunction function;

    public AbstractUnivariateDifferentiableSolver(double d10) {
        super(d10);
    }

    public DerivativeStructure computeObjectiveValueAndDerivative(double d10) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.function.value(new DerivativeStructure(1, 1, 0, d10));
    }

    public AbstractUnivariateDifferentiableSolver(double d10, double d11, double d12) {
        super(d10, d11, d12);
    }

    @Override
    public void setup(int i10, UnivariateDifferentiableFunction univariateDifferentiableFunction, double d10, double d11, double d12) {
        super.setup(i10, (int) univariateDifferentiableFunction, d10, d11, d12);
        this.function = univariateDifferentiableFunction;
    }
}
