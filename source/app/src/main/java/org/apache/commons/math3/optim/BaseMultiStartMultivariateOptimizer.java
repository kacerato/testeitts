package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.random.RandomVectorGenerator;

public abstract class BaseMultiStartMultivariateOptimizer<PAIR> extends BaseMultivariateOptimizer<PAIR> {
    private RandomVectorGenerator generator;
    private int initialGuessIndex;
    private int maxEvalIndex;
    private OptimizationData[] optimData;
    private final BaseMultivariateOptimizer<PAIR> optimizer;
    private int starts;
    private int totalEvaluations;

    public BaseMultiStartMultivariateOptimizer(BaseMultivariateOptimizer<PAIR> baseMultivariateOptimizer, int i10, RandomVectorGenerator randomVectorGenerator) {
        super(baseMultivariateOptimizer.getConvergenceChecker());
        this.maxEvalIndex = -1;
        this.initialGuessIndex = -1;
        if (i10 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        this.optimizer = baseMultivariateOptimizer;
        this.starts = i10;
        this.generator = randomVectorGenerator;
    }

    public abstract void clear();

    @Override
    public PAIR doOptimize() {
        double[] dArr;
        int i10 = 0;
        while (true) {
            OptimizationData[] optimizationDataArr = this.optimData;
            if (i10 >= optimizationDataArr.length) {
                break;
            }
            if (optimizationDataArr[i10] instanceof MaxEval) {
                optimizationDataArr[i10] = null;
                this.maxEvalIndex = i10;
            }
            if (optimizationDataArr[i10] instanceof InitialGuess) {
                optimizationDataArr[i10] = null;
                this.initialGuessIndex = i10;
            }
            i10++;
        }
        if (this.maxEvalIndex == -1) {
            throw new MathIllegalStateException();
        }
        if (this.initialGuessIndex == -1) {
            throw new MathIllegalStateException();
        }
        this.totalEvaluations = 0;
        clear();
        int maxEvaluations = getMaxEvaluations();
        double[] lowerBound = getLowerBound();
        double[] upperBound = getUpperBound();
        double[] startPoint = getStartPoint();
        RuntimeException e10 = null;
        for (int i11 = 0; i11 < this.starts; i11++) {
            try {
                this.optimData[this.maxEvalIndex] = new MaxEval(maxEvaluations - this.totalEvaluations);
                if (i11 != 0) {
                    int i12 = 0;
                    dArr = null;
                    while (dArr == null) {
                        int i13 = i12 + 1;
                        if (i12 >= getMaxEvaluations()) {
                            throw new TooManyEvaluationsException(Integer.valueOf(getMaxEvaluations()));
                            break;
                        }
                        double[] nextVector = this.generator.nextVector();
                        for (int i14 = 0; nextVector != null && i14 < nextVector.length; i14++) {
                            if (lowerBound != null) {
                                if (nextVector[i14] >= lowerBound[i14]) {
                                }
                                nextVector = null;
                            }
                            if (upperBound != null) {
                                if (nextVector[i14] <= upperBound[i14]) {
                                }
                                nextVector = null;
                            }
                        }
                        double[] dArr2 = nextVector;
                        i12 = i13;
                        dArr = dArr2;
                    }
                } else {
                    dArr = startPoint;
                }
                this.optimData[this.initialGuessIndex] = new InitialGuess(dArr);
                store(this.optimizer.optimize(this.optimData));
            } catch (RuntimeException e11) {
                e10 = e11;
            }
            this.totalEvaluations += this.optimizer.getEvaluations();
        }
        PAIR[] optima = getOptima();
        if (optima.length != 0) {
            return optima[0];
        }
        throw e10;
    }

    @Override
    public int getEvaluations() {
        return this.totalEvaluations;
    }

    public abstract PAIR[] getOptima();

    @Override
    public PAIR optimize(OptimizationData... optimizationDataArr) {
        this.optimData = optimizationDataArr;
        return (PAIR) super.optimize(optimizationDataArr);
    }

    public abstract void store(PAIR pair);
}
