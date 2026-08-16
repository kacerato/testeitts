package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.util.FastMath;

public abstract class AbstractEvaluation implements LeastSquaresProblem.Evaluation {
    private final int observationSize;

    public AbstractEvaluation(int i10) {
        this.observationSize = i10;
    }

    @Override
    public double getCost() {
        RealVector arrayRealVector = new ArrayRealVector(getResiduals());
        return FastMath.sqrt(arrayRealVector.dotProduct(arrayRealVector));
    }

    @Override
    public RealMatrix getCovariances(double d10) {
        RealMatrix jacobian = getJacobian();
        return new QRDecomposition(jacobian.transpose().multiply(jacobian), d10).getSolver().getInverse();
    }

    @Override
    public double getRMS() {
        double cost = getCost();
        return FastMath.sqrt((cost * cost) / this.observationSize);
    }

    @Override
    public RealVector getSigma(double d10) {
        RealMatrix covariances = getCovariances(d10);
        int columnDimension = covariances.getColumnDimension();
        ArrayRealVector arrayRealVector = new ArrayRealVector(columnDimension);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            arrayRealVector.setEntry(i10, FastMath.sqrt(covariances.getEntry(i10, i10)));
        }
        return arrayRealVector;
    }
}
