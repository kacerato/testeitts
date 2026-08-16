package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class BrentSolver extends AbstractUnivariateSolver {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    public BrentSolver() {
        this(1.0E-6d);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private double brent(double d10, double d11, double d12, double d13) {
        double d14;
        double d15;
        double d16;
        double computeObjectiveValue;
        double d17;
        double d18;
        double d19;
        double absoluteAccuracy = getAbsoluteAccuracy();
        double relativeAccuracy = getRelativeAccuracy();
        double d20 = d10;
        double d21 = d11;
        double d22 = d12;
        double d23 = d22;
        double d24 = d13;
        double d25 = d11 - d10;
        double d26 = d25;
        double d27 = d20;
        while (true) {
            if (FastMath.abs(d22) < FastMath.abs(d24)) {
                d20 = d27;
                d27 = d21;
                d23 = d22;
                d22 = d24;
            } else {
                double d28 = d23;
                d23 = d24;
                d24 = d28;
                double d29 = d20;
                d20 = d21;
                d21 = d29;
            }
            double abs = (relativeAccuracy * 2.0d * FastMath.abs(d20)) + absoluteAccuracy;
            double d30 = (d27 - d20) * 0.5d;
            if (FastMath.abs(d30) <= abs) {
                break;
            }
            double d31 = absoluteAccuracy;
            if (Precision.equals(d23, 0.0d)) {
                break;
            }
            if (FastMath.abs(d25) >= abs && FastMath.abs(d24) > FastMath.abs(d23)) {
                double d32 = d23 / d24;
                if (d21 == d27) {
                    d18 = 2.0d * d30 * d32;
                    d19 = 1.0d - d32;
                } else {
                    double d33 = d24 / d22;
                    double d34 = d23 / d22;
                    double d35 = 2.0d * d30 * d33 * (d33 - d34);
                    double d36 = d34 - 1.0d;
                    d18 = (d35 - ((d20 - d21) * d36)) * d32;
                    d19 = (d33 - 1.0d) * d36 * (d32 - 1.0d);
                }
                double d37 = d18;
                double d38 = d19;
                if (d37 > 0.0d) {
                    d38 = -d38;
                } else {
                    d37 = -d37;
                }
                if (d37 < ((1.5d * d30) * d38) - FastMath.abs(abs * d38) && d37 < FastMath.abs(d25 * 0.5d * d38)) {
                    d14 = d37 / d38;
                    if (FastMath.abs(d14) <= abs) {
                        d15 = d20 + d14;
                    } else if (d30 > 0.0d) {
                        d16 = d27;
                        d15 = d20 + abs;
                        computeObjectiveValue = computeObjectiveValue(d15);
                        if ((computeObjectiveValue > 0.0d || d22 <= 0.0d) && (computeObjectiveValue > 0.0d || d22 > 0.0d)) {
                            d17 = d16;
                        } else {
                            d14 = d15 - d20;
                            d26 = d14;
                            d17 = d20;
                            d22 = d23;
                        }
                        d27 = d17;
                        absoluteAccuracy = d31;
                        d25 = d26;
                        d26 = d14;
                        d21 = d15;
                        d24 = computeObjectiveValue;
                    } else {
                        d15 = d20 - abs;
                    }
                    d16 = d27;
                    computeObjectiveValue = computeObjectiveValue(d15);
                    if (computeObjectiveValue > 0.0d) {
                    }
                    d17 = d16;
                    d27 = d17;
                    absoluteAccuracy = d31;
                    d25 = d26;
                    d26 = d14;
                    d21 = d15;
                    d24 = computeObjectiveValue;
                }
            }
            d14 = d30;
            d26 = d14;
            if (FastMath.abs(d14) <= abs) {
            }
            d16 = d27;
            computeObjectiveValue = computeObjectiveValue(d15);
            if (computeObjectiveValue > 0.0d) {
            }
            d17 = d16;
            d27 = d17;
            absoluteAccuracy = d31;
            d25 = d26;
            d26 = d14;
            d21 = d15;
            d24 = computeObjectiveValue;
        }
        return d20;
    }

    @Override
    public double doSolve() throws NoBracketingException, TooManyEvaluationsException, NumberIsTooLargeException {
        double min = getMin();
        double max = getMax();
        double startValue = getStartValue();
        double functionValueAccuracy = getFunctionValueAccuracy();
        verifySequence(min, startValue, max);
        double computeObjectiveValue = computeObjectiveValue(startValue);
        if (FastMath.abs(computeObjectiveValue) <= functionValueAccuracy) {
            return startValue;
        }
        double computeObjectiveValue2 = computeObjectiveValue(min);
        if (FastMath.abs(computeObjectiveValue2) <= functionValueAccuracy) {
            return min;
        }
        if (computeObjectiveValue * computeObjectiveValue2 < 0.0d) {
            return brent(min, startValue, computeObjectiveValue2, computeObjectiveValue);
        }
        double computeObjectiveValue3 = computeObjectiveValue(max);
        if (FastMath.abs(computeObjectiveValue3) <= functionValueAccuracy) {
            return max;
        }
        if (computeObjectiveValue * computeObjectiveValue3 < 0.0d) {
            return brent(startValue, max, computeObjectiveValue, computeObjectiveValue3);
        }
        throw new NoBracketingException(min, max, computeObjectiveValue2, computeObjectiveValue3);
    }

    public BrentSolver(double d10) {
        super(d10);
    }

    public BrentSolver(double d10, double d11) {
        super(d10, d11);
    }

    public BrentSolver(double d10, double d11, double d12) {
        super(d10, d11, d12);
    }
}
