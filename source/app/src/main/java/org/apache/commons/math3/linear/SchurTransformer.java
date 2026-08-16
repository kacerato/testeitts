package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class SchurTransformer {
    private static final int MAX_ITERATIONS = 100;
    private RealMatrix cachedP;
    private RealMatrix cachedPt;
    private RealMatrix cachedT;
    private final double epsilon = Precision.EPSILON;
    private final double[][] matrixP;
    private final double[][] matrixT;

    public static class ShiftInfo {
        double exShift;

        double f100208w;

        double f100209x;

        double f100210y;

        private ShiftInfo() {
        }
    }

    public SchurTransformer(RealMatrix realMatrix) {
        if (!realMatrix.isSquare()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        HessenbergTransformer hessenbergTransformer = new HessenbergTransformer(realMatrix);
        this.matrixT = hessenbergTransformer.getH().getData();
        this.matrixP = hessenbergTransformer.getP().getData();
        this.cachedT = null;
        this.cachedP = null;
        this.cachedPt = null;
        transform();
    }

    private void computeShift(int i10, int i11, int i12, ShiftInfo shiftInfo) {
        double[][] dArr = this.matrixT;
        double[] dArr2 = dArr[i11];
        double d10 = dArr2[i11];
        shiftInfo.f100209x = d10;
        shiftInfo.f100208w = 0.0d;
        shiftInfo.f100210y = 0.0d;
        if (i10 < i11) {
            int i13 = i11 - 1;
            double[] dArr3 = dArr[i13];
            shiftInfo.f100210y = dArr3[i13];
            shiftInfo.f100208w = dArr2[i13] * dArr3[i11];
        }
        if (i12 == 10) {
            shiftInfo.exShift += d10;
            for (int i14 = 0; i14 <= i11; i14++) {
                double[] dArr4 = this.matrixT[i14];
                dArr4[i14] = dArr4[i14] - shiftInfo.f100209x;
            }
            int i15 = i11 - 1;
            double abs = FastMath.abs(this.matrixT[i11][i15]) + FastMath.abs(this.matrixT[i15][i11 - 2]);
            double d11 = 0.75d * abs;
            shiftInfo.f100209x = d11;
            shiftInfo.f100210y = d11;
            shiftInfo.f100208w = (-0.4375d) * abs * abs;
        }
        if (i12 == 30) {
            double d12 = (shiftInfo.f100210y - shiftInfo.f100209x) / 2.0d;
            double d13 = (d12 * d12) + shiftInfo.f100208w;
            if (d13 > 0.0d) {
                double sqrt = FastMath.sqrt(d13);
                double d14 = shiftInfo.f100210y;
                double d15 = shiftInfo.f100209x;
                if (d14 < d15) {
                    sqrt = -sqrt;
                }
                double d16 = d15 - (shiftInfo.f100208w / (((d14 - d15) / 2.0d) + sqrt));
                for (int i16 = 0; i16 <= i11; i16++) {
                    double[] dArr5 = this.matrixT[i16];
                    dArr5[i16] = dArr5[i16] - d16;
                }
                shiftInfo.exShift += d16;
                shiftInfo.f100208w = 0.964d;
                shiftInfo.f100210y = 0.964d;
                shiftInfo.f100209x = 0.964d;
            }
        }
    }

    private int findSmallSubDiagonalElement(int i10, double d10) {
        while (i10 > 0) {
            int i11 = i10 - 1;
            double abs = FastMath.abs(this.matrixT[i11][i11]) + FastMath.abs(this.matrixT[i10][i10]);
            if (abs == 0.0d) {
                abs = d10;
            }
            if (FastMath.abs(this.matrixT[i10][i11]) < this.epsilon * abs) {
                break;
            }
            i10--;
        }
        return i10;
    }

    private double getNorm() {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.matrixT.length; i10++) {
            int max = FastMath.max(i10 - 1, 0);
            while (true) {
                double[][] dArr = this.matrixT;
                if (max < dArr.length) {
                    d10 += FastMath.abs(dArr[i10][max]);
                    max++;
                }
            }
        }
        return d10;
    }

    private int initQRStep(int i10, int i11, ShiftInfo shiftInfo, double[] dArr) {
        int i12 = i11 - 2;
        while (i12 >= i10) {
            double[][] dArr2 = this.matrixT;
            double[] dArr3 = dArr2[i12];
            double d10 = dArr3[i12];
            double d11 = shiftInfo.f100209x - d10;
            double d12 = shiftInfo.f100210y - d10;
            int i13 = i12;
            double d13 = (d11 * d12) - shiftInfo.f100208w;
            int i14 = i13 + 1;
            double[] dArr4 = dArr2[i14];
            dArr[0] = (d13 / dArr4[i13]) + dArr3[i14];
            dArr[1] = ((dArr4[i14] - d10) - d11) - d12;
            dArr[2] = dArr2[i13 + 2][i14];
            if (i13 == i10) {
                return i13;
            }
            int i15 = i13 - 1;
            if (FastMath.abs(dArr3[i15]) * (FastMath.abs(dArr[1]) + FastMath.abs(dArr[2])) < this.epsilon * FastMath.abs(dArr[0]) * (FastMath.abs(this.matrixT[i15][i15]) + FastMath.abs(d10) + FastMath.abs(this.matrixT[i14][i14]))) {
                return i13;
            }
            i12 = i13 - 1;
        }
        return i12;
    }

    private void performDoubleQRStep(int i10, int i11, int i12, ShiftInfo shiftInfo, double[] dArr) {
        int i13;
        double d10;
        double d11;
        int length = this.matrixT.length;
        boolean z10 = false;
        double d12 = dArr[0];
        boolean z11 = true;
        double d13 = dArr[1];
        int i14 = 2;
        double d14 = dArr[2];
        int i15 = i11;
        while (true) {
            int i16 = i12 - 1;
            if (i15 > i16) {
                break;
            }
            boolean z12 = i15 != i16 ? z11 : z10;
            if (i15 != i11) {
                double[][] dArr2 = this.matrixT;
                int i17 = i15 - 1;
                double d15 = dArr2[i15][i17];
                double d16 = dArr2[i15 + 1][i17];
                double d17 = z12 ? dArr2[i15 + 2][i17] : 0.0d;
                double abs = FastMath.abs(d15) + FastMath.abs(d16) + FastMath.abs(d17);
                shiftInfo.f100209x = abs;
                double d18 = d17;
                if (Precision.equals(abs, 0.0d, this.epsilon)) {
                    i13 = length;
                    d12 = d15;
                    d13 = d16;
                    d14 = d18;
                    i15++;
                    length = i13;
                    z10 = false;
                    z11 = true;
                    i14 = 2;
                } else {
                    double d19 = shiftInfo.f100209x;
                    double d20 = d15 / d19;
                    d13 = d16 / d19;
                    d14 = d18 / d19;
                    d12 = d20;
                }
            }
            double d21 = d14;
            double sqrt = FastMath.sqrt((d12 * d12) + (d13 * d13) + (d14 * d14));
            if (d12 < 0.0d) {
                sqrt = -sqrt;
            }
            if (sqrt != 0.0d) {
                if (i15 != i11) {
                    d11 = d13;
                    d10 = d12;
                    this.matrixT[i15][i15 - 1] = (-sqrt) * shiftInfo.f100209x;
                } else {
                    d10 = d12;
                    d11 = d13;
                    if (i10 != i11) {
                        double[] dArr3 = this.matrixT[i15];
                        int i18 = i15 - 1;
                        dArr3[i18] = -dArr3[i18];
                    }
                }
                d12 = d10 + sqrt;
                shiftInfo.f100209x = d12 / sqrt;
                shiftInfo.f100210y = d11 / sqrt;
                double d22 = d21 / sqrt;
                double d23 = d11 / d12;
                double d24 = d21 / d12;
                int i19 = i15;
                while (i19 < length) {
                    double[][] dArr4 = this.matrixT;
                    double[] dArr5 = dArr4[i15];
                    double d25 = dArr5[i19];
                    double[] dArr6 = dArr4[i15 + 1];
                    double d26 = d25 + (dArr6[i19] * d23);
                    if (z12) {
                        double[] dArr7 = dArr4[i15 + 2];
                        double d27 = dArr7[i19];
                        d26 += d24 * d27;
                        dArr7[i19] = d27 - (d26 * d22);
                    }
                    int i20 = i19;
                    dArr5[i20] = dArr5[i19] - (shiftInfo.f100209x * d26);
                    dArr6[i20] = dArr6[i20] - (shiftInfo.f100210y * d26);
                    i19 = i20 + 1;
                    d12 = d26;
                }
                int i21 = 0;
                while (i21 <= FastMath.min(i12, i15 + 3)) {
                    double d28 = shiftInfo.f100209x;
                    double[] dArr8 = this.matrixT[i21];
                    int i22 = length;
                    int i23 = i15 + 1;
                    d12 = (d28 * dArr8[i15]) + (shiftInfo.f100210y * dArr8[i23]);
                    if (z12) {
                        int i24 = i15 + 2;
                        double d29 = dArr8[i24];
                        d12 += d22 * d29;
                        dArr8[i24] = d29 - (d12 * d24);
                    }
                    dArr8[i15] = dArr8[i15] - d12;
                    dArr8[i23] = dArr8[i23] - (d12 * d23);
                    i21++;
                    length = i22;
                }
                i13 = length;
                int length2 = this.matrixT.length - 1;
                int i25 = 0;
                while (i25 <= length2) {
                    double d30 = shiftInfo.f100209x;
                    double[] dArr9 = this.matrixP[i25];
                    int i26 = i15 + 1;
                    double d31 = (d30 * dArr9[i15]) + (shiftInfo.f100210y * dArr9[i26]);
                    if (z12) {
                        int i27 = i15 + 2;
                        double d32 = dArr9[i27];
                        d31 += d22 * d32;
                        dArr9[i27] = d32 - (d31 * d24);
                    }
                    dArr9[i15] = dArr9[i15] - d31;
                    dArr9[i26] = dArr9[i26] - (d31 * d23);
                    i25++;
                    d12 = d31;
                }
                d13 = d23;
                d14 = d24;
            } else {
                i13 = length;
                d14 = d21;
            }
            i15++;
            length = i13;
            z10 = false;
            z11 = true;
            i14 = 2;
        }
        int i28 = i11 + i14;
        for (int i29 = i28; i29 <= i12; i29++) {
            double[] dArr10 = this.matrixT[i29];
            dArr10[i29 - 2] = 0.0d;
            if (i29 > i28) {
                dArr10[i29 - 3] = 0.0d;
            }
        }
    }

    private void transform() {
        double d10;
        int length = this.matrixT.length;
        double norm = getNorm();
        ShiftInfo shiftInfo = new ShiftInfo();
        int i10 = length - 1;
        int i11 = i10;
        int i12 = 0;
        while (i11 >= 0) {
            int findSmallSubDiagonalElement = findSmallSubDiagonalElement(i11, norm);
            if (findSmallSubDiagonalElement == i11) {
                double[] dArr = this.matrixT[i11];
                dArr[i11] = dArr[i11] + shiftInfo.exShift;
                i11--;
                d10 = norm;
            } else {
                int i13 = i11 - 1;
                if (findSmallSubDiagonalElement == i13) {
                    double[][] dArr2 = this.matrixT;
                    double[] dArr3 = dArr2[i13];
                    double d11 = dArr3[i13];
                    double[] dArr4 = dArr2[i11];
                    double d12 = dArr4[i11];
                    double d13 = (d11 - d12) / 2.0d;
                    double d14 = (d13 * d13) + (dArr4[i13] * dArr3[i11]);
                    d10 = norm;
                    double d15 = shiftInfo.exShift;
                    dArr4[i11] = d12 + d15;
                    dArr3[i13] = dArr3[i13] + d15;
                    if (d14 >= 0.0d) {
                        double sqrt = FastMath.sqrt(FastMath.abs(d14));
                        double d16 = d13 >= 0.0d ? d13 + sqrt : d13 - sqrt;
                        double d17 = this.matrixT[i11][i13];
                        double abs = FastMath.abs(d17) + FastMath.abs(d16);
                        double d18 = d17 / abs;
                        double d19 = d16 / abs;
                        double sqrt2 = FastMath.sqrt((d18 * d18) + (d19 * d19));
                        double d20 = d18 / sqrt2;
                        double d21 = d19 / sqrt2;
                        for (int i14 = i13; i14 < length; i14++) {
                            double[][] dArr5 = this.matrixT;
                            double[] dArr6 = dArr5[i13];
                            double d22 = dArr6[i14];
                            double[] dArr7 = dArr5[i11];
                            dArr6[i14] = (d21 * d22) + (dArr7[i14] * d20);
                            dArr7[i14] = (dArr7[i14] * d21) - (d22 * d20);
                        }
                        for (int i15 = 0; i15 <= i11; i15++) {
                            double[] dArr8 = this.matrixT[i15];
                            double d23 = dArr8[i13];
                            dArr8[i13] = (d21 * d23) + (dArr8[i11] * d20);
                            dArr8[i11] = (dArr8[i11] * d21) - (d23 * d20);
                        }
                        for (int i16 = 0; i16 <= i10; i16++) {
                            double[] dArr9 = this.matrixP[i16];
                            double d24 = dArr9[i13];
                            dArr9[i13] = (d21 * d24) + (dArr9[i11] * d20);
                            dArr9[i11] = (dArr9[i11] * d21) - (d24 * d20);
                        }
                    }
                    i11 -= 2;
                } else {
                    d10 = norm;
                    computeShift(findSmallSubDiagonalElement, i11, i12, shiftInfo);
                    int i17 = i12 + 1;
                    if (i17 > 100) {
                        throw new MaxCountExceededException(LocalizedFormats.CONVERGENCE_FAILED, 100, new Object[0]);
                    }
                    double[] dArr10 = new double[3];
                    performDoubleQRStep(findSmallSubDiagonalElement, initQRStep(findSmallSubDiagonalElement, i11, shiftInfo, dArr10), i11, shiftInfo, dArr10);
                    i12 = i17;
                    norm = d10;
                }
            }
            i12 = 0;
            norm = d10;
        }
    }

    public RealMatrix getP() {
        if (this.cachedP == null) {
            this.cachedP = MatrixUtils.createRealMatrix(this.matrixP);
        }
        return this.cachedP;
    }

    public RealMatrix getPT() {
        if (this.cachedPt == null) {
            this.cachedPt = getP().transpose();
        }
        return this.cachedPt;
    }

    public RealMatrix getT() {
        if (this.cachedT == null) {
            this.cachedT = MatrixUtils.createRealMatrix(this.matrixT);
        }
        return this.cachedT;
    }
}
