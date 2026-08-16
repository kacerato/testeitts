package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class SingularValueDecomposition {
    private static final double EPS = 2.220446049250313E-16d;
    private static final double TINY = 1.6033346880071782E-291d;
    private RealMatrix cachedS;
    private final RealMatrix cachedU;
    private RealMatrix cachedUt;
    private final RealMatrix cachedV;
    private RealMatrix cachedVt;

    private final int f100211m;

    private final int f100212n;
    private final double[] singularValues;
    private final double tol;
    private final boolean transposed;

    public static class Solver implements DecompositionSolver {
        private boolean nonSingular;
        private final RealMatrix pseudoInverse;

        @Override
        public RealMatrix getInverse() {
            return this.pseudoInverse;
        }

        @Override
        public boolean isNonSingular() {
            return this.nonSingular;
        }

        @Override
        public RealVector solve(RealVector realVector) {
            return this.pseudoInverse.operate(realVector);
        }

        private Solver(double[] dArr, RealMatrix realMatrix, RealMatrix realMatrix2, boolean z10, double d10) {
            double[][] data = realMatrix.getData();
            for (int i10 = 0; i10 < dArr.length; i10++) {
                double d11 = dArr[i10];
                double d12 = d11 > d10 ? 1.0d / d11 : 0.0d;
                double[] dArr2 = data[i10];
                for (int i11 = 0; i11 < dArr2.length; i11++) {
                    dArr2[i11] = dArr2[i11] * d12;
                }
            }
            this.pseudoInverse = realMatrix2.multiply(new Array2DRowRealMatrix(data, false));
            this.nonSingular = z10;
        }

        @Override
        public RealMatrix solve(RealMatrix realMatrix) {
            return this.pseudoInverse.multiply(realMatrix);
        }
    }

    public SingularValueDecomposition(RealMatrix realMatrix) {
        double[][] data;
        double d10;
        char c10;
        int i10;
        double[][] dArr;
        int i11;
        int i12;
        double d11;
        double[][] dArr2;
        int i13;
        if (realMatrix.getRowDimension() < realMatrix.getColumnDimension()) {
            this.transposed = true;
            data = realMatrix.transpose().getData();
            this.f100211m = realMatrix.getColumnDimension();
            this.f100212n = realMatrix.getRowDimension();
        } else {
            this.transposed = false;
            data = realMatrix.getData();
            this.f100211m = realMatrix.getRowDimension();
            this.f100212n = realMatrix.getColumnDimension();
        }
        int i14 = this.f100212n;
        this.singularValues = new double[i14];
        int[] iArr = {this.f100211m, i14};
        Class<Double> cls = Double.TYPE;
        double[][] dArr3 = (double[][]) Array.newInstance(cls, iArr);
        int i15 = this.f100212n;
        double[][] dArr4 = (double[][]) Array.newInstance(cls, i15, i15);
        int i16 = this.f100212n;
        double[] dArr5 = new double[i16];
        int i17 = this.f100211m;
        double[] dArr6 = new double[i17];
        int min = FastMath.min(i17 - 1, i16);
        int max = FastMath.max(0, this.f100212n - 2);
        int i18 = 0;
        while (true) {
            d10 = 0.0d;
            if (i18 >= FastMath.max(min, max)) {
                break;
            }
            if (i18 < min) {
                this.singularValues[i18] = 0.0d;
                int i19 = i18;
                while (i19 < this.f100211m) {
                    double[] dArr7 = this.singularValues;
                    dArr7[i18] = FastMath.hypot(dArr7[i18], data[i19][i18]);
                    i19++;
                    dArr3 = dArr3;
                    min = min;
                }
                dArr2 = dArr3;
                i13 = min;
                double[] dArr8 = this.singularValues;
                double d12 = dArr8[i18];
                if (d12 != 0.0d) {
                    if (data[i18][i18] < 0.0d) {
                        dArr8[i18] = -d12;
                    }
                    for (int i20 = i18; i20 < this.f100211m; i20++) {
                        double[] dArr9 = data[i20];
                        dArr9[i18] = dArr9[i18] / this.singularValues[i18];
                    }
                    double[] dArr10 = data[i18];
                    dArr10[i18] = dArr10[i18] + 1.0d;
                }
                double[] dArr11 = this.singularValues;
                dArr11[i18] = -dArr11[i18];
            } else {
                dArr2 = dArr3;
                i13 = min;
            }
            int i21 = i18 + 1;
            int i22 = i21;
            while (i22 < this.f100212n) {
                int i23 = i13;
                if (i18 < i23 && this.singularValues[i18] != 0.0d) {
                    double d13 = 0.0d;
                    for (int i24 = i18; i24 < this.f100211m; i24++) {
                        double[] dArr12 = data[i24];
                        d13 += dArr12[i18] * dArr12[i22];
                    }
                    double d14 = (-d13) / data[i18][i18];
                    for (int i25 = i18; i25 < this.f100211m; i25++) {
                        double[] dArr13 = data[i25];
                        dArr13[i22] = dArr13[i22] + (dArr13[i18] * d14);
                    }
                }
                dArr5[i22] = data[i18][i22];
                i22++;
                i13 = i23;
            }
            int i26 = i13;
            if (i18 < i26) {
                for (int i27 = i18; i27 < this.f100211m; i27++) {
                    dArr2[i27][i18] = data[i27][i18];
                }
            }
            if (i18 < max) {
                dArr5[i18] = 0.0d;
                for (int i28 = i21; i28 < this.f100212n; i28++) {
                    dArr5[i18] = FastMath.hypot(dArr5[i18], dArr5[i28]);
                }
                double d15 = dArr5[i18];
                if (d15 != 0.0d) {
                    if (dArr5[i21] < 0.0d) {
                        dArr5[i18] = -d15;
                    }
                    for (int i29 = i21; i29 < this.f100212n; i29++) {
                        dArr5[i29] = dArr5[i29] / dArr5[i18];
                    }
                    dArr5[i21] = dArr5[i21] + 1.0d;
                }
                double d16 = -dArr5[i18];
                dArr5[i18] = d16;
                if (i21 < this.f100211m && d16 != 0.0d) {
                    for (int i30 = i21; i30 < this.f100211m; i30++) {
                        dArr6[i30] = 0.0d;
                    }
                    for (int i31 = i21; i31 < this.f100212n; i31++) {
                        for (int i32 = i21; i32 < this.f100211m; i32++) {
                            dArr6[i32] = dArr6[i32] + (dArr5[i31] * data[i32][i31]);
                        }
                    }
                    for (int i33 = i21; i33 < this.f100212n; i33++) {
                        double d17 = (-dArr5[i33]) / dArr5[i21];
                        for (int i34 = i21; i34 < this.f100211m; i34++) {
                            double[] dArr14 = data[i34];
                            dArr14[i33] = dArr14[i33] + (dArr6[i34] * d17);
                        }
                    }
                }
                for (int i35 = i21; i35 < this.f100212n; i35++) {
                    dArr4[i35][i18] = dArr5[i35];
                }
            }
            i18 = i21;
            min = i26;
            dArr3 = dArr2;
        }
        double[][] dArr15 = dArr3;
        int i36 = min;
        int i37 = this.f100212n;
        if (i36 < i37) {
            this.singularValues[i36] = data[i36][i36];
        }
        if (this.f100211m < i37) {
            this.singularValues[i37 - 1] = 0.0d;
        }
        if (max + 1 < i37) {
            dArr5[max] = data[max][i37 - 1];
        }
        int i38 = i37 - 1;
        dArr5[i38] = 0.0d;
        for (int i39 = i36; i39 < this.f100212n; i39++) {
            for (int i40 = 0; i40 < this.f100211m; i40++) {
                dArr15[i40][i39] = 0.0d;
            }
            dArr15[i39][i39] = 1.0d;
        }
        for (int i41 = i36 - 1; i41 >= 0; i41--) {
            if (this.singularValues[i41] != 0.0d) {
                for (int i42 = i41 + 1; i42 < this.f100212n; i42++) {
                    double d18 = 0.0d;
                    for (int i43 = i41; i43 < this.f100211m; i43++) {
                        double[] dArr16 = dArr15[i43];
                        d18 += dArr16[i41] * dArr16[i42];
                    }
                    double d19 = (-d18) / dArr15[i41][i41];
                    for (int i44 = i41; i44 < this.f100211m; i44++) {
                        double[] dArr17 = dArr15[i44];
                        dArr17[i42] = dArr17[i42] + (dArr17[i41] * d19);
                    }
                }
                for (int i45 = i41; i45 < this.f100211m; i45++) {
                    double[] dArr18 = dArr15[i45];
                    dArr18[i41] = -dArr18[i41];
                }
                double[] dArr19 = dArr15[i41];
                dArr19[i41] = dArr19[i41] + 1.0d;
                for (int i46 = 0; i46 < i41 - 1; i46++) {
                    dArr15[i46][i41] = 0.0d;
                }
            } else {
                for (int i47 = 0; i47 < this.f100211m; i47++) {
                    dArr15[i47][i41] = 0.0d;
                }
                dArr15[i41][i41] = 1.0d;
            }
        }
        for (int i48 = this.f100212n - 1; i48 >= 0; i48--) {
            if (i48 < max && dArr5[i48] != 0.0d) {
                int i49 = i48 + 1;
                for (int i50 = i49; i50 < this.f100212n; i50++) {
                    double d20 = 0.0d;
                    for (int i51 = i49; i51 < this.f100212n; i51++) {
                        double[] dArr20 = dArr4[i51];
                        d20 += dArr20[i48] * dArr20[i50];
                    }
                    double d21 = (-d20) / dArr4[i49][i48];
                    for (int i52 = i49; i52 < this.f100212n; i52++) {
                        double[] dArr21 = dArr4[i52];
                        dArr21[i50] = dArr21[i50] + (dArr21[i48] * d21);
                    }
                }
            }
            for (int i53 = 0; i53 < this.f100212n; i53++) {
                dArr4[i53][i48] = 0.0d;
            }
            dArr4[i48][i48] = 1.0d;
        }
        while (i37 > 0) {
            int i54 = i37 - 2;
            int i55 = i54;
            while (true) {
                if (i55 < 0) {
                    break;
                }
                if (FastMath.abs(dArr5[i55]) <= ((FastMath.abs(this.singularValues[i55]) + FastMath.abs(this.singularValues[i55 + 1])) * 2.220446049250313E-16d) + TINY) {
                    dArr5[i55] = d10;
                    break;
                }
                i55--;
            }
            if (i55 == i54) {
                c10 = 4;
            } else {
                int i56 = i37 - 1;
                int i57 = i56;
                while (true) {
                    if (i57 < i55 || i57 == i55) {
                        break;
                    }
                    if (FastMath.abs(this.singularValues[i57]) <= (((i57 != i37 ? FastMath.abs(dArr5[i57]) : d10) + (i57 != i55 + 1 ? FastMath.abs(dArr5[i57 - 1]) : d10)) * 2.220446049250313E-16d) + TINY) {
                        this.singularValues[i57] = d10;
                        break;
                    }
                    i57--;
                }
                if (i57 == i55) {
                    c10 = 3;
                } else if (i57 == i56) {
                    c10 = 1;
                } else {
                    i55 = i57;
                    c10 = 2;
                }
            }
            int i58 = i55 + 1;
            if (c10 == 1) {
                i10 = i38;
                dArr = dArr4;
                i11 = i37;
                double d22 = dArr5[i54];
                dArr5[i54] = 0.0d;
                for (int i59 = i54; i59 >= i58; i59--) {
                    double hypot = FastMath.hypot(this.singularValues[i59], d22);
                    double[] dArr22 = this.singularValues;
                    double d23 = dArr22[i59] / hypot;
                    double d24 = d22 / hypot;
                    dArr22[i59] = hypot;
                    if (i59 != i58) {
                        int i60 = i59 - 1;
                        double d25 = dArr5[i60];
                        d22 = (-d24) * d25;
                        dArr5[i60] = d25 * d23;
                    }
                    int i61 = 0;
                    while (i61 < this.f100212n) {
                        double[] dArr23 = dArr[i61];
                        double d26 = dArr23[i59];
                        int i62 = i11 - 1;
                        double d27 = dArr23[i62];
                        dArr23[i62] = ((-d24) * d26) + (d27 * d23);
                        dArr23[i59] = (d23 * d26) + (d24 * d27);
                        i61++;
                        d22 = d22;
                    }
                }
            } else if (c10 == 2) {
                i10 = i38;
                dArr = dArr4;
                int i63 = i37;
                double d28 = dArr5[i55];
                dArr5[i55] = 0.0d;
                i11 = i63;
                int i64 = i58;
                while (i64 < i11) {
                    double hypot2 = FastMath.hypot(this.singularValues[i64], d28);
                    double[] dArr24 = this.singularValues;
                    double d29 = dArr24[i64] / hypot2;
                    double d30 = d28 / hypot2;
                    dArr24[i64] = hypot2;
                    double d31 = -d30;
                    double d32 = dArr5[i64];
                    double d33 = d31 * d32;
                    dArr5[i64] = d32 * d29;
                    for (int i65 = 0; i65 < this.f100211m; i65++) {
                        double[] dArr25 = dArr15[i65];
                        double d34 = dArr25[i64];
                        double d35 = dArr25[i55];
                        dArr25[i55] = (d34 * d31) + (d35 * d29);
                        dArr25[i64] = (d29 * d34) + (d30 * d35);
                    }
                    i64++;
                    d28 = d33;
                }
            } else if (c10 != 3) {
                double[] dArr26 = this.singularValues;
                double d36 = dArr26[i58];
                if (d36 <= d10) {
                    dArr26[i58] = d36 < d10 ? -d36 : d10;
                    for (int i66 = 0; i66 <= i38; i66++) {
                        double[] dArr27 = dArr4[i66];
                        dArr27[i58] = -dArr27[i58];
                    }
                }
                while (i58 < i38) {
                    double[] dArr28 = this.singularValues;
                    double d37 = dArr28[i58];
                    int i67 = i58 + 1;
                    double d38 = dArr28[i67];
                    if (d37 >= d38) {
                        break;
                    }
                    dArr28[i58] = d38;
                    dArr28[i67] = d37;
                    if (i58 < this.f100212n - 1) {
                        for (int i68 = 0; i68 < this.f100212n; i68++) {
                            double[] dArr29 = dArr4[i68];
                            double d39 = dArr29[i67];
                            dArr29[i67] = dArr29[i58];
                            dArr29[i58] = d39;
                        }
                    }
                    if (i58 < this.f100211m - 1) {
                        for (int i69 = 0; i69 < this.f100211m; i69++) {
                            double[] dArr30 = dArr15[i69];
                            double d40 = dArr30[i67];
                            dArr30[i67] = dArr30[i58];
                            dArr30[i58] = d40;
                        }
                    }
                    i58 = i67;
                }
                i37--;
                i10 = i38;
                dArr = dArr4;
                dArr4 = dArr;
                i38 = i10;
                d10 = 0.0d;
            } else {
                int i70 = i37 - 1;
                double max2 = FastMath.max(FastMath.max(FastMath.max(FastMath.max(FastMath.abs(this.singularValues[i70]), FastMath.abs(this.singularValues[i54])), FastMath.abs(dArr5[i54])), FastMath.abs(this.singularValues[i58])), FastMath.abs(dArr5[i58]));
                double[] dArr31 = this.singularValues;
                double d41 = dArr31[i70] / max2;
                double d42 = dArr31[i54] / max2;
                double d43 = dArr5[i54] / max2;
                double d44 = dArr31[i58] / max2;
                double d45 = dArr5[i58] / max2;
                double d46 = (((d42 + d41) * (d42 - d41)) + (d43 * d43)) / 2.0d;
                double d47 = d43 * d41;
                double d48 = d47 * d47;
                if (d46 == d10 && d48 == d10) {
                    i12 = i37;
                    d11 = d10;
                } else {
                    i12 = i37;
                    double sqrt = FastMath.sqrt((d46 * d46) + d48);
                    d11 = d48 / (d46 + (d46 < d10 ? -sqrt : sqrt));
                }
                double d49 = ((d44 + d41) * (d44 - d41)) + d11;
                int i71 = i58;
                double d50 = d44 * d45;
                while (i71 < i70) {
                    double hypot3 = FastMath.hypot(d49, d50);
                    double d51 = d49 / hypot3;
                    double d52 = d50 / hypot3;
                    if (i71 != i58) {
                        dArr5[i71 - 1] = hypot3;
                    }
                    double[] dArr32 = this.singularValues;
                    double d53 = dArr32[i71];
                    double d54 = dArr5[i71];
                    int i72 = i12;
                    double d55 = (d51 * d53) + (d52 * d54);
                    dArr5[i71] = (d54 * d51) - (d53 * d52);
                    int i73 = i71 + 1;
                    double d56 = dArr32[i73];
                    int i74 = i58;
                    int i75 = i54;
                    double d57 = d52 * d56;
                    dArr32[i73] = d56 * d51;
                    int i76 = 0;
                    while (i76 < this.f100212n) {
                        double[] dArr33 = dArr4[i76];
                        double d58 = dArr33[i71];
                        double d59 = dArr33[i73];
                        dArr33[i73] = ((-d52) * d58) + (d59 * d51);
                        dArr33[i71] = (d51 * d58) + (d52 * d59);
                        i76++;
                        dArr4 = dArr4;
                        i38 = i38;
                    }
                    int i77 = i38;
                    double[][] dArr34 = dArr4;
                    double hypot4 = FastMath.hypot(d55, d57);
                    double d60 = d55 / hypot4;
                    double d61 = d57 / hypot4;
                    double[] dArr35 = this.singularValues;
                    dArr35[i71] = hypot4;
                    double d62 = dArr5[i71];
                    double d63 = dArr35[i73];
                    double d64 = (d60 * d62) + (d61 * d63);
                    double d65 = -d61;
                    dArr35[i73] = (d62 * d65) + (d63 * d60);
                    double d66 = dArr5[i73];
                    double d67 = d61 * d66;
                    dArr5[i73] = d66 * d60;
                    if (i71 < this.f100211m - 1) {
                        for (int i78 = 0; i78 < this.f100211m; i78++) {
                            double[] dArr36 = dArr15[i78];
                            double d68 = dArr36[i71];
                            double d69 = dArr36[i73];
                            dArr36[i73] = (d68 * d65) + (d69 * d60);
                            dArr36[i71] = (d60 * d68) + (d61 * d69);
                        }
                    }
                    d50 = d67;
                    i12 = i72;
                    i71 = i73;
                    dArr4 = dArr34;
                    i54 = i75;
                    i58 = i74;
                    i38 = i77;
                    d49 = d64;
                }
                i10 = i38;
                dArr = dArr4;
                dArr5[i54] = d49;
                i11 = i12;
            }
            i37 = i11;
            dArr4 = dArr;
            i38 = i10;
            d10 = 0.0d;
        }
        double[][] dArr37 = dArr4;
        this.tol = FastMath.max(this.f100211m * this.singularValues[0] * 2.220446049250313E-16d, FastMath.sqrt(Precision.SAFE_MIN));
        if (this.transposed) {
            this.cachedU = MatrixUtils.createRealMatrix(dArr37);
            this.cachedV = MatrixUtils.createRealMatrix(dArr15);
        } else {
            this.cachedU = MatrixUtils.createRealMatrix(dArr15);
            this.cachedV = MatrixUtils.createRealMatrix(dArr37);
        }
    }

    public double getConditionNumber() {
        double[] dArr = this.singularValues;
        return dArr[0] / dArr[this.f100212n - 1];
    }

    public RealMatrix getCovariance(double d10) {
        int length = this.singularValues.length;
        int i10 = 0;
        while (i10 < length && this.singularValues[i10] >= d10) {
            i10++;
        }
        if (i10 == 0) {
            throw new NumberIsTooLargeException(LocalizedFormats.TOO_LARGE_CUTOFF_SINGULAR_VALUE, Double.valueOf(d10), Double.valueOf(this.singularValues[0]), true);
        }
        final double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i10, length);
        getVT().walkInOptimizedOrder(new DefaultRealMatrixPreservingVisitor() {
            @Override
            public void visit(int i11, int i12, double d11) {
                dArr[i11][i12] = d11 / SingularValueDecomposition.this.singularValues[i11];
            }
        }, 0, i10 - 1, 0, length - 1);
        RealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr, false);
        return array2DRowRealMatrix.transpose().multiply(array2DRowRealMatrix);
    }

    public double getInverseConditionNumber() {
        double[] dArr = this.singularValues;
        return dArr[this.f100212n - 1] / dArr[0];
    }

    public double getNorm() {
        return this.singularValues[0];
    }

    public int getRank() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            double[] dArr = this.singularValues;
            if (i10 >= dArr.length) {
                return i11;
            }
            if (dArr[i10] > this.tol) {
                i11++;
            }
            i10++;
        }
    }

    public RealMatrix getS() {
        if (this.cachedS == null) {
            this.cachedS = MatrixUtils.createRealDiagonalMatrix(this.singularValues);
        }
        return this.cachedS;
    }

    public double[] getSingularValues() {
        return (double[]) this.singularValues.clone();
    }

    public DecompositionSolver getSolver() {
        return new Solver(this.singularValues, getUT(), getV(), getRank() == this.f100211m, this.tol);
    }

    public RealMatrix getU() {
        return this.cachedU;
    }

    public RealMatrix getUT() {
        if (this.cachedUt == null) {
            this.cachedUt = getU().transpose();
        }
        return this.cachedUt;
    }

    public RealMatrix getV() {
        return this.cachedV;
    }

    public RealMatrix getVT() {
        if (this.cachedVt == null) {
            this.cachedVt = getV().transpose();
        }
        return this.cachedVt;
    }
}
