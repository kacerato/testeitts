package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;

public abstract class AbstractUnivariateSolver extends BaseAbstractUnivariateSolver<UnivariateFunction> implements UnivariateSolver {
    public AbstractUnivariateSolver(double d10) {
        super(d10);
    }

    public AbstractUnivariateSolver(double d10, double d11) {
        super(d10, d11);
    }

    public AbstractUnivariateSolver(double d10, double d11, double d12) {
        super(d10, d11, d12);
    }
}
