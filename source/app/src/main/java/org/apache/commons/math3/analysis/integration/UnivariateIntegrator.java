package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;

public interface UnivariateIntegrator {
    double getAbsoluteAccuracy();

    int getEvaluations();

    int getIterations();

    int getMaximalIterationCount();

    int getMinimalIterationCount();

    double getRelativeAccuracy();

    double integrate(int i10, UnivariateFunction univariateFunction, double d10, double d11) throws TooManyEvaluationsException, MaxCountExceededException, MathIllegalArgumentException, NullArgumentException;
}
