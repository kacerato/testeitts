package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;

public class CholeskyDecomposition {
    public static final double DEFAULT_ABSOLUTE_POSITIVITY_THRESHOLD = 1.0E-10d;
    public static final double DEFAULT_RELATIVE_SYMMETRY_THRESHOLD = 1.0E-15d;
    private RealMatrix cachedL;
    private RealMatrix cachedLT;
    private double[][] lTData;

    public static class Solver implements DecompositionSolver {
        private final double[][] lTData;

        @Override
        public RealMatrix getInverse() {
            return solve(MatrixUtils.createRealIdentityMatrix(this.lTData.length));
        }

        @Override
        public boolean isNonSingular() {
            return true;
        }

        @Override
        public RealVector solve(RealVector realVector) {
            int length = this.lTData.length;
            if (realVector.getDimension() == length) {
                double[] array = realVector.toArray();
                int i10 = 0;
                while (i10 < length) {
                    double[] dArr = this.lTData[i10];
                    double d10 = array[i10] / dArr[i10];
                    array[i10] = d10;
                    i10++;
                    for (int i11 = i10; i11 < length; i11++) {
                        array[i11] = array[i11] - (dArr[i11] * d10);
                    }
                }
                for (int i12 = length - 1; i12 >= 0; i12--) {
                    double d11 = array[i12] / this.lTData[i12][i12];
                    array[i12] = d11;
                    for (int i13 = 0; i13 < i12; i13++) {
                        array[i13] = array[i13] - (this.lTData[i13][i12] * d11);
                    }
                }
                return new ArrayRealVector(array, false);
            }
            throw new DimensionMismatchException(realVector.getDimension(), length);
        }

        private Solver(double[][] dArr) {
            this.lTData = dArr;
        }

        @Override
        public RealMatrix solve(RealMatrix realMatrix) {
            int length = this.lTData.length;
            if (realMatrix.getRowDimension() == length) {
                int columnDimension = realMatrix.getColumnDimension();
                double[][] data = realMatrix.getData();
                int i10 = 0;
                while (i10 < length) {
                    double[] dArr = this.lTData[i10];
                    double d10 = dArr[i10];
                    double[] dArr2 = data[i10];
                    for (int i11 = 0; i11 < columnDimension; i11++) {
                        dArr2[i11] = dArr2[i11] / d10;
                    }
                    i10++;
                    for (int i12 = i10; i12 < length; i12++) {
                        double[] dArr3 = data[i12];
                        double d11 = dArr[i12];
                        for (int i13 = 0; i13 < columnDimension; i13++) {
                            dArr3[i13] = dArr3[i13] - (dArr2[i13] * d11);
                        }
                    }
                }
                for (int i14 = length - 1; i14 >= 0; i14--) {
                    double d12 = this.lTData[i14][i14];
                    double[] dArr4 = data[i14];
                    for (int i15 = 0; i15 < columnDimension; i15++) {
                        dArr4[i15] = dArr4[i15] / d12;
                    }
                    for (int i16 = 0; i16 < i14; i16++) {
                        double[] dArr5 = data[i16];
                        double d13 = this.lTData[i16][i14];
                        for (int i17 = 0; i17 < columnDimension; i17++) {
                            dArr5[i17] = dArr5[i17] - (dArr4[i17] * d13);
                        }
                    }
                }
                return new Array2DRowRealMatrix(data);
            }
            throw new DimensionMismatchException(realMatrix.getRowDimension(), length);
        }
    }

    public CholeskyDecomposition(RealMatrix realMatrix) {
        this(realMatrix, 1.0E-15d, 1.0E-10d);
    }

    public double getDeterminant() {
        double d10 = 1.0d;
        int i10 = 0;
        while (true) {
            double[][] dArr = this.lTData;
            if (i10 >= dArr.length) {
                return d10;
            }
            double d11 = dArr[i10][i10];
            d10 *= d11 * d11;
            i10++;
        }
    }

    public RealMatrix getL() {
        if (this.cachedL == null) {
            this.cachedL = getLT().transpose();
        }
        return this.cachedL;
    }

    public RealMatrix getLT() {
        if (this.cachedLT == null) {
            this.cachedLT = MatrixUtils.createRealMatrix(this.lTData);
        }
        return this.cachedLT;
    }

    public DecompositionSolver getSolver() {
        return new Solver(this.lTData);
    }

    public CholeskyDecomposition(RealMatrix realMatrix, double d10, double d11) {
        if (realMatrix.isSquare()) {
            int rowDimension = realMatrix.getRowDimension();
            this.lTData = realMatrix.getData();
            this.cachedL = null;
            this.cachedLT = null;
            int i10 = 0;
            while (i10 < rowDimension) {
                double[] dArr = this.lTData[i10];
                int i11 = i10 + 1;
                int i12 = i11;
                while (i12 < rowDimension) {
                    double[] dArr2 = this.lTData[i12];
                    double d12 = dArr[i12];
                    double d13 = dArr2[i10];
                    int i13 = i10;
                    if (FastMath.abs(d12 - d13) <= FastMath.max(FastMath.abs(d12), FastMath.abs(d13)) * d10) {
                        dArr2[i13] = 0.0d;
                        i12++;
                        i10 = i13;
                    } else {
                        throw new NonSymmetricMatrixException(i13, i12, d10);
                    }
                }
                i10 = i11;
            }
            for (int i14 = 0; i14 < rowDimension; i14++) {
                double[] dArr3 = this.lTData[i14];
                double d14 = dArr3[i14];
                if (d14 > d11) {
                    double sqrt = FastMath.sqrt(d14);
                    dArr3[i14] = sqrt;
                    double d15 = 1.0d / sqrt;
                    for (int i15 = rowDimension - 1; i15 > i14; i15--) {
                        dArr3[i15] = dArr3[i15] * d15;
                        double[] dArr4 = this.lTData[i15];
                        for (int i16 = i15; i16 < rowDimension; i16++) {
                            dArr4[i16] = dArr4[i16] - (dArr3[i15] * dArr3[i16]);
                        }
                    }
                } else {
                    throw new NonPositiveDefiniteMatrixException(dArr3[i14], i14, d11);
                }
            }
            return;
        }
        throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
    }
}
