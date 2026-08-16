package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;

public interface BracketedUnivariateSolver<FUNC extends UnivariateFunction> extends BaseUnivariateSolver<FUNC> {
    double solve(int i10, FUNC func, double d10, double d11, double d12, AllowedSolution allowedSolution);

    double solve(int i10, FUNC func, double d10, double d11, AllowedSolution allowedSolution);
}
