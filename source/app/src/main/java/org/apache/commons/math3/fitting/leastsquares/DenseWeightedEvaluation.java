package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

class DenseWeightedEvaluation extends AbstractEvaluation {
    private final LeastSquaresProblem.Evaluation unweighted;
    private final RealMatrix weightSqrt;

    public DenseWeightedEvaluation(LeastSquaresProblem.Evaluation evaluation, RealMatrix realMatrix) {
        super(realMatrix.getColumnDimension());
        this.unweighted = evaluation;
        this.weightSqrt = realMatrix;
    }

    @Override
    public RealMatrix getJacobian() {
        return this.weightSqrt.multiply(this.unweighted.getJacobian());
    }

    @Override
    public RealVector getPoint() {
        return this.unweighted.getPoint();
    }

    @Override
    public RealVector getResiduals() {
        return this.weightSqrt.operate(this.unweighted.getResiduals());
    }
}
