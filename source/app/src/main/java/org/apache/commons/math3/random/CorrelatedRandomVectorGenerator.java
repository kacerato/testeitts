package org.apache.commons.math3.random;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RectangularCholeskyDecomposition;

public class CorrelatedRandomVectorGenerator implements RandomVectorGenerator {
    private final NormalizedRandomGenerator generator;
    private final double[] mean;
    private final double[] normalized;
    private final RealMatrix root;

    public CorrelatedRandomVectorGenerator(double[] dArr, RealMatrix realMatrix, double d10, NormalizedRandomGenerator normalizedRandomGenerator) {
        int rowDimension = realMatrix.getRowDimension();
        if (dArr.length == rowDimension) {
            this.mean = (double[]) dArr.clone();
            RectangularCholeskyDecomposition rectangularCholeskyDecomposition = new RectangularCholeskyDecomposition(realMatrix, d10);
            this.root = rectangularCholeskyDecomposition.getRootMatrix();
            this.generator = normalizedRandomGenerator;
            this.normalized = new double[rectangularCholeskyDecomposition.getRank()];
            return;
        }
        throw new DimensionMismatchException(dArr.length, rowDimension);
    }

    public NormalizedRandomGenerator getGenerator() {
        return this.generator;
    }

    public int getRank() {
        return this.normalized.length;
    }

    public RealMatrix getRootMatrix() {
        return this.root;
    }

    @Override
    public double[] nextVector() {
        int i10 = 0;
        while (true) {
            double[] dArr = this.normalized;
            if (i10 >= dArr.length) {
                break;
            }
            dArr[i10] = this.generator.nextNormalizedDouble();
            i10++;
        }
        int length = this.mean.length;
        double[] dArr2 = new double[length];
        for (int i11 = 0; i11 < length; i11++) {
            dArr2[i11] = this.mean[i11];
            for (int i12 = 0; i12 < this.root.getColumnDimension(); i12++) {
                dArr2[i11] = dArr2[i11] + (this.root.getEntry(i11, i12) * this.normalized[i12]);
            }
        }
        return dArr2;
    }

    public CorrelatedRandomVectorGenerator(RealMatrix realMatrix, double d10, NormalizedRandomGenerator normalizedRandomGenerator) {
        int rowDimension = realMatrix.getRowDimension();
        this.mean = new double[rowDimension];
        for (int i10 = 0; i10 < rowDimension; i10++) {
            this.mean[i10] = 0.0d;
        }
        RectangularCholeskyDecomposition rectangularCholeskyDecomposition = new RectangularCholeskyDecomposition(realMatrix, d10);
        this.root = rectangularCholeskyDecomposition.getRootMatrix();
        this.generator = normalizedRandomGenerator;
        this.normalized = new double[rectangularCholeskyDecomposition.getRank()];
    }
}
