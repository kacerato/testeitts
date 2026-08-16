package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

public class SecantSolver extends AbstractUnivariateSolver {
    protected static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public SecantSolver() {
        super(1.0E-6d);
    }

    @Override
    public final double doSolve() throws TooManyEvaluationsException, NoBracketingException {
        double min = getMin();
        double max = getMax();
        double computeObjectiveValue = computeObjectiveValue(min);
        double computeObjectiveValue2 = computeObjectiveValue(max);
        double d10 = 0.0d;
        if (computeObjectiveValue == 0.0d) {
            return min;
        }
        if (computeObjectiveValue2 == 0.0d) {
            return max;
        }
        verifyBracketing(min, max);
        double functionValueAccuracy = getFunctionValueAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double relativeAccuracy = getRelativeAccuracy();
        while (true) {
            double d11 = computeObjectiveValue;
            computeObjectiveValue = computeObjectiveValue2;
            double d12 = min;
            min = max;
            max = min - (((min - d12) * computeObjectiveValue) / (computeObjectiveValue - d11));
            computeObjectiveValue2 = computeObjectiveValue(max);
            if (computeObjectiveValue2 == d10 || FastMath.abs(computeObjectiveValue2) <= functionValueAccuracy || FastMath.abs(max - min) < FastMath.max(relativeAccuracy * FastMath.abs(max), absoluteAccuracy)) {
                return max;
            }
            d10 = 0.0d;
        }
    }

    public SecantSolver(double d10) {
        super(d10);
    }

    public SecantSolver(double d10, double d11) {
        super(d10, d11);
    }
}
