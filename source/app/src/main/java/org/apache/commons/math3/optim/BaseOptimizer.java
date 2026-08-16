package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.util.Incrementor;

public abstract class BaseOptimizer<PAIR> {
    private final ConvergenceChecker<PAIR> checker;
    protected final Incrementor evaluations;
    protected final Incrementor iterations;

    public static class MaxEvalCallback implements Incrementor.MaxCountExceededCallback {
        private MaxEvalCallback() {
        }

        @Override
        public void trigger(int i10) {
            throw new TooManyEvaluationsException(Integer.valueOf(i10));
        }
    }

    public static class MaxIterCallback implements Incrementor.MaxCountExceededCallback {
        private MaxIterCallback() {
        }

        @Override
        public void trigger(int i10) {
            throw new TooManyIterationsException(Integer.valueOf(i10));
        }
    }

    public BaseOptimizer(ConvergenceChecker<PAIR> convergenceChecker) {
        this(convergenceChecker, 0, Integer.MAX_VALUE);
    }

    public abstract PAIR doOptimize();

    public ConvergenceChecker<PAIR> getConvergenceChecker() {
        return this.checker;
    }

    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public int getIterations() {
        return this.iterations.getCount();
    }

    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public int getMaxIterations() {
        return this.iterations.getMaximalCount();
    }

    public void incrementEvaluationCount() throws TooManyEvaluationsException {
        this.evaluations.incrementCount();
    }

    public void incrementIterationCount() throws TooManyIterationsException {
        this.iterations.incrementCount();
    }

    public PAIR optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, TooManyIterationsException {
        parseOptimizationData(optimizationDataArr);
        this.evaluations.resetCount();
        this.iterations.resetCount();
        return doOptimize();
    }

    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof MaxEval) {
                this.evaluations.setMaximalCount(((MaxEval) optimizationData).getMaxEval());
            } else if (optimizationData instanceof MaxIter) {
                this.iterations.setMaximalCount(((MaxIter) optimizationData).getMaxIter());
            }
        }
    }

    public BaseOptimizer(ConvergenceChecker<PAIR> convergenceChecker, int i10, int i11) {
        this.checker = convergenceChecker;
        this.evaluations = new Incrementor(i10, new MaxEvalCallback());
        this.iterations = new Incrementor(i11, new MaxIterCallback());
    }

    public PAIR optimize() throws TooManyEvaluationsException, TooManyIterationsException {
        this.evaluations.resetCount();
        this.iterations.resetCount();
        return doOptimize();
    }
}
