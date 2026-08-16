package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

public class NewtonRaphsonSolver extends AbstractUnivariateDifferentiableSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public NewtonRaphsonSolver() {
        this(1.0E-6d);
    }

    @Override
    public double doSolve() throws TooManyEvaluationsException {
        double startValue = getStartValue();
        double absoluteAccuracy = getAbsoluteAccuracy();
        while (true) {
            DerivativeStructure computeObjectiveValueAndDerivative = computeObjectiveValueAndDerivative(startValue);
            double value = startValue - (computeObjectiveValueAndDerivative.getValue() / computeObjectiveValueAndDerivative.getPartialDerivative(1));
            if (FastMath.abs(value - startValue) <= absoluteAccuracy) {
                return value;
            }
            startValue = value;
        }
    }

    public NewtonRaphsonSolver(double d10) {
        super(d10);
    }

    @Override
    public double solve(int i10, UnivariateDifferentiableFunction univariateDifferentiableFunction, double d10, double d11) throws TooManyEvaluationsException {
        return super.solve(i10, univariateDifferentiableFunction, UnivariateSolverUtils.midpoint(d10, d11));
    }
}
