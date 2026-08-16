package org.apache.commons.math3.stat.regression;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.stat.StatUtils;
import org.apache.commons.math3.stat.descriptive.moment.SecondMoment;

public class OLSMultipleLinearRegression extends AbstractMultipleLinearRegression {
    private QRDecomposition qr;
    private final double threshold;

    public OLSMultipleLinearRegression() {
        this(0.0d);
    }

    public double calculateAdjustedRSquared() {
        double rowDimension = getX().getRowDimension();
        return 1.0d - (isNoIntercept() ? (1.0d - calculateRSquared()) * (rowDimension / (rowDimension - getX().getColumnDimension())) : (calculateResidualSumOfSquares() * (rowDimension - 1.0d)) / (calculateTotalSumOfSquares() * (rowDimension - getX().getColumnDimension())));
    }

    @Override
    public RealVector calculateBeta() {
        return this.qr.getSolver().solve(getY());
    }

    @Override
    public RealMatrix calculateBetaVariance() {
        int columnDimension = getX().getColumnDimension() - 1;
        RealMatrix inverse = new LUDecomposition(this.qr.getR().getSubMatrix(0, columnDimension, 0, columnDimension)).getSolver().getInverse();
        return inverse.multiply(inverse.transpose());
    }

    public RealMatrix calculateHat() {
        RealMatrix q10 = this.qr.getQ();
        int columnDimension = this.qr.getR().getColumnDimension();
        int columnDimension2 = q10.getColumnDimension();
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(columnDimension2, columnDimension2);
        double[][] dataRef = array2DRowRealMatrix.getDataRef();
        for (int i10 = 0; i10 < columnDimension2; i10++) {
            for (int i11 = 0; i11 < columnDimension2; i11++) {
                if (i10 != i11 || i10 >= columnDimension) {
                    dataRef[i10][i11] = 0.0d;
                } else {
                    dataRef[i10][i11] = 1.0d;
                }
            }
        }
        return q10.multiply(array2DRowRealMatrix).multiply(q10.transpose());
    }

    public double calculateRSquared() {
        return 1.0d - (calculateResidualSumOfSquares() / calculateTotalSumOfSquares());
    }

    public double calculateResidualSumOfSquares() {
        RealVector calculateResiduals = calculateResiduals();
        return calculateResiduals.dotProduct(calculateResiduals);
    }

    public double calculateTotalSumOfSquares() {
        return isNoIntercept() ? StatUtils.sumSq(getY().toArray()) : new SecondMoment().evaluate(getY().toArray());
    }

    public void newSampleData(double[] dArr, double[][] dArr2) throws MathIllegalArgumentException {
        validateSampleData(dArr2, dArr);
        newYSampleData(dArr);
        newXSampleData(dArr2);
    }

    @Override
    public void newXSampleData(double[][] dArr) {
        super.newXSampleData(dArr);
        this.qr = new QRDecomposition(getX(), this.threshold);
    }

    public OLSMultipleLinearRegression(double d10) {
        this.qr = null;
        this.threshold = d10;
    }

    @Override
    public void newSampleData(double[] dArr, int i10, int i11) {
        super.newSampleData(dArr, i10, i11);
        this.qr = new QRDecomposition(getX(), this.threshold);
    }
}
