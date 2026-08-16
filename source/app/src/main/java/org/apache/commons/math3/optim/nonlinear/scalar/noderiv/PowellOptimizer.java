package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.optim.nonlinear.scalar.LineSearch;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;
import org.apache.commons.math3.optim.univariate.UnivariatePointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class PowellOptimizer extends MultivariateOptimizer {
    private static final double MIN_RELATIVE_TOLERANCE = FastMath.ulp(1.0d) * 2.0d;
    private final double absoluteThreshold;
    private final LineSearch line;
    private final double relativeThreshold;

    public PowellOptimizer(double d10, double d11, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(d10, d11, FastMath.sqrt(d10), FastMath.sqrt(d11), convergenceChecker);
    }

    private void checkParameters() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
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

    public PowellOptimizer(double d10, double d11, double d12, double d13, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        double d14 = MIN_RELATIVE_TOLERANCE;
        if (d10 < d14) {
            throw new NumberIsTooSmallException(Double.valueOf(d10), Double.valueOf(d14), true);
        }
        if (d11 > 0.0d) {
            this.relativeThreshold = d10;
            this.absoluteThreshold = d11;
            this.line = new LineSearch(this, d12, d13, 1.0d);
            return;
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d11));
    }

    @Override
    public PointValuePair doOptimize() {
        double d10;
        PointValuePair pointValuePair;
        PointValuePair pointValuePair2;
        int i10;
        boolean z10;
        double d11;
        checkParameters();
        GoalType goalType = getGoalType();
        double[] startPoint = getStartPoint();
        int length = startPoint.length;
        int i11 = 0;
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, length, length);
        for (int i12 = 0; i12 < length; i12++) {
            dArr[i12][i12] = 1.0d;
        }
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        double computeObjectiveValue = computeObjectiveValue(startPoint);
        double[] dArr2 = (double[]) startPoint.clone();
        while (true) {
            incrementIterationCount();
            int i13 = i11;
            int i14 = i13;
            d10 = computeObjectiveValue;
            double d12 = 0.0d;
            while (i13 < length) {
                double[] copyOf = MathArrays.copyOf(dArr[i13]);
                UnivariatePointValuePair search = this.line.search(startPoint, copyOf);
                double value = search.getValue();
                startPoint = newPointAndDirection(startPoint, copyOf, search.getPoint())[i11];
                double d13 = d10 - value;
                if (d13 > d12) {
                    i14 = i13;
                    d12 = d13;
                }
                i13++;
                d10 = value;
            }
            double d14 = computeObjectiveValue - d10;
            ConvergenceChecker<PointValuePair> convergenceChecker2 = convergenceChecker;
            double[][] dArr3 = dArr;
            boolean z11 = d14 * 2.0d <= (this.relativeThreshold * (FastMath.abs(computeObjectiveValue) + FastMath.abs(d10))) + this.absoluteThreshold;
            pointValuePair = new PointValuePair(dArr2, computeObjectiveValue);
            pointValuePair2 = new PointValuePair(startPoint, d10);
            if (!z11 && convergenceChecker2 != null) {
                z11 = convergenceChecker2.converged(getIterations(), pointValuePair, pointValuePair2);
            }
            if (z11) {
                break;
            }
            double[] dArr4 = new double[length];
            double[] dArr5 = new double[length];
            for (int i15 = 0; i15 < length; i15++) {
                dArr4[i15] = startPoint[i15] - dArr2[i15];
                dArr5[i15] = (startPoint[i15] * 2.0d) - dArr2[i15];
            }
            dArr2 = (double[]) startPoint.clone();
            double computeObjectiveValue2 = computeObjectiveValue(dArr5);
            if (computeObjectiveValue > computeObjectiveValue2) {
                double d15 = d14 - d12;
                double d16 = ((computeObjectiveValue + computeObjectiveValue2) - (d10 * 2.0d)) * 2.0d * d15 * d15;
                double d17 = computeObjectiveValue - computeObjectiveValue2;
                if (d16 - ((d12 * d17) * d17) < 0.0d) {
                    UnivariatePointValuePair search2 = this.line.search(startPoint, dArr4);
                    d11 = search2.getValue();
                    double[][] newPointAndDirection = newPointAndDirection(startPoint, dArr4, search2.getPoint());
                    i10 = 0;
                    double[] dArr6 = newPointAndDirection[0];
                    int i16 = length - 1;
                    dArr3[i14] = dArr3[i16];
                    z10 = true;
                    dArr3[i16] = newPointAndDirection[1];
                    startPoint = dArr6;
                    computeObjectiveValue = d11;
                    convergenceChecker = convergenceChecker2;
                    i11 = i10;
                    dArr = dArr3;
                }
            }
            i10 = 0;
            z10 = true;
            d11 = d10;
            computeObjectiveValue = d11;
            convergenceChecker = convergenceChecker2;
            i11 = i10;
            dArr = dArr3;
        }
        return goalType == GoalType.MINIMIZE ? d10 < computeObjectiveValue ? pointValuePair2 : pointValuePair : d10 > computeObjectiveValue ? pointValuePair2 : pointValuePair;
    }

    public PowellOptimizer(double d10, double d11) {
        this(d10, d11, null);
    }

    public PowellOptimizer(double d10, double d11, double d12, double d13) {
        this(d10, d11, d12, d13, null);
    }
}
