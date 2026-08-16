package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

public class MullerSolver2 extends AbstractUnivariateSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public MullerSolver2() {
        this(1.0E-6d);
    }

    @Override
    public double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        double sqrt;
        double random;
        MullerSolver2 mullerSolver2 = this;
        double min = getMin();
        double max = getMax();
        mullerSolver2.verifyInterval(min, max);
        double relativeAccuracy = getRelativeAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double functionValueAccuracy = getFunctionValueAccuracy();
        double computeObjectiveValue = mullerSolver2.computeObjectiveValue(min);
        if (FastMath.abs(computeObjectiveValue) < functionValueAccuracy) {
            return min;
        }
        double computeObjectiveValue2 = mullerSolver2.computeObjectiveValue(max);
        if (FastMath.abs(computeObjectiveValue2) < functionValueAccuracy) {
            return max;
        }
        if (computeObjectiveValue * computeObjectiveValue2 > 0.0d) {
            throw new NoBracketingException(min, max, computeObjectiveValue, computeObjectiveValue2);
        }
        double d10 = (min + max) * 0.5d;
        double d11 = min;
        double d12 = max;
        double d13 = Double.POSITIVE_INFINITY;
        double d14 = computeObjectiveValue2;
        double computeObjectiveValue3 = mullerSolver2.computeObjectiveValue(d10);
        double d15 = d10;
        double d16 = computeObjectiveValue;
        while (true) {
            double d17 = d15 - d12;
            double d18 = d17 / (d12 - d11);
            double d19 = d18 + 1.0d;
            double d20 = ((computeObjectiveValue3 - (d19 * d14)) + (d18 * d16)) * d18;
            double d21 = ((((d18 * 2.0d) + 1.0d) * computeObjectiveValue3) - ((d19 * d19) * d14)) + (d18 * d18 * d16);
            double d22 = d19 * computeObjectiveValue3;
            double d23 = d21 * d21;
            double d24 = d23 - ((d20 * 4.0d) * d22);
            if (d24 >= 0.0d) {
                sqrt = d21 + FastMath.sqrt(d24);
                double sqrt2 = d21 - FastMath.sqrt(d24);
                if (FastMath.abs(sqrt) <= FastMath.abs(sqrt2)) {
                    sqrt = sqrt2;
                }
            } else {
                sqrt = FastMath.sqrt(d23 - d24);
            }
            if (sqrt != 0.0d) {
                random = d15 - (((d22 * 2.0d) * d17) / sqrt);
                while (true) {
                    if (random != d12 && random != d15) {
                        break;
                    }
                    random += absoluteAccuracy;
                }
            } else {
                random = (FastMath.random() * (max - min)) + min;
                d13 = Double.POSITIVE_INFINITY;
            }
            double computeObjectiveValue4 = mullerSolver2.computeObjectiveValue(random);
            if (FastMath.abs(random - d13) <= FastMath.max(relativeAccuracy * FastMath.abs(random), absoluteAccuracy) || FastMath.abs(computeObjectiveValue4) <= functionValueAccuracy) {
                break;
            }
            mullerSolver2 = this;
            d13 = random;
            d16 = d14;
            d14 = computeObjectiveValue3;
            computeObjectiveValue3 = computeObjectiveValue4;
            d11 = d12;
            d12 = d15;
            d15 = d13;
        }
        return random;
    }

    public MullerSolver2(double d10) {
        super(d10);
    }

    public MullerSolver2(double d10, double d11) {
        super(d10, d11);
    }
}
