package org.apache.commons.math3.stat.regression;

import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

public class GLSMultipleLinearRegression extends AbstractMultipleLinearRegression {
    private RealMatrix Omega;
    private RealMatrix OmegaInverse;

    @Override
    public RealVector calculateBeta() {
        RealMatrix omegaInverse = getOmegaInverse();
        RealMatrix transpose = getX().transpose();
        return new LUDecomposition(transpose.multiply(omegaInverse).multiply(getX())).getSolver().getInverse().multiply(transpose).multiply(omegaInverse).operate(getY());
    }

    @Override
    public RealMatrix calculateBetaVariance() {
        return new LUDecomposition(getX().transpose().multiply(getOmegaInverse()).multiply(getX())).getSolver().getInverse();
    }

    @Override
    public double calculateErrorVariance() {
        RealVector calculateResiduals = calculateResiduals();
        return calculateResiduals.dotProduct(getOmegaInverse().operate(calculateResiduals)) / (getX().getRowDimension() - getX().getColumnDimension());
    }

    public RealMatrix getOmegaInverse() {
        if (this.OmegaInverse == null) {
            this.OmegaInverse = new LUDecomposition(this.Omega).getSolver().getInverse();
        }
        return this.OmegaInverse;
    }

    public void newCovarianceData(double[][] dArr) {
        this.Omega = new Array2DRowRealMatrix(dArr);
        this.OmegaInverse = null;
    }

    public void newSampleData(double[] dArr, double[][] dArr2, double[][] dArr3) {
        validateSampleData(dArr2, dArr);
        newYSampleData(dArr);
        newXSampleData(dArr2);
        validateCovarianceData(dArr2, dArr3);
        newCovarianceData(dArr3);
    }
}
