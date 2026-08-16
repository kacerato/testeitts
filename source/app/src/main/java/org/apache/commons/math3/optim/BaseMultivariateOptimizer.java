package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;

public abstract class BaseMultivariateOptimizer<PAIR> extends BaseOptimizer<PAIR> {
    private double[] lowerBound;
    private double[] start;
    private double[] upperBound;

    public BaseMultivariateOptimizer(ConvergenceChecker<PAIR> convergenceChecker) {
        super(convergenceChecker);
    }

    private void checkParameters() {
        double[] dArr = this.start;
        if (dArr != null) {
            int length = dArr.length;
            double[] dArr2 = this.lowerBound;
            if (dArr2 != null) {
                if (dArr2.length != length) {
                    throw new DimensionMismatchException(this.lowerBound.length, length);
                }
                for (int i10 = 0; i10 < length; i10++) {
                    double d10 = this.start[i10];
                    double d11 = this.lowerBound[i10];
                    if (d10 < d11) {
                        throw new NumberIsTooSmallException(Double.valueOf(d10), Double.valueOf(d11), true);
                    }
                }
            }
            double[] dArr3 = this.upperBound;
            if (dArr3 != null) {
                if (dArr3.length != length) {
                    throw new DimensionMismatchException(this.upperBound.length, length);
                }
                for (int i11 = 0; i11 < length; i11++) {
                    double d12 = this.start[i11];
                    double d13 = this.upperBound[i11];
                    if (d12 > d13) {
                        throw new NumberIsTooLargeException(Double.valueOf(d12), Double.valueOf(d13), true);
                    }
                }
            }
        }
    }

    public double[] getLowerBound() {
        double[] dArr = this.lowerBound;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public double[] getStartPoint() {
        double[] dArr = this.start;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public double[] getUpperBound() {
        double[] dArr = this.upperBound;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    @Override
    public PAIR optimize(OptimizationData... optimizationDataArr) {
        return (PAIR) super.optimize(optimizationDataArr);
    }

    @Override
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof InitialGuess) {
                this.start = ((InitialGuess) optimizationData).getInitialGuess();
            } else if (optimizationData instanceof SimpleBounds) {
                SimpleBounds simpleBounds = (SimpleBounds) optimizationData;
                this.lowerBound = simpleBounds.getLower();
                this.upperBound = simpleBounds.getUpper();
            }
        }
        checkParameters();
    }
}
