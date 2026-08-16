package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

@Deprecated
public class BrentOptimizer extends BaseAbstractUnivariateOptimizer {
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

    @Override
    public UnivariatePointValuePair doOptimize() {
        double d10;
        boolean z10;
        double d11;
        double d12;
        double d13;
        BrentOptimizer brentOptimizer = this;
        int i10 = 0;
        boolean z11 = getGoalType() == GoalType.MINIMIZE;
        double min = getMin();
        double startValue = getStartValue();
        double max = getMax();
        ConvergenceChecker<UnivariatePointValuePair> convergenceChecker = getConvergenceChecker();
        if (min >= max) {
            min = max;
            max = min;
        }
        double computeObjectiveValue = brentOptimizer.computeObjectiveValue(startValue);
        if (!z11) {
            computeObjectiveValue = -computeObjectiveValue;
        }
        UnivariatePointValuePair univariatePointValuePair = new UnivariatePointValuePair(startValue, z11 ? computeObjectiveValue : -computeObjectiveValue);
        double d14 = computeObjectiveValue;
        double d15 = d14;
        double d16 = d15;
        UnivariatePointValuePair univariatePointValuePair2 = univariatePointValuePair;
        UnivariatePointValuePair univariatePointValuePair3 = null;
        double d17 = 0.0d;
        double d18 = 0.0d;
        double d19 = startValue;
        double d20 = max;
        double d21 = d19;
        while (true) {
            double d22 = (min + d20) * 0.5d;
            ConvergenceChecker<UnivariatePointValuePair> convergenceChecker2 = convergenceChecker;
            int i11 = i10;
            double d23 = d19;
            double abs = (brentOptimizer.relativeThreshold * FastMath.abs(startValue)) + brentOptimizer.absoluteThreshold;
            double d24 = abs * 2.0d;
            if (FastMath.abs(startValue - d22) <= d24 - ((d20 - min) * 0.5d)) {
                return brentOptimizer.best(univariatePointValuePair, brentOptimizer.best(univariatePointValuePair3, univariatePointValuePair2, z11), z11);
            }
            if (FastMath.abs(d17) > abs) {
                double d25 = startValue - d21;
                double d26 = (d14 - d15) * d25;
                double d27 = startValue - d23;
                double d28 = (d14 - d16) * d27;
                d10 = d21;
                double d29 = (d27 * d28) - (d25 * d26);
                double d30 = 2.0d * (d28 - d26);
                if (d30 > 0.0d) {
                    d29 = -d29;
                } else {
                    d30 = -d30;
                }
                double d31 = min - startValue;
                if (d29 <= d30 * d31 || d29 >= (d20 - startValue) * d30 || FastMath.abs(d29) >= FastMath.abs(0.5d * d30 * d17)) {
                    if (startValue < d22) {
                        d31 = d20 - startValue;
                    }
                    d18 = GOLDEN_SECTION * d31;
                    d17 = d31;
                } else {
                    double d32 = d29 / d30;
                    double d33 = startValue + d32;
                    if (d33 - min < d24 || d20 - d33 < d24) {
                        if (startValue <= d22) {
                            d17 = d18;
                            d18 = abs;
                        } else {
                            d32 = -abs;
                        }
                    }
                    d17 = d18;
                    d18 = d32;
                }
            } else {
                d10 = d21;
                double d34 = startValue < d22 ? d20 - startValue : min - startValue;
                d17 = d34;
                d18 = GOLDEN_SECTION * d34;
            }
            double d35 = FastMath.abs(d18) < abs ? d18 >= 0.0d ? abs + startValue : startValue - abs : startValue + d18;
            double computeObjectiveValue2 = brentOptimizer.computeObjectiveValue(d35);
            if (!z11) {
                computeObjectiveValue2 = -computeObjectiveValue2;
            }
            UnivariatePointValuePair univariatePointValuePair4 = new UnivariatePointValuePair(d35, z11 ? computeObjectiveValue2 : -computeObjectiveValue2);
            univariatePointValuePair = brentOptimizer.best(univariatePointValuePair, brentOptimizer.best(univariatePointValuePair2, univariatePointValuePair4, z11), z11);
            if (convergenceChecker2 != null && convergenceChecker2.converged(i11, univariatePointValuePair2, univariatePointValuePair4)) {
                return univariatePointValuePair;
            }
            if (computeObjectiveValue2 <= d14) {
                if (d35 < startValue) {
                    d20 = startValue;
                } else {
                    min = startValue;
                }
                z10 = z11;
                d12 = startValue;
                d15 = d16;
                startValue = d35;
                d16 = d14;
                d14 = computeObjectiveValue2;
                d19 = d10;
            } else {
                if (d35 < startValue) {
                    min = d35;
                } else {
                    d20 = d35;
                }
                if (computeObjectiveValue2 > d16) {
                    z10 = z11;
                    d12 = d10;
                    if (Precision.equals(d12, startValue)) {
                        d11 = d35;
                    } else {
                        if (computeObjectiveValue2 > d15) {
                            d13 = d35;
                            if (!Precision.equals(d23, startValue) && !Precision.equals(d23, d12)) {
                                d19 = d23;
                            }
                        } else {
                            d13 = d35;
                        }
                        d15 = computeObjectiveValue2;
                        d19 = d13;
                    }
                } else {
                    z10 = z11;
                    d11 = d35;
                    d12 = d10;
                }
                d15 = d16;
                d16 = computeObjectiveValue2;
                d19 = d12;
                d12 = d11;
            }
            i10 = i11 + 1;
            convergenceChecker = convergenceChecker2;
            d21 = d12;
            z11 = z10;
            brentOptimizer = this;
            univariatePointValuePair3 = univariatePointValuePair2;
            univariatePointValuePair2 = univariatePointValuePair4;
        }
    }

    public BrentOptimizer(double d10, double d11) {
        this(d10, d11, null);
    }
}
