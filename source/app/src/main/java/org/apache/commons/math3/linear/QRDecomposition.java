package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;

public class QRDecomposition {
    private RealMatrix cachedH;
    private RealMatrix cachedQ;
    private RealMatrix cachedQT;
    private RealMatrix cachedR;
    private double[][] qrt;
    private double[] rDiag;
    private final double threshold;

    public static class Solver implements DecompositionSolver {
        private final double[][] qrt;
        private final double[] rDiag;
        private final double threshold;

        @Override
        public RealMatrix getInverse() {
            return solve(MatrixUtils.createRealIdentityMatrix(this.qrt[0].length));
        }

        @Override
        public boolean isNonSingular() {
            for (double d10 : this.rDiag) {
                if (FastMath.abs(d10) <= this.threshold) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public RealVector solve(RealVector realVector) {
            double[][] dArr = this.qrt;
            int length = dArr.length;
            int length2 = dArr[0].length;
            if (realVector.getDimension() == length2) {
                if (isNonSingular()) {
                    double[] dArr2 = new double[length];
                    double[] array = realVector.toArray();
                    for (int i10 = 0; i10 < FastMath.min(length2, length); i10++) {
                        double[] dArr3 = this.qrt[i10];
                        double d10 = 0.0d;
                        for (int i11 = i10; i11 < length2; i11++) {
                            d10 += array[i11] * dArr3[i11];
                        }
                        double d11 = d10 / (this.rDiag[i10] * dArr3[i10]);
                        for (int i12 = i10; i12 < length2; i12++) {
                            array[i12] = array[i12] + (dArr3[i12] * d11);
                        }
                    }
                    for (int length3 = this.rDiag.length - 1; length3 >= 0; length3--) {
                        double d12 = array[length3] / this.rDiag[length3];
                        array[length3] = d12;
                        double[] dArr4 = this.qrt[length3];
                        dArr2[length3] = d12;
                        for (int i13 = 0; i13 < length3; i13++) {
                            array[i13] = array[i13] - (dArr4[i13] * d12);
                        }
                    }
                    return new ArrayRealVector(dArr2, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(realVector.getDimension(), length2);
        }

        private Solver(double[][] dArr, double[] dArr2, double d10) {
            this.qrt = dArr;
            this.rDiag = dArr2;
            this.threshold = d10;
        }

        @Override
        public RealMatrix solve(RealMatrix realMatrix) {
            double d10;
            double[][] dArr = this.qrt;
            int length = dArr.length;
            int i10 = 0;
            int length2 = dArr[0].length;
            if (realMatrix.getRowDimension() == length2) {
                if (isNonSingular()) {
                    int columnDimension = realMatrix.getColumnDimension();
                    int i11 = (columnDimension + 51) / 52;
                    double[][] createBlocksLayout = BlockRealMatrix.createBlocksLayout(length, columnDimension);
                    double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), 52);
                    double[] dArr3 = new double[52];
                    int i12 = 0;
                    while (i12 < i11) {
                        int i13 = i12 * 52;
                        int min = FastMath.min(i13 + 52, columnDimension);
                        int i14 = min - i13;
                        realMatrix.copySubMatrix(0, length2 - 1, i13, min - 1, dArr2);
                        int i15 = i10;
                        while (true) {
                            d10 = 1.0d;
                            if (i15 >= FastMath.min(length2, length)) {
                                break;
                            }
                            double[] dArr4 = this.qrt[i15];
                            double d11 = 1.0d / (this.rDiag[i15] * dArr4[i15]);
                            int i16 = columnDimension;
                            int i17 = i11;
                            Arrays.fill(dArr3, i10, i14, 0.0d);
                            int i18 = i15;
                            while (i18 < length2) {
                                double d12 = dArr4[i18];
                                double[] dArr5 = dArr2[i18];
                                while (i10 < i14) {
                                    dArr3[i10] = dArr3[i10] + (dArr5[i10] * d12);
                                    i10++;
                                }
                                i18++;
                                i10 = 0;
                            }
                            for (int i19 = 0; i19 < i14; i19++) {
                                dArr3[i19] = dArr3[i19] * d11;
                            }
                            for (int i20 = i15; i20 < length2; i20++) {
                                double d13 = dArr4[i20];
                                double[] dArr6 = dArr2[i20];
                                for (int i21 = 0; i21 < i14; i21++) {
                                    dArr6[i21] = dArr6[i21] + (dArr3[i21] * d13);
                                }
                            }
                            i15++;
                            columnDimension = i16;
                            i11 = i17;
                            i10 = 0;
                        }
                        int i22 = columnDimension;
                        int i23 = i11;
                        int length3 = this.rDiag.length - 1;
                        while (length3 >= 0) {
                            int i24 = length3 / 52;
                            int i25 = i24 * 52;
                            double d14 = d10 / this.rDiag[length3];
                            double[] dArr7 = dArr2[length3];
                            double[] dArr8 = createBlocksLayout[(i24 * i23) + i12];
                            int i26 = (length3 - i25) * i14;
                            int i27 = 0;
                            while (i27 < i14) {
                                double d15 = dArr7[i27] * d14;
                                dArr7[i27] = d15;
                                dArr8[i26] = d15;
                                i27++;
                                i26++;
                            }
                            double[] dArr9 = this.qrt[length3];
                            for (int i28 = 0; i28 < length3; i28++) {
                                double d16 = dArr9[i28];
                                double[] dArr10 = dArr2[i28];
                                for (int i29 = 0; i29 < i14; i29++) {
                                    dArr10[i29] = dArr10[i29] - (dArr7[i29] * d16);
                                }
                            }
                            length3--;
                            d10 = 1.0d;
                        }
                        i12++;
                        columnDimension = i22;
                        i11 = i23;
                        i10 = 0;
                    }
                    return new BlockRealMatrix(length, columnDimension, createBlocksLayout, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(realMatrix.getRowDimension(), length2);
        }
    }

    public QRDecomposition(RealMatrix realMatrix) {
        this(realMatrix, 0.0d);
    }

    public void decompose(double[][] dArr) {
        for (int i10 = 0; i10 < FastMath.min(dArr.length, dArr[0].length); i10++) {
            performHouseholderReflection(i10, dArr);
        }
    }

    public RealMatrix getH() {
        int i10;
        if (this.cachedH == null) {
            double[][] dArr = this.qrt;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, length2, length);
            int i11 = 0;
            while (i11 < length2) {
                int i12 = 0;
                while (true) {
                    i10 = i11 + 1;
                    if (i12 < FastMath.min(i10, length)) {
                        dArr2[i11][i12] = this.qrt[i12][i11] / (-this.rDiag[i12]);
                        i12++;
                    }
                }
                i11 = i10;
            }
            this.cachedH = MatrixUtils.createRealMatrix(dArr2);
        }
        return this.cachedH;
    }

    public RealMatrix getQ() {
        if (this.cachedQ == null) {
            this.cachedQ = getQT().transpose();
        }
        return this.cachedQ;
    }

    public RealMatrix getQT() {
        double d10;
        if (this.cachedQT == null) {
            double[][] dArr = this.qrt;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, length2, length2);
            int i10 = length2 - 1;
            while (true) {
                d10 = 1.0d;
                if (i10 < FastMath.min(length2, length)) {
                    break;
                }
                dArr2[i10][i10] = 1.0d;
                i10--;
            }
            int min = FastMath.min(length2, length) - 1;
            while (min >= 0) {
                double[] dArr3 = this.qrt[min];
                dArr2[min][min] = d10;
                if (dArr3[min] != 0.0d) {
                    for (int i11 = min; i11 < length2; i11++) {
                        double d11 = 0.0d;
                        for (int i12 = min; i12 < length2; i12++) {
                            d11 -= dArr2[i11][i12] * dArr3[i12];
                        }
                        double d12 = d11 / (this.rDiag[min] * dArr3[min]);
                        for (int i13 = min; i13 < length2; i13++) {
                            double[] dArr4 = dArr2[i11];
                            dArr4[i13] = dArr4[i13] + ((-d12) * dArr3[i13]);
                        }
                    }
                }
                min--;
                d10 = 1.0d;
            }
            this.cachedQT = MatrixUtils.createRealMatrix(dArr2);
        }
        return this.cachedQT;
    }

    public RealMatrix getR() {
        if (this.cachedR == null) {
            double[][] dArr = this.qrt;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, length2, length);
            for (int min = FastMath.min(length2, length) - 1; min >= 0; min--) {
                dArr2[min][min] = this.rDiag[min];
                for (int i10 = min + 1; i10 < length; i10++) {
                    dArr2[min][i10] = this.qrt[i10][min];
                }
            }
            this.cachedR = MatrixUtils.createRealMatrix(dArr2);
        }
        return this.cachedR;
    }

    public DecompositionSolver getSolver() {
        return new Solver(this.qrt, this.rDiag, this.threshold);
    }

    public void performHouseholderReflection(int i10, double[][] dArr) {
        double[] dArr2 = dArr[i10];
        double d10 = 0.0d;
        for (int i11 = i10; i11 < dArr2.length; i11++) {
            double d11 = dArr2[i11];
            d10 += d11 * d11;
        }
        double sqrt = dArr2[i10] > 0.0d ? -FastMath.sqrt(d10) : FastMath.sqrt(d10);
        this.rDiag[i10] = sqrt;
        if (sqrt != 0.0d) {
            dArr2[i10] = dArr2[i10] - sqrt;
            for (int i12 = i10 + 1; i12 < dArr.length; i12++) {
                double[] dArr3 = dArr[i12];
                double d12 = 0.0d;
                for (int i13 = i10; i13 < dArr3.length; i13++) {
                    d12 -= dArr3[i13] * dArr2[i13];
                }
                double d13 = d12 / (dArr2[i10] * sqrt);
                for (int i14 = i10; i14 < dArr3.length; i14++) {
                    dArr3[i14] = dArr3[i14] - (dArr2[i14] * d13);
                }
            }
        }
    }

    public QRDecomposition(RealMatrix realMatrix, double d10) {
        this.threshold = d10;
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        this.qrt = realMatrix.transpose().getData();
        this.rDiag = new double[FastMath.min(rowDimension, columnDimension)];
        this.cachedQ = null;
        this.cachedQT = null;
        this.cachedR = null;
        this.cachedH = null;
        decompose(this.qrt);
    }
}
