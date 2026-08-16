package org.apache.commons.math3.stat.correlation;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.descriptive.moment.Mean;
import org.apache.commons.math3.stat.descriptive.moment.Variance;

public class Covariance {
    private final RealMatrix covarianceMatrix;

    private final int f100335n;

    public Covariance() {
        this.covarianceMatrix = null;
        this.f100335n = 0;
    }

    private void checkSufficientData(RealMatrix realMatrix) throws MathIllegalArgumentException {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        if (rowDimension < 2 || columnDimension < 1) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_ROWS_AND_COLUMNS, Integer.valueOf(rowDimension), Integer.valueOf(columnDimension));
        }
    }

    public RealMatrix computeCovarianceMatrix(RealMatrix realMatrix, boolean z10) throws MathIllegalArgumentException {
        int columnDimension = realMatrix.getColumnDimension();
        Variance variance = new Variance(z10);
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(columnDimension, columnDimension);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < i10; i11++) {
                double covariance = covariance(realMatrix.getColumn(i10), realMatrix.getColumn(i11), z10);
                blockRealMatrix.setEntry(i10, i11, covariance);
                blockRealMatrix.setEntry(i11, i10, covariance);
            }
            blockRealMatrix.setEntry(i10, i10, variance.evaluate(realMatrix.getColumn(i10)));
        }
        return blockRealMatrix;
    }

    public double covariance(double[] dArr, double[] dArr2, boolean z10) throws MathIllegalArgumentException {
        Mean mean = new Mean();
        int length = dArr.length;
        if (length != dArr2.length) {
            throw new MathIllegalArgumentException(LocalizedFormats.DIMENSIONS_MISMATCH_SIMPLE, Integer.valueOf(length), Integer.valueOf(dArr2.length));
        }
        if (length >= 2) {
            double evaluate = mean.evaluate(dArr);
            double evaluate2 = mean.evaluate(dArr2);
            double d10 = 0.0d;
            int i10 = 0;
            while (i10 < length) {
                double d11 = ((dArr[i10] - evaluate) * (dArr2[i10] - evaluate2)) - d10;
                i10++;
                d10 += d11 / i10;
            }
            return z10 ? d10 * (length / (length - 1)) : d10;
        }
        throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(length), 2);
    }

    public RealMatrix getCovarianceMatrix() {
        return this.covarianceMatrix;
    }

    public int getN() {
        return this.f100335n;
    }

    public Covariance(double[][] dArr, boolean z10) throws MathIllegalArgumentException, NotStrictlyPositiveException {
        this(new BlockRealMatrix(dArr), z10);
    }

    public Covariance(double[][] dArr) throws MathIllegalArgumentException, NotStrictlyPositiveException {
        this(dArr, true);
    }

    public Covariance(RealMatrix realMatrix, boolean z10) throws MathIllegalArgumentException {
        checkSufficientData(realMatrix);
        this.f100335n = realMatrix.getRowDimension();
        this.covarianceMatrix = computeCovarianceMatrix(realMatrix, z10);
    }

    public RealMatrix computeCovarianceMatrix(RealMatrix realMatrix) throws MathIllegalArgumentException {
        return computeCovarianceMatrix(realMatrix, true);
    }

    public RealMatrix computeCovarianceMatrix(double[][] dArr, boolean z10) throws MathIllegalArgumentException, NotStrictlyPositiveException {
        return computeCovarianceMatrix(new BlockRealMatrix(dArr), z10);
    }

    public Covariance(RealMatrix realMatrix) throws MathIllegalArgumentException {
        this(realMatrix, true);
    }

    public RealMatrix computeCovarianceMatrix(double[][] dArr) throws MathIllegalArgumentException, NotStrictlyPositiveException {
        return computeCovarianceMatrix(dArr, true);
    }

    public double covariance(double[] dArr, double[] dArr2) throws MathIllegalArgumentException {
        return covariance(dArr, dArr2, true);
    }
}
