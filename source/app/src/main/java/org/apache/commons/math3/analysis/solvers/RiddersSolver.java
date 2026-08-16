package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

public class RiddersSolver extends AbstractUnivariateSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public RiddersSolver() {
        this(1.0E-6d);
    }

    @Override
    public double doSolve() throws TooManyEvaluationsException, NoBracketingException {
        double min = getMin();
        double max = getMax();
        double computeObjectiveValue = computeObjectiveValue(min);
        double computeObjectiveValue2 = computeObjectiveValue(max);
        if (computeObjectiveValue == 0.0d) {
            return min;
        }
        if (computeObjectiveValue2 == 0.0d) {
            return max;
        }
        verifyBracketing(min, max);
        double absoluteAccuracy = getAbsoluteAccuracy();
        double functionValueAccuracy = getFunctionValueAccuracy();
        double relativeAccuracy = getRelativeAccuracy();
        double d10 = Double.POSITIVE_INFINITY;
        while (true) {
            double d11 = (min + max) * 0.5d;
            double computeObjectiveValue3 = computeObjectiveValue(d11);
            if (FastMath.abs(computeObjectiveValue3) <= functionValueAccuracy) {
                return d11;
            }
            double signum = ((FastMath.signum(computeObjectiveValue2) * FastMath.signum(computeObjectiveValue3)) * (d11 - min)) / FastMath.sqrt(1.0d - ((computeObjectiveValue * computeObjectiveValue2) / (computeObjectiveValue3 * computeObjectiveValue3)));
            double d12 = min;
            double d13 = d11 - signum;
            double computeObjectiveValue4 = computeObjectiveValue(d13);
            double d14 = max;
            if (FastMath.abs(d13 - d10) <= FastMath.max(relativeAccuracy * FastMath.abs(d13), absoluteAccuracy) || FastMath.abs(computeObjectiveValue4) <= functionValueAccuracy) {
                return d13;
            }
            if (signum > 0.0d) {
                if (FastMath.signum(computeObjectiveValue) + FastMath.signum(computeObjectiveValue4) == 0.0d) {
                    d14 = d13;
                    computeObjectiveValue2 = computeObjectiveValue4;
                } else {
                    d12 = d13;
                    d14 = d11;
                    computeObjectiveValue2 = computeObjectiveValue3;
                    computeObjectiveValue = computeObjectiveValue4;
                }
            } else if (FastMath.signum(computeObjectiveValue2) + FastMath.signum(computeObjectiveValue4) == 0.0d) {
                d12 = d13;
                computeObjectiveValue = computeObjectiveValue4;
            } else {
                d14 = d13;
                d12 = d11;
                computeObjectiveValue = computeObjectiveValue3;
                computeObjectiveValue2 = computeObjectiveValue4;
            }
            d10 = d13;
            min = d12;
            max = d14;
        }
    }

    public RiddersSolver(double d10) {
        super(d10);
    }

    public RiddersSolver(double d10, double d11) {
        super(d10, d11);
    }
}
