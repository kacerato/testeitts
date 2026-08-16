package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;

public class LUDecomposition {
    private static final double DEFAULT_TOO_SMALL = 1.0E-11d;
    private RealMatrix cachedL;
    private RealMatrix cachedP;
    private RealMatrix cachedU;
    private boolean even;
    private final double[][] lu;
    private final int[] pivot;
    private boolean singular;

    public static class Solver implements DecompositionSolver {
        private final double[][] lu;
        private final int[] pivot;
        private final boolean singular;

        @Override
        public RealMatrix getInverse() {
            return solve(MatrixUtils.createRealIdentityMatrix(this.pivot.length));
        }

        @Override
        public boolean isNonSingular() {
            return !this.singular;
        }

        @Override
        public RealVector solve(RealVector realVector) {
            int length = this.pivot.length;
            if (realVector.getDimension() == length) {
                if (!this.singular) {
                    double[] dArr = new double[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        dArr[i10] = realVector.getEntry(this.pivot[i10]);
                    }
                    int i11 = 0;
                    while (i11 < length) {
                        double d10 = dArr[i11];
                        int i12 = i11 + 1;
                        for (int i13 = i12; i13 < length; i13++) {
                            dArr[i13] = dArr[i13] - (this.lu[i13][i11] * d10);
                        }
                        i11 = i12;
                    }
                    for (int i14 = length - 1; i14 >= 0; i14--) {
                        double d11 = dArr[i14] / this.lu[i14][i14];
                        dArr[i14] = d11;
                        for (int i15 = 0; i15 < i14; i15++) {
                            dArr[i15] = dArr[i15] - (this.lu[i15][i14] * d11);
                        }
                    }
                    return new ArrayRealVector(dArr, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(realVector.getDimension(), length);
        }

        private Solver(double[][] dArr, int[] iArr, boolean z10) {
            this.lu = dArr;
            this.pivot = iArr;
            this.singular = z10;
        }

        @Override
        public RealMatrix solve(RealMatrix realMatrix) {
            int length = this.pivot.length;
            if (realMatrix.getRowDimension() == length) {
                if (!this.singular) {
                    int columnDimension = realMatrix.getColumnDimension();
                    double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, length, columnDimension);
                    for (int i10 = 0; i10 < length; i10++) {
                        double[] dArr2 = dArr[i10];
                        int i11 = this.pivot[i10];
                        for (int i12 = 0; i12 < columnDimension; i12++) {
                            dArr2[i12] = realMatrix.getEntry(i11, i12);
                        }
                    }
                    int i13 = 0;
                    while (i13 < length) {
                        double[] dArr3 = dArr[i13];
                        int i14 = i13 + 1;
                        for (int i15 = i14; i15 < length; i15++) {
                            double[] dArr4 = dArr[i15];
                            double d10 = this.lu[i15][i13];
                            for (int i16 = 0; i16 < columnDimension; i16++) {
                                dArr4[i16] = dArr4[i16] - (dArr3[i16] * d10);
                            }
                        }
                        i13 = i14;
                    }
                    for (int i17 = length - 1; i17 >= 0; i17--) {
                        double[] dArr5 = dArr[i17];
                        double d11 = this.lu[i17][i17];
                        for (int i18 = 0; i18 < columnDimension; i18++) {
                            dArr5[i18] = dArr5[i18] / d11;
                        }
                        for (int i19 = 0; i19 < i17; i19++) {
                            double[] dArr6 = dArr[i19];
                            double d12 = this.lu[i19][i17];
                            for (int i20 = 0; i20 < columnDimension; i20++) {
                                dArr6[i20] = dArr6[i20] - (dArr5[i20] * d12);
                            }
                        }
                    }
                    return new Array2DRowRealMatrix(dArr, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(realMatrix.getRowDimension(), length);
        }
    }

    public LUDecomposition(RealMatrix realMatrix) {
        this(realMatrix, DEFAULT_TOO_SMALL);
    }

    public double getDeterminant() {
        if (this.singular) {
            return 0.0d;
        }
        int length = this.pivot.length;
        double d10 = this.even ? 1.0d : -1.0d;
        for (int i10 = 0; i10 < length; i10++) {
            d10 *= this.lu[i10][i10];
        }
        return d10;
    }

    public RealMatrix getL() {
        if (this.cachedL == null && !this.singular) {
            int length = this.pivot.length;
            this.cachedL = MatrixUtils.createRealMatrix(length, length);
            for (int i10 = 0; i10 < length; i10++) {
                double[] dArr = this.lu[i10];
                for (int i11 = 0; i11 < i10; i11++) {
                    this.cachedL.setEntry(i10, i11, dArr[i11]);
                }
                this.cachedL.setEntry(i10, i10, 1.0d);
            }
        }
        return this.cachedL;
    }

    public RealMatrix getP() {
        if (this.cachedP == null && !this.singular) {
            int length = this.pivot.length;
            this.cachedP = MatrixUtils.createRealMatrix(length, length);
            for (int i10 = 0; i10 < length; i10++) {
                this.cachedP.setEntry(i10, this.pivot[i10], 1.0d);
            }
        }
        return this.cachedP;
    }

    public int[] getPivot() {
        return (int[]) this.pivot.clone();
    }

    public DecompositionSolver getSolver() {
        return new Solver(this.lu, this.pivot, this.singular);
    }

    public RealMatrix getU() {
        if (this.cachedU == null && !this.singular) {
            int length = this.pivot.length;
            this.cachedU = MatrixUtils.createRealMatrix(length, length);
            for (int i10 = 0; i10 < length; i10++) {
                double[] dArr = this.lu[i10];
                for (int i11 = i10; i11 < length; i11++) {
                    this.cachedU.setEntry(i10, i11, dArr[i11]);
                }
            }
        }
        return this.cachedU;
    }

    public LUDecomposition(RealMatrix realMatrix, double d10) {
        if (realMatrix.isSquare()) {
            int columnDimension = realMatrix.getColumnDimension();
            this.lu = realMatrix.getData();
            this.pivot = new int[columnDimension];
            this.cachedL = null;
            this.cachedU = null;
            this.cachedP = null;
            for (int i10 = 0; i10 < columnDimension; i10++) {
                this.pivot[i10] = i10;
            }
            this.even = true;
            this.singular = false;
            int i11 = 0;
            while (i11 < columnDimension) {
                for (int i12 = 0; i12 < i11; i12++) {
                    double[] dArr = this.lu[i12];
                    double d11 = dArr[i11];
                    for (int i13 = 0; i13 < i12; i13++) {
                        d11 -= dArr[i13] * this.lu[i13][i11];
                    }
                    dArr[i11] = d11;
                }
                double d12 = Double.NEGATIVE_INFINITY;
                int i14 = i11;
                int i15 = i14;
                while (i14 < columnDimension) {
                    double[] dArr2 = this.lu[i14];
                    double d13 = dArr2[i11];
                    for (int i16 = 0; i16 < i11; i16++) {
                        d13 -= dArr2[i16] * this.lu[i16][i11];
                    }
                    dArr2[i11] = d13;
                    if (FastMath.abs(d13) > d12) {
                        d12 = FastMath.abs(d13);
                        i15 = i14;
                    }
                    i14++;
                }
                if (FastMath.abs(this.lu[i15][i11]) < d10) {
                    this.singular = true;
                    return;
                }
                if (i15 != i11) {
                    double[][] dArr3 = this.lu;
                    double[] dArr4 = dArr3[i15];
                    double[] dArr5 = dArr3[i11];
                    for (int i17 = 0; i17 < columnDimension; i17++) {
                        double d14 = dArr4[i17];
                        dArr4[i17] = dArr5[i17];
                        dArr5[i17] = d14;
                    }
                    int[] iArr = this.pivot;
                    int i18 = iArr[i15];
                    iArr[i15] = iArr[i11];
                    iArr[i11] = i18;
                    this.even = !this.even;
                }
                double d15 = this.lu[i11][i11];
                int i19 = i11 + 1;
                for (int i20 = i19; i20 < columnDimension; i20++) {
                    double[] dArr6 = this.lu[i20];
                    dArr6[i11] = dArr6[i11] / d15;
                }
                i11 = i19;
            }
            return;
        }
        throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
    }
}
