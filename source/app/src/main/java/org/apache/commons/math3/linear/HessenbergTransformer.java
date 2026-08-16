package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

class HessenbergTransformer {
    private RealMatrix cachedH;
    private RealMatrix cachedP;
    private RealMatrix cachedPt;
    private final double[][] householderVectors;
    private final double[] ort;

    public HessenbergTransformer(RealMatrix realMatrix) {
        if (!realMatrix.isSquare()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int rowDimension = realMatrix.getRowDimension();
        this.householderVectors = realMatrix.getData();
        this.ort = new double[rowDimension];
        this.cachedP = null;
        this.cachedPt = null;
        this.cachedH = null;
        transform();
    }

    private void transform() {
        int length = this.householderVectors.length;
        int i10 = length - 1;
        for (int i11 = 1; i11 <= length - 2; i11++) {
            double d10 = 0.0d;
            double d11 = 0.0d;
            for (int i12 = i11; i12 <= i10; i12++) {
                d11 += FastMath.abs(this.householderVectors[i12][i11 - 1]);
            }
            if (!Precision.equals(d11, 0.0d)) {
                double d12 = 0.0d;
                for (int i13 = i10; i13 >= i11; i13--) {
                    double[] dArr = this.ort;
                    double d13 = this.householderVectors[i13][i11 - 1] / d11;
                    dArr[i13] = d13;
                    d12 += d13 * d13;
                }
                double d14 = this.ort[i11];
                double sqrt = FastMath.sqrt(d12);
                if (d14 > 0.0d) {
                    sqrt = -sqrt;
                }
                double[] dArr2 = this.ort;
                double d15 = dArr2[i11];
                double d16 = d12 - (d15 * sqrt);
                dArr2[i11] = d15 - sqrt;
                int i14 = i11;
                while (i14 < length) {
                    double d17 = d10;
                    for (int i15 = i10; i15 >= i11; i15--) {
                        d17 += this.ort[i15] * this.householderVectors[i15][i14];
                    }
                    double d18 = d17 / d16;
                    for (int i16 = i11; i16 <= i10; i16++) {
                        double[] dArr3 = this.householderVectors[i16];
                        dArr3[i14] = dArr3[i14] - (this.ort[i16] * d18);
                    }
                    i14++;
                    d10 = 0.0d;
                }
                for (int i17 = 0; i17 <= i10; i17++) {
                    double d19 = 0.0d;
                    for (int i18 = i10; i18 >= i11; i18--) {
                        d19 += this.ort[i18] * this.householderVectors[i17][i18];
                    }
                    double d20 = d19 / d16;
                    for (int i19 = i11; i19 <= i10; i19++) {
                        double[] dArr4 = this.householderVectors[i17];
                        dArr4[i19] = dArr4[i19] - (this.ort[i19] * d20);
                    }
                }
                double[] dArr5 = this.ort;
                dArr5[i11] = dArr5[i11] * d11;
                this.householderVectors[i11][i11 - 1] = d11 * sqrt;
            }
        }
    }

    public RealMatrix getH() {
        if (this.cachedH == null) {
            int length = this.householderVectors.length;
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, length, length);
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    int i11 = i10 - 1;
                    dArr[i10][i11] = this.householderVectors[i10][i11];
                }
                for (int i12 = i10; i12 < length; i12++) {
                    dArr[i10][i12] = this.householderVectors[i10][i12];
                }
            }
            this.cachedH = MatrixUtils.createRealMatrix(dArr);
        }
        return this.cachedH;
    }

    public double[][] getHouseholderVectorsRef() {
        return this.householderVectors;
    }

    public RealMatrix getP() {
        if (this.cachedP == null) {
            int length = this.householderVectors.length;
            int i10 = length - 1;
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, length, length);
            int i11 = 0;
            while (i11 < length) {
                int i12 = 0;
                while (i12 < length) {
                    dArr[i11][i12] = i11 == i12 ? 1.0d : 0.0d;
                    i12++;
                }
                i11++;
            }
            for (int i13 = length - 2; i13 >= 1; i13--) {
                int i14 = i13 - 1;
                if (this.householderVectors[i13][i14] != 0.0d) {
                    for (int i15 = i13 + 1; i15 <= i10; i15++) {
                        this.ort[i15] = this.householderVectors[i15][i14];
                    }
                    for (int i16 = i13; i16 <= i10; i16++) {
                        double d10 = 0.0d;
                        for (int i17 = i13; i17 <= i10; i17++) {
                            d10 += this.ort[i17] * dArr[i17][i16];
                        }
                        double d11 = (d10 / this.ort[i13]) / this.householderVectors[i13][i14];
                        for (int i18 = i13; i18 <= i10; i18++) {
                            double[] dArr2 = dArr[i18];
                            dArr2[i16] = dArr2[i16] + (this.ort[i18] * d11);
                        }
                    }
                }
            }
            this.cachedP = MatrixUtils.createRealMatrix(dArr);
        }
        return this.cachedP;
    }

    public RealMatrix getPT() {
        if (this.cachedPt == null) {
            this.cachedPt = getP().transpose();
        }
        return this.cachedPt;
    }
}
