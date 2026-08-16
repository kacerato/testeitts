package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.util.FastMath;

class BiDiagonalTransformer {
    private RealMatrix cachedB;
    private RealMatrix cachedU;
    private RealMatrix cachedV;
    private final double[][] householderVectors;
    private final double[] main;
    private final double[] secondary;

    public BiDiagonalTransformer(RealMatrix realMatrix) {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        int min = FastMath.min(rowDimension, columnDimension);
        this.householderVectors = realMatrix.getData();
        this.main = new double[min];
        this.secondary = new double[min - 1];
        this.cachedU = null;
        this.cachedB = null;
        this.cachedV = null;
        if (rowDimension >= columnDimension) {
            transformToUpperBiDiagonal();
        } else {
            transformToLowerBiDiagonal();
        }
    }

    private void transformToLowerBiDiagonal() {
        double[][] dArr = this.householderVectors;
        int length = dArr.length;
        int length2 = dArr[0].length;
        for (int i10 = 0; i10 < length; i10++) {
            double[] dArr2 = this.householderVectors[i10];
            double d10 = 0.0d;
            for (int i11 = i10; i11 < length2; i11++) {
                double d11 = dArr2[i11];
                d10 += d11 * d11;
            }
            double sqrt = dArr2[i10] > 0.0d ? -FastMath.sqrt(d10) : FastMath.sqrt(d10);
            this.main[i10] = sqrt;
            if (sqrt != 0.0d) {
                dArr2[i10] = dArr2[i10] - sqrt;
                for (int i12 = i10 + 1; i12 < length; i12++) {
                    double[] dArr3 = this.householderVectors[i12];
                    double d12 = 0.0d;
                    for (int i13 = i10; i13 < length2; i13++) {
                        d12 -= dArr3[i13] * dArr2[i13];
                    }
                    double d13 = d12 / (this.householderVectors[i10][i10] * sqrt);
                    for (int i14 = i10; i14 < length2; i14++) {
                        dArr3[i14] = dArr3[i14] - (dArr2[i14] * d13);
                    }
                }
            }
            if (i10 < length - 1) {
                int i15 = i10 + 1;
                double[] dArr4 = this.householderVectors[i15];
                double d14 = 0.0d;
                for (int i16 = i15; i16 < length; i16++) {
                    double d15 = this.householderVectors[i16][i10];
                    d14 += d15 * d15;
                }
                double sqrt2 = dArr4[i10] > 0.0d ? -FastMath.sqrt(d14) : FastMath.sqrt(d14);
                this.secondary[i10] = sqrt2;
                if (sqrt2 != 0.0d) {
                    dArr4[i10] = dArr4[i10] - sqrt2;
                    for (int i17 = i15; i17 < length2; i17++) {
                        double d16 = 0.0d;
                        for (int i18 = i15; i18 < length; i18++) {
                            double[] dArr5 = this.householderVectors[i18];
                            d16 -= dArr5[i17] * dArr5[i10];
                        }
                        double d17 = d16 / (dArr4[i10] * sqrt2);
                        for (int i19 = i15; i19 < length; i19++) {
                            double[] dArr6 = this.householderVectors[i19];
                            dArr6[i17] = dArr6[i17] - (dArr6[i10] * d17);
                        }
                    }
                }
            }
        }
    }

    private void transformToUpperBiDiagonal() {
        double[][] dArr = this.householderVectors;
        int length = dArr.length;
        int length2 = dArr[0].length;
        for (int i10 = 0; i10 < length2; i10++) {
            double d10 = 0.0d;
            for (int i11 = i10; i11 < length; i11++) {
                double d11 = this.householderVectors[i11][i10];
                d10 += d11 * d11;
            }
            double[] dArr2 = this.householderVectors[i10];
            double d12 = dArr2[i10];
            double sqrt = FastMath.sqrt(d10);
            if (d12 > 0.0d) {
                sqrt = -sqrt;
            }
            this.main[i10] = sqrt;
            if (sqrt != 0.0d) {
                dArr2[i10] = dArr2[i10] - sqrt;
                for (int i12 = i10 + 1; i12 < length2; i12++) {
                    double d13 = 0.0d;
                    for (int i13 = i10; i13 < length; i13++) {
                        double[] dArr3 = this.householderVectors[i13];
                        d13 -= dArr3[i12] * dArr3[i10];
                    }
                    double d14 = d13 / (this.householderVectors[i10][i10] * sqrt);
                    for (int i14 = i10; i14 < length; i14++) {
                        double[] dArr4 = this.householderVectors[i14];
                        dArr4[i12] = dArr4[i12] - (dArr4[i10] * d14);
                    }
                }
            }
            if (i10 < length2 - 1) {
                int i15 = i10 + 1;
                double d15 = 0.0d;
                for (int i16 = i15; i16 < length2; i16++) {
                    double d16 = dArr2[i16];
                    d15 += d16 * d16;
                }
                double sqrt2 = dArr2[i15] > 0.0d ? -FastMath.sqrt(d15) : FastMath.sqrt(d15);
                this.secondary[i10] = sqrt2;
                if (sqrt2 != 0.0d) {
                    dArr2[i15] = dArr2[i15] - sqrt2;
                    for (int i17 = i15; i17 < length; i17++) {
                        double[] dArr5 = this.householderVectors[i17];
                        double d17 = 0.0d;
                        for (int i18 = i15; i18 < length2; i18++) {
                            d17 -= dArr5[i18] * dArr2[i18];
                        }
                        double d18 = d17 / (dArr2[i15] * sqrt2);
                        for (int i19 = i15; i19 < length2; i19++) {
                            dArr5[i19] = dArr5[i19] - (dArr2[i19] * d18);
                        }
                    }
                }
            }
        }
    }

    public RealMatrix getB() {
        if (this.cachedB == null) {
            double[][] dArr = this.householderVectors;
            int length = dArr.length;
            int i10 = 0;
            int length2 = dArr[0].length;
            double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, length, length2);
            while (true) {
                double[] dArr3 = this.main;
                if (i10 >= dArr3.length) {
                    break;
                }
                double[] dArr4 = dArr2[i10];
                dArr4[i10] = dArr3[i10];
                if (length < length2) {
                    if (i10 > 0) {
                        int i11 = i10 - 1;
                        dArr4[i11] = this.secondary[i11];
                    }
                } else if (i10 < dArr3.length - 1) {
                    dArr4[i10 + 1] = this.secondary[i10];
                }
                i10++;
            }
            this.cachedB = MatrixUtils.createRealMatrix(dArr2);
        }
        return this.cachedB;
    }

    public double[][] getHouseholderVectorsRef() {
        return this.householderVectors;
    }

    public double[] getMainDiagonalRef() {
        return this.main;
    }

    public double[] getSecondaryDiagonalRef() {
        return this.secondary;
    }

    public RealMatrix getU() {
        double d10;
        if (this.cachedU == null) {
            double[][] dArr = this.householderVectors;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[] dArr2 = this.main;
            int length3 = dArr2.length;
            int i10 = length >= length2 ? 0 : 1;
            if (length < length2) {
                dArr2 = this.secondary;
            }
            double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, length, length);
            int i11 = length - 1;
            while (true) {
                d10 = 1.0d;
                if (i11 < length3) {
                    break;
                }
                dArr3[i11][i11] = 1.0d;
                i11--;
            }
            int i12 = length3 - 1;
            while (i12 >= i10) {
                double[] dArr4 = this.householderVectors[i12];
                dArr3[i12][i12] = d10;
                int i13 = i12 - i10;
                double d11 = 0.0d;
                if (dArr4[i13] != 0.0d) {
                    int i14 = i12;
                    while (i14 < length) {
                        double d12 = d11;
                        for (int i15 = i12; i15 < length; i15++) {
                            d12 -= dArr3[i15][i14] * this.householderVectors[i15][i13];
                        }
                        double d13 = d12 / (dArr2[i13] * dArr4[i13]);
                        for (int i16 = i12; i16 < length; i16++) {
                            double[] dArr5 = dArr3[i16];
                            dArr5[i14] = dArr5[i14] + ((-d13) * this.householderVectors[i16][i13]);
                        }
                        i14++;
                        d11 = 0.0d;
                    }
                }
                i12--;
                d10 = 1.0d;
            }
            if (i10 > 0) {
                dArr3[0][0] = 1.0d;
            }
            this.cachedU = MatrixUtils.createRealMatrix(dArr3);
        }
        return this.cachedU;
    }

    public RealMatrix getV() {
        double d10;
        if (this.cachedV == null) {
            double[][] dArr = this.householderVectors;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[] dArr2 = this.main;
            int length3 = dArr2.length;
            int i10 = length >= length2 ? 1 : 0;
            if (length >= length2) {
                dArr2 = this.secondary;
            }
            double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, length2, length2);
            int i11 = length2 - 1;
            while (true) {
                d10 = 1.0d;
                if (i11 < length3) {
                    break;
                }
                dArr3[i11][i11] = 1.0d;
                i11--;
            }
            int i12 = length3 - 1;
            while (i12 >= i10) {
                int i13 = i12 - i10;
                double[] dArr4 = this.householderVectors[i13];
                dArr3[i12][i12] = d10;
                double d11 = 0.0d;
                if (dArr4[i12] != 0.0d) {
                    int i14 = i12;
                    while (i14 < length2) {
                        double d12 = d11;
                        for (int i15 = i12; i15 < length2; i15++) {
                            d12 -= dArr3[i15][i14] * dArr4[i15];
                        }
                        double d13 = d12 / (dArr2[i13] * dArr4[i12]);
                        for (int i16 = i12; i16 < length2; i16++) {
                            double[] dArr5 = dArr3[i16];
                            dArr5[i14] = dArr5[i14] + ((-d13) * dArr4[i16]);
                        }
                        i14++;
                        d11 = 0.0d;
                    }
                }
                i12--;
                d10 = 1.0d;
            }
            if (i10 > 0) {
                dArr3[0][0] = 1.0d;
            }
            this.cachedV = MatrixUtils.createRealMatrix(dArr3);
        }
        return this.cachedV;
    }

    public boolean isUpperBiDiagonal() {
        double[][] dArr = this.householderVectors;
        return dArr.length >= dArr[0].length;
    }
}
