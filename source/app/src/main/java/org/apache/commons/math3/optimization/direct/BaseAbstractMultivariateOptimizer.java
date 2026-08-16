package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optimization.BaseMultivariateOptimizer;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleBounds;
import org.apache.commons.math3.optimization.SimpleValueChecker;
import org.apache.commons.math3.util.Incrementor;

@Deprecated
public abstract class BaseAbstractMultivariateOptimizer<FUNC extends MultivariateFunction> implements BaseMultivariateOptimizer<FUNC> {
    private ConvergenceChecker<PointValuePair> checker;
    protected final Incrementor evaluations;
    private MultivariateFunction function;
    private GoalType goal;
    private double[] lowerBound;
    private double[] start;
    private double[] upperBound;

    @Deprecated
    public BaseAbstractMultivariateOptimizer() {
        this(new SimpleValueChecker());
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
            if (this.lowerBound == null) {
                this.lowerBound = new double[length];
                for (int i12 = 0; i12 < length; i12++) {
                    this.lowerBound[i12] = Double.NEGATIVE_INFINITY;
                }
            }
            if (this.upperBound == null) {
                this.upperBound = new double[length];
                for (int i13 = 0; i13 < length; i13++) {
                    this.upperBound[i13] = Double.POSITIVE_INFINITY;
                }
            }
        }
    }

    private void parseOptimizationData(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof InitialGuess) {
                this.start = ((InitialGuess) optimizationData).getInitialGuess();
            } else if (optimizationData instanceof SimpleBounds) {
                SimpleBounds simpleBounds = (SimpleBounds) optimizationData;
                this.lowerBound = simpleBounds.getLower();
                this.upperBound = simpleBounds.getUpper();
            }
        }
    }

    public double computeObjectiveValue(double[] dArr) {
        try {
            this.evaluations.incrementCount();
            return this.function.value(dArr);
        } catch (MaxCountExceededException e10) {
            throw new TooManyEvaluationsException(e10.getMax());
        }
    }

    public abstract PointValuePair doOptimize();

    @Override
    public ConvergenceChecker<PointValuePair> getConvergenceChecker() {
        return this.checker;
    }

    @Override
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public GoalType getGoalType() {
        return this.goal;
    }

    public double[] getLowerBound() {
        double[] dArr = this.lowerBound;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    @Override
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
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
    @Deprecated
    public PointValuePair optimize(int i10, FUNC func, GoalType goalType, double[] dArr) {
        return optimizeInternal(i10, (int) func, goalType, new InitialGuess(dArr));
    }

    @Deprecated
    public PointValuePair optimizeInternal(int i10, FUNC func, GoalType goalType, double[] dArr) {
        return optimizeInternal(i10, (int) func, goalType, new InitialGuess(dArr));
    }

    public BaseAbstractMultivariateOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        this.evaluations = new Incrementor();
        this.checker = convergenceChecker;
    }

    public PointValuePair optimize(int i10, FUNC func, GoalType goalType, OptimizationData... optimizationDataArr) {
        return optimizeInternal(i10, (int) func, goalType, optimizationDataArr);
    }

    public PointValuePair optimizeInternal(int i10, FUNC func, GoalType goalType, OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        this.evaluations.setMaximalCount(i10);
        this.evaluations.resetCount();
        this.function = func;
        this.goal = goalType;
        parseOptimizationData(optimizationDataArr);
        checkParameters();
        return doOptimize();
    }
}
