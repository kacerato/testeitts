package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;

public interface BaseUnivariateSolver<FUNC extends UnivariateFunction> {
    double getAbsoluteAccuracy();

    int getEvaluations();

    double getFunctionValueAccuracy();

    int getMaxEvaluations();

    double getRelativeAccuracy();

    double solve(int i10, FUNC func, double d10);

    double solve(int i10, FUNC func, double d10, double d11) throws MathIllegalArgumentException, TooManyEvaluationsException;

    double solve(int i10, FUNC func, double d10, double d11, double d12) throws MathIllegalArgumentException, TooManyEvaluationsException;
}
