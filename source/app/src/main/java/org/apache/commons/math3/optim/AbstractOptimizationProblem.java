package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.util.Incrementor;

public abstract class AbstractOptimizationProblem<PAIR> implements OptimizationProblem<PAIR> {
    private static final MaxEvalCallback MAX_EVAL_CALLBACK;
    private static final MaxIterCallback MAX_ITER_CALLBACK;
    private final ConvergenceChecker<PAIR> checker;
    private final int maxEvaluations;
    private final int maxIterations;

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

    static {
        MAX_EVAL_CALLBACK = new MaxEvalCallback();
        MAX_ITER_CALLBACK = new MaxIterCallback();
    }

    public AbstractOptimizationProblem(int i10, int i11, ConvergenceChecker<PAIR> convergenceChecker) {
        this.maxEvaluations = i10;
        this.maxIterations = i11;
        this.checker = convergenceChecker;
    }

    @Override
    public ConvergenceChecker<PAIR> getConvergenceChecker() {
        return this.checker;
    }

    @Override
    public Incrementor getEvaluationCounter() {
        return new Incrementor(this.maxEvaluations, MAX_EVAL_CALLBACK);
    }

    @Override
    public Incrementor getIterationCounter() {
        return new Incrementor(this.maxIterations, MAX_ITER_CALLBACK);
    }
}
