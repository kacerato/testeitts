package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class NewtonSolver extends AbstractDifferentiableUnivariateSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public NewtonSolver() {
        this(1.0E-6d);
    }

    @Override
    public double doSolve() throws TooManyEvaluationsException {
        double startValue = getStartValue();
        double absoluteAccuracy = getAbsoluteAccuracy();
        while (true) {
            double computeObjectiveValue = startValue - (computeObjectiveValue(startValue) / computeDerivativeObjectiveValue(startValue));
            if (FastMath.abs(computeObjectiveValue - startValue) <= absoluteAccuracy) {
                return computeObjectiveValue;
            }
            startValue = computeObjectiveValue;
        }
    }

    public NewtonSolver(double d10) {
        super(d10);
    }

    @Override
    public double solve(int i10, DifferentiableUnivariateFunction differentiableUnivariateFunction, double d10, double d11) throws TooManyEvaluationsException {
        return super.solve(i10, differentiableUnivariateFunction, UnivariateSolverUtils.midpoint(d10, d11));
    }
}
