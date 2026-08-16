package org.apache.commons.math3.stat.correlation;

import java.lang.reflect.Array;
import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.regression.SimpleRegression;
import org.apache.commons.math3.util.FastMath;

public class PearsonsCorrelation {
    private final RealMatrix correlationMatrix;
    private final int nObs;

    public PearsonsCorrelation() {
        this.correlationMatrix = null;
        this.nObs = 0;
    }

    private void checkSufficientData(RealMatrix realMatrix) {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        if (rowDimension < 2 || columnDimension < 2) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_ROWS_AND_COLUMNS, Integer.valueOf(rowDimension), Integer.valueOf(columnDimension));
        }
    }

    public RealMatrix computeCorrelationMatrix(RealMatrix realMatrix) {
        checkSufficientData(realMatrix);
        int columnDimension = realMatrix.getColumnDimension();
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(columnDimension, columnDimension);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < i10; i11++) {
                double correlation = correlation(realMatrix.getColumn(i10), realMatrix.getColumn(i11));
                blockRealMatrix.setEntry(i10, i11, correlation);
                blockRealMatrix.setEntry(i11, i10, correlation);
            }
            blockRealMatrix.setEntry(i10, i10, 1.0d);
        }
        return blockRealMatrix;
    }

    public double correlation(double[] dArr, double[] dArr2) {
        SimpleRegression simpleRegression = new SimpleRegression();
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length < 2) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_DIMENSION, Integer.valueOf(dArr.length), 2);
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            simpleRegression.addData(dArr[i10], dArr2[i10]);
        }
        return simpleRegression.getR();
    }

    public RealMatrix covarianceToCorrelation(RealMatrix realMatrix) {
        int columnDimension = realMatrix.getColumnDimension();
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(columnDimension, columnDimension);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            double sqrt = FastMath.sqrt(realMatrix.getEntry(i10, i10));
            blockRealMatrix.setEntry(i10, i10, 1.0d);
            for (int i11 = 0; i11 < i10; i11++) {
                double entry = realMatrix.getEntry(i10, i11) / (FastMath.sqrt(realMatrix.getEntry(i11, i11)) * sqrt);
                blockRealMatrix.setEntry(i10, i11, entry);
                blockRealMatrix.setEntry(i11, i10, entry);
            }
        }
        return blockRealMatrix;
    }

    public RealMatrix getCorrelationMatrix() {
        return this.correlationMatrix;
    }

    public RealMatrix getCorrelationPValues() {
        TDistribution tDistribution = new TDistribution(this.nObs - 2);
        int columnDimension = this.correlationMatrix.getColumnDimension();
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, columnDimension, columnDimension);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                if (i10 == i11) {
                    dArr[i10][i11] = 0.0d;
                } else {
                    double entry = this.correlationMatrix.getEntry(i10, i11);
                    dArr[i10][i11] = tDistribution.cumulativeProbability(-FastMath.abs(entry * FastMath.sqrt((this.nObs - 2) / (1.0d - (entry * entry))))) * 2.0d;
                }
            }
        }
        return new BlockRealMatrix(dArr);
    }

    public RealMatrix getCorrelationStandardErrors() {
        int columnDimension = this.correlationMatrix.getColumnDimension();
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, columnDimension, columnDimension);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                double entry = this.correlationMatrix.getEntry(i10, i11);
                dArr[i10][i11] = FastMath.sqrt((1.0d - (entry * entry)) / (this.nObs - 2));
            }
        }
        return new BlockRealMatrix(dArr);
    }

    public PearsonsCorrelation(double[][] dArr) {
        this(new BlockRealMatrix(dArr));
    }

    public PearsonsCorrelation(RealMatrix realMatrix) {
        this.nObs = realMatrix.getRowDimension();
        this.correlationMatrix = computeCorrelationMatrix(realMatrix);
    }

    public PearsonsCorrelation(Covariance covariance) {
        RealMatrix covarianceMatrix = covariance.getCovarianceMatrix();
        if (covarianceMatrix != null) {
            this.nObs = covariance.getN();
            this.correlationMatrix = covarianceToCorrelation(covarianceMatrix);
            return;
        }
        throw new NullArgumentException(LocalizedFormats.COVARIANCE_MATRIX, new Object[0]);
    }

    public RealMatrix computeCorrelationMatrix(double[][] dArr) {
        return computeCorrelationMatrix(new BlockRealMatrix(dArr));
    }

    public PearsonsCorrelation(RealMatrix realMatrix, int i10) {
        this.nObs = i10;
        this.correlationMatrix = covarianceToCorrelation(realMatrix);
    }
}
