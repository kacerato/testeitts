package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class BrentOptimizer extends UnivariateOptimizer {
    private static final double GOLDEN_SECTION = (3.0d - FastMath.sqrt(5.0d)) * 0.5d;
    private static final double MIN_RELATIVE_TOLERANCE = FastMath.ulp(1.0d) * 2.0d;
    private final double absoluteThreshold;
    private final double relativeThreshold;

    public BrentOptimizer(double d10, double d11, ConvergenceChecker<UnivariatePointValuePair> convergenceChecker) {
        super(convergenceChecker);
        double d12 = MIN_RELATIVE_TOLERANCE;
        if (d10 < d12) {
            throw new NumberIsTooSmallException(Double.valueOf(d10), Double.valueOf(d12), true);
        }
        if (d11 > 0.0d) {
            this.relativeThreshold = d10;
            this.absoluteThreshold = d11;
            return;
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d11));
    }

    private UnivariatePointValuePair best(UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2, boolean z10) {
        return univariatePointValuePair == null ? univariatePointValuePair2 : univariatePointValuePair2 == null ? univariatePointValuePair : z10 ? univariatePointValuePair.getValue() <= univariatePointValuePair2.getValue() ? univariatePointValuePair : univariatePointValuePair2 : univariatePointValuePair.getValue() >= univariatePointValuePair2.getValue() ? univariatePointValuePair : univariatePointValuePair2;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x011a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public UnivariatePointValuePair doOptimize() {
        UnivariatePointValuePair univariatePointValuePair;
        double d10;
        double computeObjectiveValue;
        ConvergenceChecker<UnivariatePointValuePair> convergenceChecker;
        boolean z10;
        UnivariatePointValuePair univariatePointValuePair2;
        double d11;
        BrentOptimizer brentOptimizer = this;
        boolean z11 = getGoalType() == GoalType.MINIMIZE;
        double min = getMin();
        double startValue = getStartValue();
        double max = getMax();
        ConvergenceChecker<UnivariatePointValuePair> convergenceChecker2 = getConvergenceChecker();
        if (min >= max) {
            min = max;
            max = min;
        }
        double computeObjectiveValue2 = brentOptimizer.computeObjectiveValue(startValue);
        if (!z11) {
            computeObjectiveValue2 = -computeObjectiveValue2;
        }
        UnivariatePointValuePair univariatePointValuePair3 = new UnivariatePointValuePair(startValue, z11 ? computeObjectiveValue2 : -computeObjectiveValue2);
        double d12 = computeObjectiveValue2;
        double d13 = d12;
        double d14 = d13;
        UnivariatePointValuePair univariatePointValuePair4 = univariatePointValuePair3;
        UnivariatePointValuePair univariatePointValuePair5 = null;
        double d15 = 0.0d;
        double d16 = 0.0d;
        double d17 = startValue;
        double d18 = max;
        double d19 = d17;
        while (true) {
            double d20 = (min + d18) * 0.5d;
            ConvergenceChecker<UnivariatePointValuePair> convergenceChecker3 = convergenceChecker2;
            double d21 = d17;
            double d22 = d19;
            double abs = (brentOptimizer.relativeThreshold * FastMath.abs(startValue)) + brentOptimizer.absoluteThreshold;
            double d23 = abs * 2.0d;
            if (FastMath.abs(startValue - d20) <= d23 - ((d18 - min) * 0.5d)) {
                return brentOptimizer.best(univariatePointValuePair3, brentOptimizer.best(univariatePointValuePair5, univariatePointValuePair4, z11), z11);
            }
            if (FastMath.abs(d15) <= abs) {
                univariatePointValuePair = univariatePointValuePair3;
                double d24 = startValue < d20 ? d18 - startValue : min - startValue;
                d10 = GOLDEN_SECTION * d24;
                d15 = d24;
            } else {
                double d25 = startValue - d22;
                double d26 = (d12 - d13) * d25;
                double d27 = startValue - d21;
                double d28 = (d12 - d14) * d27;
                univariatePointValuePair = univariatePointValuePair3;
                double d29 = (d27 * d28) - (d25 * d26);
                double d30 = 2.0d * (d28 - d26);
                if (d30 > 0.0d) {
                    d29 = -d29;
                } else {
                    d30 = -d30;
                }
                double d31 = min - startValue;
                if (d29 <= d30 * d31 || d29 >= (d18 - startValue) * d30 || FastMath.abs(d29) >= FastMath.abs(0.5d * d30 * d15)) {
                    if (startValue < d20) {
                        d31 = d18 - startValue;
                    }
                    d16 = GOLDEN_SECTION * d31;
                    d15 = d31;
                } else {
                    d10 = d29 / d30;
                    double d32 = startValue + d10;
                    if (d32 - min >= d23 && d18 - d32 >= d23) {
                        d15 = d16;
                    } else if (startValue <= d20) {
                        d15 = d16;
                        d16 = abs;
                    } else {
                        d15 = d16;
                        d16 = -abs;
                    }
                }
                double d33 = FastMath.abs(d16) >= abs ? d16 >= 0.0d ? abs + startValue : startValue - abs : startValue + d16;
                computeObjectiveValue = brentOptimizer.computeObjectiveValue(d33);
                if (!z11) {
                    computeObjectiveValue = -computeObjectiveValue;
                }
                double d34 = min;
                UnivariatePointValuePair univariatePointValuePair6 = new UnivariatePointValuePair(d33, !z11 ? computeObjectiveValue : -computeObjectiveValue);
                UnivariatePointValuePair best = brentOptimizer.best(univariatePointValuePair, brentOptimizer.best(univariatePointValuePair4, univariatePointValuePair6, z11), z11);
                if (convergenceChecker3 == null) {
                    convergenceChecker = convergenceChecker3;
                    if (convergenceChecker.converged(getIterations(), univariatePointValuePair4, univariatePointValuePair6)) {
                        return best;
                    }
                } else {
                    convergenceChecker = convergenceChecker3;
                }
                if (computeObjectiveValue > d12) {
                    if (d33 < startValue) {
                        d18 = startValue;
                    } else {
                        d34 = startValue;
                    }
                    z10 = z11;
                    univariatePointValuePair2 = best;
                    d11 = startValue;
                    startValue = d33;
                    d13 = d14;
                    min = d34;
                    d14 = d12;
                    d12 = computeObjectiveValue;
                    d17 = d22;
                } else {
                    if (d33 < startValue) {
                        d34 = d33;
                    } else {
                        d18 = d33;
                    }
                    if (computeObjectiveValue > d14) {
                        boolean z12 = z11;
                        d11 = d22;
                        if (Precision.equals(d11, startValue)) {
                            univariatePointValuePair2 = best;
                            z10 = z12;
                        } else {
                            if (computeObjectiveValue > d13) {
                                univariatePointValuePair2 = best;
                                z10 = z12;
                                if (!Precision.equals(d21, startValue) && !Precision.equals(d21, d11)) {
                                    d17 = d21;
                                    min = d34;
                                }
                            } else {
                                univariatePointValuePair2 = best;
                                z10 = z12;
                            }
                            d13 = computeObjectiveValue;
                            min = d34;
                            d17 = d33;
                        }
                    } else {
                        z10 = z11;
                        univariatePointValuePair2 = best;
                        d11 = d22;
                    }
                    d13 = d14;
                    min = d34;
                    d14 = computeObjectiveValue;
                    double d35 = d11;
                    d11 = d33;
                    d17 = d35;
                }
                incrementIterationCount();
                convergenceChecker2 = convergenceChecker;
                univariatePointValuePair3 = univariatePointValuePair2;
                univariatePointValuePair5 = univariatePointValuePair4;
                univariatePointValuePair4 = univariatePointValuePair6;
                d19 = d11;
                z11 = z10;
                brentOptimizer = this;
            }
            d16 = d10;
            if (FastMath.abs(d16) >= abs) {
            }
            computeObjectiveValue = brentOptimizer.computeObjectiveValue(d33);
            if (!z11) {
            }
            double d342 = min;
            UnivariatePointValuePair univariatePointValuePair62 = new UnivariatePointValuePair(d33, !z11 ? computeObjectiveValue : -computeObjectiveValue);
            UnivariatePointValuePair best2 = brentOptimizer.best(univariatePointValuePair, brentOptimizer.best(univariatePointValuePair4, univariatePointValuePair62, z11), z11);
            if (convergenceChecker3 == null) {
            }
            if (computeObjectiveValue > d12) {
            }
            incrementIterationCount();
            convergenceChecker2 = convergenceChecker;
            univariatePointValuePair3 = univariatePointValuePair2;
            univariatePointValuePair5 = univariatePointValuePair4;
            univariatePointValuePair4 = univariatePointValuePair62;
            d19 = d11;
            z11 = z10;
            brentOptimizer = this;
        }
    }

    public BrentOptimizer(double d10, double d11) {
        this(d10, d11, null);
    }
}
