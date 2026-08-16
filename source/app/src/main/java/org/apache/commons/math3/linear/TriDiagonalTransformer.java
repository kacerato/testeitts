package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.util.FastMath;

public class TriDiagonalTransformer {
    private RealMatrix cachedQ;
    private RealMatrix cachedQt;
    private RealMatrix cachedT;
    private final double[][] householderVectors;
    private final double[] main;
    private final double[] secondary;

    public TriDiagonalTransformer(RealMatrix realMatrix) {
        if (!realMatrix.isSquare()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int rowDimension = realMatrix.getRowDimension();
        this.householderVectors = realMatrix.getData();
        this.main = new double[rowDimension];
        this.secondary = new double[rowDimension - 1];
        this.cachedQ = null;
        this.cachedQt = null;
        this.cachedT = null;
        transform();
    }

    private void transform() {
        int length = this.householderVectors.length;
        double[] dArr = new double[length];
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (i10 >= i11) {
                this.main[i11] = this.householderVectors[i11][i11];
                return;
            }
            double[] dArr2 = this.householderVectors[i10];
            this.main[i10] = dArr2[i10];
            int i12 = i10 + 1;
            double d10 = 0.0d;
            for (int i13 = i12; i13 < length; i13++) {
                double d11 = dArr2[i13];
                d10 += d11 * d11;
            }
            double sqrt = dArr2[i12] > 0.0d ? -FastMath.sqrt(d10) : FastMath.sqrt(d10);
            this.secondary[i10] = sqrt;
            if (sqrt != 0.0d) {
                double d12 = dArr2[i12] - sqrt;
                dArr2[i12] = d12;
                double d13 = (-1.0d) / (sqrt * d12);
                Arrays.fill(dArr, i12, length, 0.0d);
                int i14 = i12;
                while (i14 < length) {
                    double[] dArr3 = this.householderVectors[i14];
                    double d14 = dArr2[i14];
                    double d15 = dArr3[i14] * d14;
                    int i15 = i14 + 1;
                    for (int i16 = i15; i16 < length; i16++) {
                        double d16 = dArr3[i16];
                        d15 += dArr2[i16] * d16;
                        dArr[i16] = dArr[i16] + (d16 * d14);
                    }
                    dArr[i14] = (dArr[i14] + d15) * d13;
                    i14 = i15;
                }
                double d17 = 0.0d;
                for (int i17 = i12; i17 < length; i17++) {
                    d17 += dArr[i17] * dArr2[i17];
                }
                double d18 = d17 * (d13 / 2.0d);
                for (int i18 = i12; i18 < length; i18++) {
                    dArr[i18] = dArr[i18] - (dArr2[i18] * d18);
                }
                for (int i19 = i12; i19 < length; i19++) {
                    double[] dArr4 = this.householderVectors[i19];
                    for (int i20 = i19; i20 < length; i20++) {
                        dArr4[i20] = dArr4[i20] - ((dArr2[i19] * dArr[i20]) + (dArr[i19] * dArr2[i20]));
                    }
                }
            }
            i10 = i12;
        }
    }

    public double[][] getHouseholderVectorsRef() {
        return this.householderVectors;
    }

    public double[] getMainDiagonalRef() {
        return this.main;
    }

    public RealMatrix getQ() {
        if (this.cachedQ == null) {
            this.cachedQ = getQT().transpose();
        }
        return this.cachedQ;
    }

    public RealMatrix getQT() {
        if (this.cachedQt == null) {
            int length = this.householderVectors.length;
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, length, length);
            for (int i10 = length - 1; i10 >= 1; i10--) {
                int i11 = i10 - 1;
                double[] dArr2 = this.householderVectors[i11];
                double[] dArr3 = dArr[i10];
                dArr3[i10] = 1.0d;
                double d10 = dArr2[i10];
                if (d10 != 0.0d) {
                    double d11 = this.secondary[i11];
                    double d12 = 1.0d / (d11 * d10);
                    double d13 = 1.0d / d11;
                    dArr3[i10] = (d10 * d13) + 1.0d;
                    int i12 = i10 + 1;
                    for (int i13 = i12; i13 < length; i13++) {
                        dArr[i10][i13] = dArr2[i13] * d13;
                    }
                    for (int i14 = i12; i14 < length; i14++) {
                        double d14 = 0.0d;
                        for (int i15 = i12; i15 < length; i15++) {
                            d14 += dArr[i14][i15] * dArr2[i15];
                        }
                        double d15 = d14 * d12;
                        dArr[i14][i10] = dArr2[i10] * d15;
                        for (int i16 = i12; i16 < length; i16++) {
                            double[] dArr4 = dArr[i14];
                            dArr4[i16] = dArr4[i16] + (dArr2[i16] * d15);
                        }
                    }
                }
            }
            dArr[0][0] = 1.0d;
            this.cachedQt = MatrixUtils.createRealMatrix(dArr);
        }
        return this.cachedQt;
    }

    public double[] getSecondaryDiagonalRef() {
        return this.secondary;
    }

    public RealMatrix getT() {
        if (this.cachedT == null) {
            int length = this.main.length;
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, length, length);
            for (int i10 = 0; i10 < length; i10++) {
                double[] dArr2 = dArr[i10];
                double[] dArr3 = this.main;
                dArr2[i10] = dArr3[i10];
                if (i10 > 0) {
                    int i11 = i10 - 1;
                    dArr2[i11] = this.secondary[i11];
                }
                if (i10 < dArr3.length - 1) {
                    dArr2[i10 + 1] = this.secondary[i10];
                }
            }
            this.cachedT = MatrixUtils.createRealMatrix(dArr);
        }
        return this.cachedT;
    }
}
