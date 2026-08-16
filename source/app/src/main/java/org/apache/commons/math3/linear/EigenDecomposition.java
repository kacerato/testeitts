package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class EigenDecomposition {
    private static final double EPSILON = 1.0E-12d;
    private RealMatrix cachedD;
    private RealMatrix cachedV;
    private RealMatrix cachedVt;
    private ArrayRealVector[] eigenvectors;
    private double[] imagEigenvalues;
    private final boolean isSymmetric;
    private double[] main;
    private byte maxIter;
    private double[] realEigenvalues;
    private double[] secondary;
    private TriDiagonalTransformer transformer;

    public static class Solver implements DecompositionSolver {
        private final ArrayRealVector[] eigenvectors;
        private double[] imagEigenvalues;
        private double[] realEigenvalues;

        private double eigenvalueNorm(int i10) {
            double d10 = this.realEigenvalues[i10];
            double d11 = this.imagEigenvalues[i10];
            return FastMath.sqrt((d10 * d10) + (d11 * d11));
        }

        @Override
        public RealMatrix getInverse() {
            if (!isNonSingular()) {
                throw new SingularMatrixException();
            }
            int length = this.realEigenvalues.length;
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, length, length);
            for (int i10 = 0; i10 < length; i10++) {
                double[] dArr2 = dArr[i10];
                for (int i11 = 0; i11 < length; i11++) {
                    double d10 = 0.0d;
                    for (int i12 = 0; i12 < length; i12++) {
                        double[] dataRef = this.eigenvectors[i12].getDataRef();
                        d10 += (dataRef[i10] * dataRef[i11]) / this.realEigenvalues[i12];
                    }
                    dArr2[i11] = d10;
                }
            }
            return MatrixUtils.createRealMatrix(dArr);
        }

        @Override
        public boolean isNonSingular() {
            double d10 = 0.0d;
            for (int i10 = 0; i10 < this.realEigenvalues.length; i10++) {
                d10 = FastMath.max(d10, eigenvalueNorm(i10));
            }
            if (d10 == 0.0d) {
                return false;
            }
            for (int i11 = 0; i11 < this.realEigenvalues.length; i11++) {
                if (Precision.equals(eigenvalueNorm(i11) / d10, 0.0d, 1.0E-12d)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public RealVector solve(RealVector realVector) {
            if (isNonSingular()) {
                int length = this.realEigenvalues.length;
                if (realVector.getDimension() == length) {
                    double[] dArr = new double[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        ArrayRealVector arrayRealVector = this.eigenvectors[i10];
                        double[] dataRef = arrayRealVector.getDataRef();
                        double dotProduct = arrayRealVector.dotProduct(realVector) / this.realEigenvalues[i10];
                        for (int i11 = 0; i11 < length; i11++) {
                            dArr[i11] = dArr[i11] + (dataRef[i11] * dotProduct);
                        }
                    }
                    return new ArrayRealVector(dArr, false);
                }
                throw new DimensionMismatchException(realVector.getDimension(), length);
            }
            throw new SingularMatrixException();
        }

        private Solver(double[] dArr, double[] dArr2, ArrayRealVector[] arrayRealVectorArr) {
            this.realEigenvalues = dArr;
            this.imagEigenvalues = dArr2;
            this.eigenvectors = arrayRealVectorArr;
        }

        @Override
        public RealMatrix solve(RealMatrix realMatrix) {
            if (isNonSingular()) {
                int length = this.realEigenvalues.length;
                if (realMatrix.getRowDimension() == length) {
                    int columnDimension = realMatrix.getColumnDimension();
                    double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, length, columnDimension);
                    double[] dArr2 = new double[length];
                    for (int i10 = 0; i10 < columnDimension; i10++) {
                        for (int i11 = 0; i11 < length; i11++) {
                            dArr2[i11] = realMatrix.getEntry(i11, i10);
                            dArr[i11][i10] = 0.0d;
                        }
                        for (int i12 = 0; i12 < length; i12++) {
                            ArrayRealVector arrayRealVector = this.eigenvectors[i12];
                            double[] dataRef = arrayRealVector.getDataRef();
                            double d10 = 0.0d;
                            for (int i13 = 0; i13 < length; i13++) {
                                d10 += arrayRealVector.getEntry(i13) * dArr2[i13];
                            }
                            double d11 = d10 / this.realEigenvalues[i12];
                            for (int i14 = 0; i14 < length; i14++) {
                                double[] dArr3 = dArr[i14];
                                dArr3[i10] = dArr3[i10] + (dataRef[i14] * d11);
                            }
                        }
                    }
                    return new Array2DRowRealMatrix(dArr, false);
                }
                throw new DimensionMismatchException(realMatrix.getRowDimension(), length);
            }
            throw new SingularMatrixException();
        }
    }

    public EigenDecomposition(RealMatrix realMatrix) throws MathArithmeticException {
        this.maxIter = (byte) 30;
        boolean isSymmetric = MatrixUtils.isSymmetric(realMatrix, realMatrix.getRowDimension() * 10 * realMatrix.getColumnDimension() * Precision.EPSILON);
        this.isSymmetric = isSymmetric;
        if (isSymmetric) {
            transformToTridiagonal(realMatrix);
            findEigenVectors(this.transformer.getQ().getData());
        } else {
            findEigenVectorsFromSchur(transformToSchur(realMatrix));
        }
    }

    private Complex cdiv(double d10, double d11, double d12, double d13) {
        return new Complex(d10, d11).divide(new Complex(d12, d13));
    }

    private void findEigenVectors(double[][] dArr) {
        int i10;
        int i11;
        double d10;
        double d11;
        double d12;
        double d13;
        double[][] dArr2 = (double[][]) dArr.clone();
        int length = this.main.length;
        this.realEigenvalues = new double[length];
        this.imagEigenvalues = new double[length];
        double[] dArr3 = new double[length];
        int i12 = 0;
        while (true) {
            i10 = length - 1;
            if (i12 >= i10) {
                break;
            }
            this.realEigenvalues[i12] = this.main[i12];
            dArr3[i12] = this.secondary[i12];
            i12++;
        }
        this.realEigenvalues[i10] = this.main[i10];
        dArr3[i10] = 0.0d;
        double d14 = 0.0d;
        for (int i13 = 0; i13 < length; i13++) {
            if (FastMath.abs(this.realEigenvalues[i13]) > d14) {
                d14 = FastMath.abs(this.realEigenvalues[i13]);
            }
            if (FastMath.abs(dArr3[i13]) > d14) {
                d14 = FastMath.abs(dArr3[i13]);
            }
        }
        if (d14 != 0.0d) {
            for (int i14 = 0; i14 < length; i14++) {
                double abs = FastMath.abs(this.realEigenvalues[i14]);
                double d15 = Precision.EPSILON;
                if (abs <= d15 * d14) {
                    this.realEigenvalues[i14] = 0.0d;
                }
                if (FastMath.abs(dArr3[i14]) <= d15 * d14) {
                    dArr3[i14] = 0.0d;
                }
            }
        }
        for (int i15 = 0; i15 < length; i15++) {
            int i16 = 0;
            do {
                i11 = i15;
                while (i11 < i10) {
                    int i17 = i11 + 1;
                    double abs2 = FastMath.abs(this.realEigenvalues[i11]) + FastMath.abs(this.realEigenvalues[i17]);
                    if (FastMath.abs(dArr3[i11]) + abs2 == abs2) {
                        break;
                    } else {
                        i11 = i17;
                    }
                }
                if (i11 != i15) {
                    if (i16 == this.maxIter) {
                        throw new MaxCountExceededException(LocalizedFormats.CONVERGENCE_FAILED, Byte.valueOf(this.maxIter), new Object[0]);
                    }
                    i16++;
                    double[] dArr4 = this.realEigenvalues;
                    double d16 = (dArr4[i15 + 1] - dArr4[i15]) / (dArr3[i15] * 2.0d);
                    double sqrt = FastMath.sqrt((d16 * d16) + 1.0d);
                    if (d16 < 0.0d) {
                        double[] dArr5 = this.realEigenvalues;
                        d10 = dArr5[i11] - dArr5[i15];
                        d11 = dArr3[i15];
                        d12 = d16 - sqrt;
                    } else {
                        double[] dArr6 = this.realEigenvalues;
                        d10 = dArr6[i11] - dArr6[i15];
                        d11 = dArr3[i15];
                        d12 = d16 + sqrt;
                    }
                    double d17 = d10 + (d11 / d12);
                    int i18 = i11 - 1;
                    double d18 = 0.0d;
                    double d19 = 1.0d;
                    double d20 = 1.0d;
                    while (true) {
                        if (i18 < i15) {
                            break;
                        }
                        double d21 = dArr3[i18];
                        double d22 = d19 * d21;
                        double d23 = d20 * d21;
                        if (FastMath.abs(d22) >= FastMath.abs(d17)) {
                            double d24 = d17 / d22;
                            double sqrt2 = FastMath.sqrt((d24 * d24) + 1.0d);
                            dArr3[i18 + 1] = d22 * sqrt2;
                            d19 = 1.0d / sqrt2;
                            double d25 = d24 * d19;
                            sqrt = sqrt2;
                            d13 = d25;
                        } else {
                            double d26 = d22 / d17;
                            sqrt = FastMath.sqrt((d26 * d26) + 1.0d);
                            dArr3[i18 + 1] = d17 * sqrt;
                            d13 = 1.0d / sqrt;
                            d19 = d26 * d13;
                        }
                        int i19 = i18 + 1;
                        if (dArr3[i19] == 0.0d) {
                            double[] dArr7 = this.realEigenvalues;
                            dArr7[i19] = dArr7[i19] - d18;
                            dArr3[i11] = 0.0d;
                            break;
                        }
                        double[] dArr8 = this.realEigenvalues;
                        double d27 = dArr8[i19] - d18;
                        double d28 = ((dArr8[i18] - d27) * d19) + (d13 * 2.0d * d23);
                        double d29 = d19 * d28;
                        dArr8[i19] = d27 + d29;
                        d17 = (d13 * d28) - d23;
                        for (int i20 = 0; i20 < length; i20++) {
                            double[] dArr9 = dArr2[i20];
                            double d30 = dArr9[i19];
                            dArr9[i19] = (dArr9[i18] * d19) + (d13 * d30);
                            dArr9[i18] = (dArr9[i18] * d13) - (d30 * d19);
                        }
                        i18--;
                        sqrt = d28;
                        d20 = d13;
                        d18 = d29;
                    }
                    if (sqrt != 0.0d || i18 < i15) {
                        double[] dArr10 = this.realEigenvalues;
                        dArr10[i15] = dArr10[i15] - d18;
                        dArr3[i15] = d17;
                        dArr3[i11] = 0.0d;
                    }
                }
            } while (i11 != i15);
        }
        int i21 = 0;
        while (i21 < length) {
            double d31 = this.realEigenvalues[i21];
            int i22 = i21 + 1;
            int i23 = i21;
            for (int i24 = i22; i24 < length; i24++) {
                double d32 = this.realEigenvalues[i24];
                if (d32 > d31) {
                    i23 = i24;
                    d31 = d32;
                }
            }
            if (i23 != i21) {
                double[] dArr11 = this.realEigenvalues;
                dArr11[i23] = dArr11[i21];
                dArr11[i21] = d31;
                for (int i25 = 0; i25 < length; i25++) {
                    double[] dArr12 = dArr2[i25];
                    double d33 = dArr12[i21];
                    dArr12[i21] = dArr12[i23];
                    dArr12[i23] = d33;
                }
            }
            i21 = i22;
        }
        double d34 = 0.0d;
        for (int i26 = 0; i26 < length; i26++) {
            if (FastMath.abs(this.realEigenvalues[i26]) > d34) {
                d34 = FastMath.abs(this.realEigenvalues[i26]);
            }
        }
        if (d34 != 0.0d) {
            for (int i27 = 0; i27 < length; i27++) {
                if (FastMath.abs(this.realEigenvalues[i27]) < Precision.EPSILON * d34) {
                    this.realEigenvalues[i27] = 0.0d;
                }
            }
        }
        this.eigenvectors = new ArrayRealVector[length];
        double[] dArr13 = new double[length];
        for (int i28 = 0; i28 < length; i28++) {
            for (int i29 = 0; i29 < length; i29++) {
                dArr13[i29] = dArr2[i29][i28];
            }
            this.eigenvectors[i28] = new ArrayRealVector(dArr13);
        }
    }

    private void findEigenVectorsFromSchur(SchurTransformer schurTransformer) throws MathArithmeticException {
        double[][] dArr;
        int i10;
        double d10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        double d11;
        double d12;
        int i17;
        double[][] dArr2;
        int i18;
        int i19;
        double[][] data = schurTransformer.getT().getData();
        double[][] data2 = schurTransformer.getP().getData();
        int length = data.length;
        double d13 = 0.0d;
        double d14 = 0.0d;
        for (int i20 = 0; i20 < length; i20++) {
            for (int max = FastMath.max(i20 - 1, 0); max < length; max++) {
                d14 += FastMath.abs(data[i20][max]);
            }
        }
        if (Precision.equals(d14, 0.0d, 1.0E-12d)) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        int i21 = length - 1;
        int i22 = i21;
        double d15 = 0.0d;
        double d16 = 0.0d;
        double d17 = 0.0d;
        while (i22 >= 0) {
            double d18 = this.realEigenvalues[i22];
            double d19 = this.imagEigenvalues[i22];
            if (Precision.equals(d19, d13)) {
                data[i22][i22] = 1.0d;
                int i23 = i22 - 1;
                int i24 = i22;
                double d20 = d15;
                while (i23 >= 0) {
                    double d21 = data[i23][i23] - d18;
                    for (int i25 = i24; i25 <= i22; i25++) {
                        d13 += data[i23][i25] * data[i25][i22];
                    }
                    if (Precision.compareTo(this.imagEigenvalues[i23], 0.0d, 1.0E-12d) < 0) {
                        i19 = i23;
                        d16 = d21;
                        dArr2 = data2;
                        i18 = length;
                        d20 = d13;
                    } else {
                        dArr2 = data2;
                        i18 = length;
                        if (Precision.equals(this.imagEigenvalues[i23], 0.0d)) {
                            if (d21 != 0.0d) {
                                data[i23][i22] = (-d13) / d21;
                            } else {
                                data[i23][i22] = (-d13) / (Precision.EPSILON * d14);
                            }
                            i19 = i23;
                        } else {
                            double[] dArr3 = data[i23];
                            int i26 = i23 + 1;
                            double d22 = dArr3[i26];
                            double d23 = data[i26][i23];
                            double d24 = this.realEigenvalues[i23];
                            double d25 = (d24 - d18) * (d24 - d18);
                            double d26 = this.imagEigenvalues[i23];
                            double d27 = ((d22 * d20) - (d16 * d13)) / (d25 + (d26 * d26));
                            dArr3[i22] = d27;
                            if (FastMath.abs(d22) > FastMath.abs(d16)) {
                                i19 = i23;
                                data[i26][i22] = ((-d13) - (d21 * d27)) / d22;
                                d20 = d20;
                            } else {
                                i19 = i23;
                                data[i26][i22] = ((-d20) - (d23 * d27)) / d16;
                            }
                        }
                        double abs = FastMath.abs(data[i19][i22]);
                        if (Precision.EPSILON * abs * abs > 1.0d) {
                            for (int i27 = i19; i27 <= i22; i27++) {
                                double[] dArr4 = data[i27];
                                dArr4[i22] = dArr4[i22] / abs;
                            }
                        }
                        i24 = i19;
                    }
                    i23 = i19 - 1;
                    data2 = dArr2;
                    d17 = d13;
                    length = i18;
                    d13 = 0.0d;
                }
                dArr = data2;
                i10 = length;
                d15 = d20;
            } else {
                dArr = data2;
                i10 = length;
                if (d19 < d13) {
                    int i28 = i22 - 1;
                    if (FastMath.abs(data[i22][i28]) > FastMath.abs(data[i28][i22])) {
                        double[] dArr5 = data[i28];
                        double[] dArr6 = data[i22];
                        dArr5[i28] = d19 / dArr6[i28];
                        dArr5[i22] = (-(dArr6[i22] - d18)) / dArr6[i28];
                        d10 = d19;
                        i11 = i21;
                        i12 = i22;
                    } else {
                        double[] dArr7 = data[i28];
                        d10 = d19;
                        i11 = i21;
                        i12 = i22;
                        Complex cdiv = cdiv(0.0d, -dArr7[i22], dArr7[i28] - d18, d10);
                        data[i28][i28] = cdiv.getReal();
                        data[i28][i12] = cdiv.getImaginary();
                    }
                    double[] dArr8 = data[i12];
                    dArr8[i28] = 0.0d;
                    dArr8[i12] = 1.0d;
                    int i29 = i28;
                    double d28 = d17;
                    double d29 = d15;
                    int i30 = i12 - 2;
                    double d30 = d29;
                    while (i30 >= 0) {
                        int i31 = i29;
                        double d31 = 0.0d;
                        double d32 = 0.0d;
                        while (i29 <= i12) {
                            double d33 = data[i30][i29];
                            double[] dArr9 = data[i29];
                            d32 += dArr9[i28] * d33;
                            d31 += d33 * dArr9[i12];
                            i29++;
                        }
                        double d34 = data[i30][i30] - d18;
                        if (Precision.compareTo(this.imagEigenvalues[i30], 0.0d, 1.0E-12d) < 0) {
                            d28 = d32;
                            i15 = i11;
                            i17 = i12;
                            i29 = i31;
                            d16 = d34;
                        } else {
                            double d35 = d28;
                            double d36 = d30;
                            if (Precision.equals(this.imagEigenvalues[i30], 0.0d)) {
                                Complex cdiv2 = cdiv(-d32, -d31, d34, d10);
                                data[i30][i28] = cdiv2.getReal();
                                data[i30][i12] = cdiv2.getImaginary();
                                i15 = i11;
                                i16 = i12;
                                d12 = d36;
                                d11 = d35;
                            } else {
                                int i32 = i30 + 1;
                                double d37 = data[i30][i32];
                                double d38 = data[i32][i30];
                                double d39 = this.realEigenvalues[i30];
                                double d40 = this.imagEigenvalues[i30];
                                double d41 = (((d39 - d18) * (d39 - d18)) + (d40 * d40)) - (d10 * d10);
                                double d42 = (d39 - d18) * 2.0d * d10;
                                i15 = i11;
                                i16 = i12;
                                if (Precision.equals(d41, 0.0d) && Precision.equals(d42, 0.0d)) {
                                    d41 = Precision.EPSILON * d14 * (FastMath.abs(d34) + FastMath.abs(d10) + FastMath.abs(d37) + FastMath.abs(d38) + FastMath.abs(d16));
                                }
                                double d43 = d31;
                                double d44 = d32;
                                Complex cdiv3 = cdiv(((d37 * d35) - (d16 * d32)) + (d10 * d31), ((d37 * d36) - (d16 * d31)) - (d10 * d32), d41, d42);
                                data[i30][i28] = cdiv3.getReal();
                                data[i30][i16] = cdiv3.getImaginary();
                                if (FastMath.abs(d37) > FastMath.abs(d16) + FastMath.abs(d10)) {
                                    double[] dArr10 = data[i32];
                                    double[] dArr11 = data[i30];
                                    dArr10[i28] = (((-d44) - (dArr11[i28] * d34)) + (d10 * dArr11[i16])) / d37;
                                    dArr10[i16] = (((-d43) - (d34 * dArr11[i16])) - (d10 * dArr11[i28])) / d37;
                                    d11 = d35;
                                    d12 = d36;
                                } else {
                                    d11 = d35;
                                    double[] dArr12 = data[i30];
                                    d12 = d36;
                                    Complex cdiv4 = cdiv((-d11) - (dArr12[i28] * d38), (-d36) - (d38 * dArr12[i16]), d16, d10);
                                    data[i32][i28] = cdiv4.getReal();
                                    data[i32][i16] = cdiv4.getImaginary();
                                }
                            }
                            double max2 = FastMath.max(FastMath.abs(data[i30][i28]), FastMath.abs(data[i30][i16]));
                            if (Precision.EPSILON * max2 * max2 > 1.0d) {
                                i17 = i16;
                                for (int i33 = i30; i33 <= i17; i33++) {
                                    double[] dArr13 = data[i33];
                                    dArr13[i28] = dArr13[i28] / max2;
                                    dArr13[i17] = dArr13[i17] / max2;
                                }
                            } else {
                                i17 = i16;
                            }
                            d28 = d11;
                            i29 = i30;
                            d31 = d12;
                        }
                        i30--;
                        i12 = i17;
                        i11 = i15;
                        d30 = d31;
                    }
                    double d45 = d30;
                    i13 = i11;
                    i14 = i12;
                    d15 = d45;
                    d17 = d28;
                    i22 = i14 - 1;
                    data2 = dArr;
                    length = i10;
                    i21 = i13;
                    d13 = 0.0d;
                }
            }
            i13 = i21;
            i14 = i22;
            i22 = i14 - 1;
            data2 = dArr;
            length = i10;
            i21 = i13;
            d13 = 0.0d;
        }
        int i34 = i21;
        double[][] dArr14 = data2;
        int i35 = length;
        while (i21 >= 0) {
            int i36 = i34;
            for (int i37 = 0; i37 <= i36; i37++) {
                double d46 = 0.0d;
                for (int i38 = 0; i38 <= FastMath.min(i21, i36); i38++) {
                    d46 += dArr14[i37][i38] * data[i38][i21];
                }
                dArr14[i37][i21] = d46;
            }
            i21--;
            i34 = i36;
        }
        this.eigenvectors = new ArrayRealVector[i35];
        double[] dArr15 = new double[i35];
        for (int i39 = 0; i39 < i35; i39++) {
            for (int i40 = 0; i40 < i35; i40++) {
                dArr15[i40] = dArr14[i40][i39];
            }
            this.eigenvectors[i39] = new ArrayRealVector(dArr15);
        }
    }

    private SchurTransformer transformToSchur(RealMatrix realMatrix) {
        SchurTransformer schurTransformer = new SchurTransformer(realMatrix);
        double[][] data = schurTransformer.getT().getData();
        this.realEigenvalues = new double[data.length];
        this.imagEigenvalues = new double[data.length];
        int i10 = 0;
        while (true) {
            if (i10 >= this.realEigenvalues.length) {
                return schurTransformer;
            }
            if (i10 != r4.length - 1) {
                int i11 = i10 + 1;
                if (!Precision.equals(data[i11][i10], 0.0d, 1.0E-12d)) {
                    double[] dArr = data[i11];
                    double d10 = dArr[i11];
                    double[] dArr2 = data[i10];
                    double d11 = (dArr2[i10] - d10) * 0.5d;
                    double sqrt = FastMath.sqrt(FastMath.abs((d11 * d11) + (dArr[i10] * dArr2[i11])));
                    double[] dArr3 = this.realEigenvalues;
                    double d12 = d10 + d11;
                    dArr3[i10] = d12;
                    double[] dArr4 = this.imagEigenvalues;
                    dArr4[i10] = sqrt;
                    dArr3[i11] = d12;
                    dArr4[i11] = -sqrt;
                    i10 = i11;
                    i10++;
                }
            }
            this.realEigenvalues[i10] = data[i10][i10];
            i10++;
        }
    }

    private void transformToTridiagonal(RealMatrix realMatrix) {
        TriDiagonalTransformer triDiagonalTransformer = new TriDiagonalTransformer(realMatrix);
        this.transformer = triDiagonalTransformer;
        this.main = triDiagonalTransformer.getMainDiagonalRef();
        this.secondary = this.transformer.getSecondaryDiagonalRef();
    }

    public RealMatrix getD() {
        if (this.cachedD == null) {
            this.cachedD = MatrixUtils.createRealDiagonalMatrix(this.realEigenvalues);
            int i10 = 0;
            while (true) {
                double[] dArr = this.imagEigenvalues;
                if (i10 >= dArr.length) {
                    break;
                }
                if (Precision.compareTo(dArr[i10], 0.0d, 1.0E-12d) > 0) {
                    this.cachedD.setEntry(i10, i10 + 1, this.imagEigenvalues[i10]);
                } else if (Precision.compareTo(this.imagEigenvalues[i10], 0.0d, 1.0E-12d) < 0) {
                    this.cachedD.setEntry(i10, i10 - 1, this.imagEigenvalues[i10]);
                }
                i10++;
            }
        }
        return this.cachedD;
    }

    public double getDeterminant() {
        double d10 = 1.0d;
        for (double d11 : this.realEigenvalues) {
            d10 *= d11;
        }
        return d10;
    }

    public RealVector getEigenvector(int i10) {
        return this.eigenvectors[i10].copy();
    }

    public double getImagEigenvalue(int i10) {
        return this.imagEigenvalues[i10];
    }

    public double[] getImagEigenvalues() {
        return (double[]) this.imagEigenvalues.clone();
    }

    public double getRealEigenvalue(int i10) {
        return this.realEigenvalues[i10];
    }

    public double[] getRealEigenvalues() {
        return (double[]) this.realEigenvalues.clone();
    }

    public DecompositionSolver getSolver() {
        if (hasComplexEigenvalues()) {
            throw new MathUnsupportedOperationException();
        }
        return new Solver(this.realEigenvalues, this.imagEigenvalues, this.eigenvectors);
    }

    public RealMatrix getSquareRoot() {
        if (!this.isSymmetric) {
            throw new MathUnsupportedOperationException();
        }
        double[] dArr = new double[this.realEigenvalues.length];
        int i10 = 0;
        while (true) {
            double[] dArr2 = this.realEigenvalues;
            if (i10 >= dArr2.length) {
                RealMatrix createRealDiagonalMatrix = MatrixUtils.createRealDiagonalMatrix(dArr);
                RealMatrix v10 = getV();
                return v10.multiply(createRealDiagonalMatrix).multiply(getVT());
            }
            double d10 = dArr2[i10];
            if (d10 <= 0.0d) {
                throw new MathUnsupportedOperationException();
            }
            dArr[i10] = FastMath.sqrt(d10);
            i10++;
        }
    }

    public RealMatrix getV() {
        if (this.cachedV == null) {
            int length = this.eigenvectors.length;
            this.cachedV = MatrixUtils.createRealMatrix(length, length);
            for (int i10 = 0; i10 < length; i10++) {
                this.cachedV.setColumnVector(i10, this.eigenvectors[i10]);
            }
        }
        return this.cachedV;
    }

    public RealMatrix getVT() {
        if (this.cachedVt == null) {
            int length = this.eigenvectors.length;
            this.cachedVt = MatrixUtils.createRealMatrix(length, length);
            for (int i10 = 0; i10 < length; i10++) {
                this.cachedVt.setRowVector(i10, this.eigenvectors[i10]);
            }
        }
        return this.cachedVt;
    }

    public boolean hasComplexEigenvalues() {
        int i10 = 0;
        while (true) {
            double[] dArr = this.imagEigenvalues;
            if (i10 >= dArr.length) {
                return false;
            }
            if (!Precision.equals(dArr[i10], 0.0d, 1.0E-12d)) {
                return true;
            }
            i10++;
        }
    }

    @Deprecated
    public EigenDecomposition(RealMatrix realMatrix, double d10) throws MathArithmeticException {
        this(realMatrix);
    }

    public EigenDecomposition(double[] dArr, double[] dArr2) {
        this.maxIter = (byte) 30;
        this.isSymmetric = true;
        this.main = (double[]) dArr.clone();
        this.secondary = (double[]) dArr2.clone();
        this.transformer = null;
        int length = dArr.length;
        double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, length, length);
        for (int i10 = 0; i10 < length; i10++) {
            dArr3[i10][i10] = 1.0d;
        }
        findEigenVectors(dArr3);
    }

    @Deprecated
    public EigenDecomposition(double[] dArr, double[] dArr2, double d10) {
        this(dArr, dArr2);
    }
}
