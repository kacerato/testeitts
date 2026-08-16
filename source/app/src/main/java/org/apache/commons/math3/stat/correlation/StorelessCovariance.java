package org.apache.commons.math3.stat.correlation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;

public class StorelessCovariance extends Covariance {
    private StorelessBivariateCovariance[] covMatrix;
    private int dimension;

    public StorelessCovariance(int i10) {
        this(i10, true);
    }

    private StorelessBivariateCovariance getElement(int i10, int i11) {
        return this.covMatrix[indexOf(i10, i11)];
    }

    private int indexOf(int i10, int i11) {
        return i11 < i10 ? ((i10 * (i10 + 1)) / 2) + i11 : i10 + ((i11 * (i11 + 1)) / 2);
    }

    private void initializeMatrix(boolean z10) {
        for (int i10 = 0; i10 < this.dimension; i10++) {
            for (int i11 = 0; i11 < this.dimension; i11++) {
                setElement(i10, i11, new StorelessBivariateCovariance(z10));
            }
        }
    }

    private void setElement(int i10, int i11, StorelessBivariateCovariance storelessBivariateCovariance) {
        this.covMatrix[indexOf(i10, i11)] = storelessBivariateCovariance;
    }

    public void append(StorelessCovariance storelessCovariance) throws DimensionMismatchException {
        if (storelessCovariance.dimension != this.dimension) {
            throw new DimensionMismatchException(storelessCovariance.dimension, this.dimension);
        }
        for (int i10 = 0; i10 < this.dimension; i10++) {
            for (int i11 = i10; i11 < this.dimension; i11++) {
                getElement(i10, i11).append(storelessCovariance.getElement(i10, i11));
            }
        }
    }

    public double getCovariance(int i10, int i11) throws NumberIsTooSmallException {
        return getElement(i10, i11).getResult();
    }

    @Override
    public RealMatrix getCovarianceMatrix() throws NumberIsTooSmallException {
        return MatrixUtils.createRealMatrix(getData());
    }

    public double[][] getData() throws NumberIsTooSmallException {
        int i10 = this.dimension;
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i10, i10);
        for (int i11 = 0; i11 < this.dimension; i11++) {
            for (int i12 = 0; i12 < this.dimension; i12++) {
                dArr[i11][i12] = getElement(i11, i12).getResult();
            }
        }
        return dArr;
    }

    @Override
    public int getN() throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    public void increment(double[] dArr) throws DimensionMismatchException {
        int length = dArr.length;
        if (length != this.dimension) {
            throw new DimensionMismatchException(length, this.dimension);
        }
        for (int i10 = 0; i10 < length; i10++) {
            for (int i11 = i10; i11 < length; i11++) {
                getElement(i10, i11).increment(dArr[i10], dArr[i11]);
            }
        }
    }

    public StorelessCovariance(int i10, boolean z10) {
        this.dimension = i10;
        this.covMatrix = new StorelessBivariateCovariance[(i10 * (i10 + 1)) / 2];
        initializeMatrix(z10);
    }
}
