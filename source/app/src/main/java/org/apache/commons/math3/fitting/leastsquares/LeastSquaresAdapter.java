package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.util.Incrementor;

public class LeastSquaresAdapter implements LeastSquaresProblem {
    private final LeastSquaresProblem problem;

    public LeastSquaresAdapter(LeastSquaresProblem leastSquaresProblem) {
        this.problem = leastSquaresProblem;
    }

    @Override
    public LeastSquaresProblem.Evaluation evaluate(RealVector realVector) {
        return this.problem.evaluate(realVector);
    }

    @Override
    public ConvergenceChecker<LeastSquaresProblem.Evaluation> getConvergenceChecker() {
        return this.problem.getConvergenceChecker();
    }

    @Override
    public Incrementor getEvaluationCounter() {
        return this.problem.getEvaluationCounter();
    }

    @Override
    public Incrementor getIterationCounter() {
        return this.problem.getIterationCounter();
    }

    @Override
    public int getObservationSize() {
        return this.problem.getObservationSize();
    }

    @Override
    public int getParameterSize() {
        return this.problem.getParameterSize();
    }

    @Override
    public RealVector getStart() {
        return this.problem.getStart();
    }
}
