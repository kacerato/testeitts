package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optimization.BaseMultivariateVectorOptimizer;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointVectorValuePair;
import org.apache.commons.math3.optimization.SimpleVectorValueChecker;
import org.apache.commons.math3.optimization.Target;
import org.apache.commons.math3.optimization.Weight;
import org.apache.commons.math3.util.Incrementor;

@Deprecated
public abstract class BaseAbstractMultivariateVectorOptimizer<FUNC extends MultivariateVectorFunction> implements BaseMultivariateVectorOptimizer<FUNC> {
    private ConvergenceChecker<PointVectorValuePair> checker;
    protected final Incrementor evaluations;
    private FUNC function;
    private double[] start;
    private double[] target;

    @Deprecated
    private double[] weight;
    private RealMatrix weightMatrix;

    @Deprecated
    public BaseAbstractMultivariateVectorOptimizer() {
        this(new SimpleVectorValueChecker());
    }

    private void checkParameters() {
        if (this.target.length != this.weightMatrix.getColumnDimension()) {
            throw new DimensionMismatchException(this.target.length, this.weightMatrix.getColumnDimension());
        }
    }

    private void parseOptimizationData(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Target) {
                this.target = ((Target) optimizationData).getTarget();
            } else if (optimizationData instanceof Weight) {
                this.weightMatrix = ((Weight) optimizationData).getWeight();
            } else if (optimizationData instanceof InitialGuess) {
                this.start = ((InitialGuess) optimizationData).getInitialGuess();
            }
        }
    }

    public double[] computeObjectiveValue(double[] dArr) {
        try {
            this.evaluations.incrementCount();
            return this.function.value(dArr);
        } catch (MaxCountExceededException e10) {
            throw new TooManyEvaluationsException(e10.getMax());
        }
    }

    public abstract PointVectorValuePair doOptimize();

    @Override
    public ConvergenceChecker<PointVectorValuePair> getConvergenceChecker() {
        return this.checker;
    }

    @Override
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Override
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public FUNC getObjectiveFunction() {
        return this.function;
    }

    public double[] getStartPoint() {
        return (double[]) this.start.clone();
    }

    public double[] getTarget() {
        return (double[]) this.target.clone();
    }

    @Deprecated
    public double[] getTargetRef() {
        return this.target;
    }

    public RealMatrix getWeight() {
        return this.weightMatrix.copy();
    }

    @Deprecated
    public double[] getWeightRef() {
        return this.weight;
    }

    @Override
    @Deprecated
    public PointVectorValuePair optimize(int i10, FUNC func, double[] dArr, double[] dArr2, double[] dArr3) {
        return optimizeInternal(i10, func, dArr, dArr2, dArr3);
    }

    @Deprecated
    public PointVectorValuePair optimizeInternal(int i10, FUNC func, double[] dArr, double[] dArr2, double[] dArr3) {
        if (func == null) {
            throw new NullArgumentException();
        }
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr3 != null) {
            if (dArr.length == dArr2.length) {
                return optimizeInternal(i10, func, new Target(dArr), new Weight(dArr2), new InitialGuess(dArr3));
            }
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        throw new NullArgumentException();
    }

    public void setUp() {
        int length = this.target.length;
        this.weight = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.weight[i10] = this.weightMatrix.getEntry(i10, i10);
        }
    }

    public BaseAbstractMultivariateVectorOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this.evaluations = new Incrementor();
        this.checker = convergenceChecker;
    }

    public PointVectorValuePair optimize(int i10, FUNC func, OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        return optimizeInternal(i10, func, optimizationDataArr);
    }

    public PointVectorValuePair optimizeInternal(int i10, FUNC func, OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        this.evaluations.setMaximalCount(i10);
        this.evaluations.resetCount();
        this.function = func;
        parseOptimizationData(optimizationDataArr);
        checkParameters();
        setUp();
        return doOptimize();
    }
}
