package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

public class MullerSolver extends AbstractUnivariateSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public MullerSolver() {
        this(1.0E-6d);
    }

    private double solve(double d10, double d11, double d12, double d13) throws TooManyEvaluationsException {
        double sqrt;
        long j10;
        double relativeAccuracy = getRelativeAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double functionValueAccuracy = getFunctionValueAccuracy();
        double d14 = (d10 + d11) * 0.5d;
        double d15 = d12;
        double d16 = d13;
        double d17 = d14;
        double computeObjectiveValue = computeObjectiveValue(d14);
        double d18 = Double.POSITIVE_INFINITY;
        double d19 = d10;
        double d20 = d11;
        while (true) {
            double d21 = d17 - d19;
            double d22 = (computeObjectiveValue - d15) / d21;
            double d23 = d20 - d17;
            double d24 = d20 - d19;
            double d25 = (((d16 - computeObjectiveValue) / d23) - d22) / d24;
            double d26 = d22 + (d21 * d25);
            double d27 = (d26 * d26) - ((4.0d * computeObjectiveValue) * d25);
            double d28 = (-2.0d) * computeObjectiveValue;
            double sqrt2 = d17 + (d28 / (d26 + FastMath.sqrt(d27)));
            sqrt = isSequence(d19, sqrt2, d20) ? sqrt2 : d17 + (d28 / (d26 - FastMath.sqrt(d27)));
            double computeObjectiveValue2 = computeObjectiveValue(sqrt);
            if (FastMath.abs(sqrt - d18) <= FastMath.max(relativeAccuracy * FastMath.abs(sqrt), absoluteAccuracy) || FastMath.abs(computeObjectiveValue2) <= functionValueAccuracy) {
                break;
            }
            if ((sqrt >= d17 || d21 <= d24 * 0.95d) && ((sqrt <= d17 || d23 <= d24 * 0.95d) && sqrt != d17)) {
                j10 = 4602678819172646912L;
                if (sqrt >= d17) {
                    d19 = d17;
                }
                if (sqrt >= d17) {
                    d15 = computeObjectiveValue;
                }
                if (sqrt <= d17) {
                    d20 = d17;
                }
                if (sqrt <= d17) {
                    d16 = computeObjectiveValue;
                }
                d17 = sqrt;
                computeObjectiveValue = computeObjectiveValue2;
            } else {
                j10 = 4602678819172646912L;
                double d29 = (d19 + d20) * 0.5d;
                double computeObjectiveValue3 = computeObjectiveValue(d29);
                if (FastMath.signum(d15) + FastMath.signum(computeObjectiveValue3) == 0.0d) {
                    d20 = d29;
                    d16 = computeObjectiveValue3;
                } else {
                    d19 = d29;
                    d15 = computeObjectiveValue3;
                }
                double d30 = (d19 + d20) * 0.5d;
                d17 = d30;
                computeObjectiveValue = computeObjectiveValue(d30);
                sqrt = Double.POSITIVE_INFINITY;
            }
            d18 = sqrt;
        }
        return sqrt;
    }

    @Override
    public double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        double min = getMin();
        double max = getMax();
        double startValue = getStartValue();
        double functionValueAccuracy = getFunctionValueAccuracy();
        verifySequence(min, startValue, max);
        double computeObjectiveValue = computeObjectiveValue(min);
        if (FastMath.abs(computeObjectiveValue) < functionValueAccuracy) {
            return min;
        }
        double computeObjectiveValue2 = computeObjectiveValue(max);
        if (FastMath.abs(computeObjectiveValue2) < functionValueAccuracy) {
            return max;
        }
        double computeObjectiveValue3 = computeObjectiveValue(startValue);
        if (FastMath.abs(computeObjectiveValue3) < functionValueAccuracy) {
            return startValue;
        }
        verifyBracketing(min, max);
        return isBracketing(min, startValue) ? solve(min, startValue, computeObjectiveValue, computeObjectiveValue3) : solve(startValue, max, computeObjectiveValue3, computeObjectiveValue2);
    }

    public MullerSolver(double d10) {
        super(d10);
    }

    public MullerSolver(double d10, double d11) {
        super(d10, d11);
    }
}
