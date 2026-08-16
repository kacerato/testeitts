package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.RealFieldUnivariateFunction;

public interface BracketedRealFieldUnivariateSolver<T extends RealFieldElement<T>> {
    T getAbsoluteAccuracy();

    int getEvaluations();

    T getFunctionValueAccuracy();

    int getMaxEvaluations();

    T getRelativeAccuracy();

    T solve(int i10, RealFieldUnivariateFunction<T> realFieldUnivariateFunction, T t10, T t11, T t12, AllowedSolution allowedSolution);

    T solve(int i10, RealFieldUnivariateFunction<T> realFieldUnivariateFunction, T t10, T t11, AllowedSolution allowedSolution);
}
