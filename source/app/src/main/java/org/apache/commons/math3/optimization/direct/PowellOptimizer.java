package org.apache.commons.math3.optimization.direct;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.univariate.BracketFinder;
import org.apache.commons.math3.optimization.univariate.BrentOptimizer;
import org.apache.commons.math3.optimization.univariate.SimpleUnivariateValueChecker;
import org.apache.commons.math3.optimization.univariate.UnivariatePointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
public class PowellOptimizer extends BaseAbstractMultivariateOptimizer<MultivariateFunction> implements MultivariateOptimizer {
    private static final double MIN_RELATIVE_TOLERANCE = FastMath.ulp(1.0d) * 2.0d;
    private final double absoluteThreshold;
    private final LineSearch line;
    private final double relativeThreshold;

    public class LineSearch extends BrentOptimizer {
        private static final double ABS_TOL_UNUSED = Double.MIN_VALUE;
        private static final double REL_TOL_UNUSED = 1.0E-15d;
        private final BracketFinder bracket;

        public LineSearch(double d10, double d11) {
            super(1.0E-15d, Double.MIN_VALUE, new SimpleUnivariateValueChecker(d10, d11));
            this.bracket = new BracketFinder();
        }

        public UnivariatePointValuePair search(final double[] dArr, final double[] dArr2) {
            final int length = dArr.length;
            UnivariateFunction univariateFunction = new UnivariateFunction() {
                @Override
                public double value(double d10) {
                    double[] dArr3 = new double[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        dArr3[i10] = dArr[i10] + (dArr2[i10] * d10);
                    }
                    return PowellOptimizer.this.computeObjectiveValue(dArr3);
                }
            };
            GoalType goalType = PowellOptimizer.this.getGoalType();
            this.bracket.search(univariateFunction, goalType, 0.0d, 1.0d);
            return optimize(Integer.MAX_VALUE, univariateFunction, goalType, this.bracket.getLo(), this.bracket.getHi(), this.bracket.getMid());
        }
    }

    public PowellOptimizer(double d10, double d11, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(d10, d11, FastMath.sqrt(d10), FastMath.sqrt(d11), convergenceChecker);
    }

    private double[][] newPointAndDirection(double[] dArr, double[] dArr2, double d10) {
        int length = dArr.length;
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            double d11 = dArr2[i10] * d10;
            dArr4[i10] = d11;
            dArr3[i10] = dArr[i10] + d11;
        }
        return new double[][]{dArr3, dArr4};
    }

    @Override
    public PointValuePair doOptimize() {
        double d10;
        PointValuePair pointValuePair;
        PointValuePair pointValuePair2;
        ConvergenceChecker<PointValuePair> convergenceChecker;
        int i10;
        int i11;
        double d11;
        GoalType goalType = getGoalType();
        double[] startPoint = getStartPoint();
        int length = startPoint.length;
        int i12 = 1;
        int i13 = 0;
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, length, length);
        for (int i14 = 0; i14 < length; i14++) {
            dArr[i14][i14] = 1.0d;
        }
        ConvergenceChecker<PointValuePair> convergenceChecker2 = getConvergenceChecker();
        double computeObjectiveValue = computeObjectiveValue(startPoint);
        double[] dArr2 = (double[]) startPoint.clone();
        int i15 = 0;
        while (true) {
            i15 += i12;
            int i16 = i13;
            int i17 = i16;
            d10 = computeObjectiveValue;
            double d12 = 0.0d;
            while (i16 < length) {
                double[] copyOf = MathArrays.copyOf(dArr[i16]);
                UnivariatePointValuePair search = this.line.search(startPoint, copyOf);
                double value = search.getValue();
                double[][] dArr3 = dArr;
                startPoint = newPointAndDirection(startPoint, copyOf, search.getPoint())[i13];
                double d13 = d10 - value;
                if (d13 > d12) {
                    d12 = d13;
                    i17 = i16;
                }
                i16++;
                dArr = dArr3;
                d10 = value;
            }
            double[][] dArr4 = dArr;
            double d14 = computeObjectiveValue - d10;
            ConvergenceChecker<PointValuePair> convergenceChecker3 = convergenceChecker2;
            boolean z10 = d14 * 2.0d <= (this.relativeThreshold * (FastMath.abs(computeObjectiveValue) + FastMath.abs(d10))) + this.absoluteThreshold;
            pointValuePair = new PointValuePair(dArr2, computeObjectiveValue);
            pointValuePair2 = new PointValuePair(startPoint, d10);
            if (z10 || convergenceChecker3 == null) {
                convergenceChecker = convergenceChecker3;
            } else {
                convergenceChecker = convergenceChecker3;
                z10 = convergenceChecker.converged(i15, pointValuePair, pointValuePair2);
            }
            if (z10) {
                break;
            }
            double[] dArr5 = new double[length];
            double[] dArr6 = new double[length];
            for (int i18 = 0; i18 < length; i18++) {
                dArr5[i18] = startPoint[i18] - dArr2[i18];
                dArr6[i18] = (startPoint[i18] * 2.0d) - dArr2[i18];
            }
            dArr2 = (double[]) startPoint.clone();
            double computeObjectiveValue2 = computeObjectiveValue(dArr6);
            if (computeObjectiveValue > computeObjectiveValue2) {
                double d15 = d14 - d12;
                double d16 = ((computeObjectiveValue + computeObjectiveValue2) - (d10 * 2.0d)) * 2.0d * d15 * d15;
                double d17 = computeObjectiveValue - computeObjectiveValue2;
                if (d16 - ((d12 * d17) * d17) < 0.0d) {
                    UnivariatePointValuePair search2 = this.line.search(startPoint, dArr5);
                    d11 = search2.getValue();
                    double[][] newPointAndDirection = newPointAndDirection(startPoint, dArr5, search2.getPoint());
                    i10 = 0;
                    double[] dArr7 = newPointAndDirection[0];
                    int i19 = length - 1;
                    dArr4[i17] = dArr4[i19];
                    i11 = 1;
                    dArr4[i19] = newPointAndDirection[1];
                    startPoint = dArr7;
                    i13 = i10;
                    i12 = i11;
                    dArr = dArr4;
                    computeObjectiveValue = d11;
                    convergenceChecker2 = convergenceChecker;
                }
            }
            i10 = 0;
            i11 = 1;
            d11 = d10;
            i13 = i10;
            i12 = i11;
            dArr = dArr4;
            computeObjectiveValue = d11;
            convergenceChecker2 = convergenceChecker;
        }
        return goalType == GoalType.MINIMIZE ? d10 < computeObjectiveValue ? pointValuePair2 : pointValuePair : d10 > computeObjectiveValue ? pointValuePair2 : pointValuePair;
    }

    public PowellOptimizer(double d10, double d11, double d12, double d13, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        double d14 = MIN_RELATIVE_TOLERANCE;
        if (d10 < d14) {
            throw new NumberIsTooSmallException(Double.valueOf(d10), Double.valueOf(d14), true);
        }
        if (d11 > 0.0d) {
            this.relativeThreshold = d10;
            this.absoluteThreshold = d11;
            this.line = new LineSearch(d12, d13);
            return;
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d11));
    }

    public PowellOptimizer(double d10, double d11) {
        this(d10, d11, null);
    }

    public PowellOptimizer(double d10, double d11, double d12, double d13) {
        this(d10, d11, d12, d13, null);
    }
}
