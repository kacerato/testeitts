package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

class OptimumImpl implements LeastSquaresOptimizer.Optimum {
    private final int evaluations;
    private final int iterations;
    private final LeastSquaresProblem.Evaluation value;

    public OptimumImpl(LeastSquaresProblem.Evaluation evaluation, int i10, int i11) {
        this.value = evaluation;
        this.evaluations = i10;
        this.iterations = i11;
    }

    @Override
    public double getCost() {
        return this.value.getCost();
    }

    @Override
    public RealMatrix getCovariances(double d10) {
        return this.value.getCovariances(d10);
    }

    @Override
    public int getEvaluations() {
        return this.evaluations;
    }

    @Override
    public int getIterations() {
        return this.iterations;
    }

    @Override
    public RealMatrix getJacobian() {
        return this.value.getJacobian();
    }

    @Override
    public RealVector getPoint() {
        return this.value.getPoint();
    }

    @Override
    public double getRMS() {
        return this.value.getRMS();
    }

    @Override
    public RealVector getResiduals() {
        return this.value.getResiduals();
    }

    @Override
    public RealVector getSigma(double d10) {
        return this.value.getSigma(d10);
    }
}
