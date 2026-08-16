package javax.vecmath;

import java.io.PrintStream;
import java.io.Serializable;
import java.lang.reflect.Array;

public class GMatrix implements Serializable, Cloneable {
    private static final double EPS = 1.0E-10d;
    private static final boolean debug = false;
    static final long serialVersionUID = 2777097312029690941L;
    int nCol;
    int nRow;
    double[][] values;

    public GMatrix(int i10, int i11) {
        this.values = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        this.nRow = i10;
        this.nCol = i11;
        for (int i12 = 0; i12 < i10; i12++) {
            for (int i13 = 0; i13 < i11; i13++) {
                this.values[i12][i13] = 0.0d;
            }
        }
        i10 = i10 >= i11 ? i11 : i10;
        for (int i14 = 0; i14 < i10; i14++) {
            this.values[i14][i14] = 1.0d;
        }
    }

    private static void chase_across(double[] dArr, double[] dArr2, int i10, GMatrix gMatrix) {
        double[] dArr3 = new double[1];
        double[] dArr4 = new double[1];
        GMatrix gMatrix2 = new GMatrix(gMatrix.nRow, gMatrix.nCol);
        GMatrix gMatrix3 = new GMatrix(gMatrix.nRow, gMatrix.nCol);
        double d10 = dArr2[i10];
        int i11 = i10;
        double d11 = dArr[i10 + 1];
        double d12 = d10;
        while (i11 < gMatrix.nCol - 2) {
            double compute_rot = compute_rot(d11, d12, dArr4, dArr3);
            int i12 = i11 + 1;
            double d13 = dArr4[0] * (-dArr2[i12]);
            double d14 = dArr[i11 + 2];
            dArr[i12] = compute_rot;
            dArr2[i12] = dArr2[i12] * dArr3[0];
            update_u_split(i10, i12, gMatrix, dArr3, dArr4, gMatrix2, gMatrix3);
            i11 = i12;
            d12 = d13;
            d11 = d14;
        }
        int i13 = i11 + 1;
        dArr[i13] = compute_rot(d11, d12, dArr4, dArr3);
        update_u_split(i10, i13, gMatrix, dArr3, dArr4, gMatrix2, gMatrix3);
    }

    private static void chase_up(double[] dArr, double[] dArr2, int i10, GMatrix gMatrix) {
        double[] dArr3 = new double[1];
        double[] dArr4 = new double[1];
        GMatrix gMatrix2 = new GMatrix(gMatrix.nRow, gMatrix.nCol);
        GMatrix gMatrix3 = new GMatrix(gMatrix.nRow, gMatrix.nCol);
        double d10 = dArr2[i10];
        double d11 = dArr[i10];
        int i11 = i10;
        while (i11 > 0) {
            double compute_rot = compute_rot(d10, d11, dArr4, dArr3);
            int i12 = i11 - 1;
            double d12 = dArr4[0] * (-dArr2[i12]);
            double d13 = dArr[i12];
            dArr[i11] = compute_rot;
            dArr2[i12] = dArr2[i12] * dArr3[0];
            update_v_split(i11, i10 + 1, gMatrix, dArr3, dArr4, gMatrix2, gMatrix3);
            i11--;
            d10 = d12;
            d11 = d13;
        }
        dArr[i11 + 1] = compute_rot(d10, d11, dArr4, dArr3);
        update_v_split(i11, i10 + 1, gMatrix, dArr3, dArr4, gMatrix2, gMatrix3);
    }

    private static void checkMatrix(GMatrix gMatrix) {
        for (int i10 = 0; i10 < gMatrix.nRow; i10++) {
            for (int i11 = 0; i11 < gMatrix.nCol; i11++) {
                if (Math.abs(gMatrix.values[i10][i11]) < 1.0E-10d) {
                    System.out.print(" 0.0     ");
                } else {
                    System.out.print(" " + gMatrix.values[i10][i11]);
                }
            }
            System.out.print("\n");
        }
    }

    public static int computeSVD(GMatrix gMatrix, GMatrix gMatrix2, GMatrix gMatrix3, GMatrix gMatrix4) {
        int i10;
        int i11;
        double[] dArr;
        int i12;
        double[] dArr2;
        double[] dArr3;
        GMatrix gMatrix5;
        int i13;
        int i14;
        GMatrix gMatrix6 = gMatrix2;
        GMatrix gMatrix7 = gMatrix4;
        GMatrix gMatrix8 = new GMatrix(gMatrix.nRow, gMatrix.nCol);
        GMatrix gMatrix9 = new GMatrix(gMatrix.nRow, gMatrix.nCol);
        GMatrix gMatrix10 = new GMatrix(gMatrix.nRow, gMatrix.nCol);
        GMatrix gMatrix11 = new GMatrix(gMatrix);
        int i15 = gMatrix11.nRow;
        int i16 = gMatrix11.nCol;
        if (i15 >= i16) {
            i10 = i16 - 1;
            i11 = i16;
        } else {
            i10 = i15;
            i11 = i10;
        }
        if (i15 <= i16) {
            i15 = i16;
        }
        double[] dArr4 = new double[i15];
        double[] dArr5 = new double[i11];
        double[] dArr6 = new double[i10];
        gMatrix2.setIdentity();
        gMatrix4.setIdentity();
        int i17 = gMatrix11.nRow;
        int i18 = gMatrix11.nCol;
        int i19 = 0;
        while (i19 < i11) {
            if (i17 > 1) {
                double d10 = 0.0d;
                for (int i20 = 0; i20 < i17; i20++) {
                    double d11 = gMatrix11.values[i20 + i19][i19];
                    d10 += d11 * d11;
                }
                double sqrt = Math.sqrt(d10);
                dArr2 = dArr6;
                dArr = dArr5;
                i12 = i10;
                double d12 = gMatrix11.values[i19][i19];
                if (d12 == 0.0d) {
                    dArr4[0] = sqrt;
                } else {
                    dArr4[0] = d12 + d_sign(sqrt, d12);
                }
                for (int i21 = 1; i21 < i17; i21++) {
                    dArr4[i21] = gMatrix11.values[i19 + i21][i19];
                }
                double d13 = 0.0d;
                for (int i22 = 0; i22 < i17; i22++) {
                    double d14 = dArr4[i22];
                    d13 += d14 * d14;
                }
                double d15 = 2.0d / d13;
                for (int i23 = i19; i23 < gMatrix11.nRow; i23++) {
                    int i24 = i19;
                    while (i24 < gMatrix11.nRow) {
                        gMatrix9.values[i23][i24] = (-d15) * dArr4[i23 - i19] * dArr4[i24 - i19];
                        i24++;
                        i17 = i17;
                        i18 = i18;
                    }
                }
                int i25 = i17;
                int i26 = i18;
                for (int i27 = i19; i27 < gMatrix11.nRow; i27++) {
                    double[] dArr7 = gMatrix9.values[i27];
                    dArr7[i27] = dArr7[i27] + 1.0d;
                }
                double d16 = 0.0d;
                for (int i28 = i19; i28 < gMatrix11.nRow; i28++) {
                    d16 += gMatrix9.values[i19][i28] * gMatrix11.values[i28][i19];
                }
                gMatrix11.values[i19][i19] = d16;
                for (int i29 = i19; i29 < gMatrix11.nRow; i29++) {
                    for (int i30 = i19 + 1; i30 < gMatrix11.nCol; i30++) {
                        gMatrix8.values[i29][i30] = 0.0d;
                        for (int i31 = i19; i31 < gMatrix11.nCol; i31++) {
                            double[] dArr8 = gMatrix8.values[i29];
                            dArr8[i30] = dArr8[i30] + (gMatrix9.values[i29][i31] * gMatrix11.values[i31][i30]);
                        }
                    }
                }
                for (int i32 = i19; i32 < gMatrix11.nRow; i32++) {
                    for (int i33 = i19 + 1; i33 < gMatrix11.nCol; i33++) {
                        gMatrix11.values[i32][i33] = gMatrix8.values[i32][i33];
                    }
                }
                for (int i34 = i19; i34 < gMatrix11.nRow; i34++) {
                    for (int i35 = 0; i35 < gMatrix11.nCol; i35++) {
                        gMatrix8.values[i34][i35] = 0.0d;
                        for (int i36 = i19; i36 < gMatrix11.nCol; i36++) {
                            double[] dArr9 = gMatrix8.values[i34];
                            dArr9[i35] = dArr9[i35] + (gMatrix9.values[i34][i36] * gMatrix6.values[i36][i35]);
                        }
                    }
                }
                for (int i37 = i19; i37 < gMatrix11.nRow; i37++) {
                    for (int i38 = 0; i38 < gMatrix11.nCol; i38++) {
                        gMatrix6.values[i37][i38] = gMatrix8.values[i37][i38];
                    }
                }
                i17 = i25 - 1;
                i18 = i26;
            } else {
                dArr = dArr5;
                i12 = i10;
                dArr2 = dArr6;
            }
            if (i18 > 2) {
                double d17 = 0.0d;
                for (int i39 = 1; i39 < i18; i39++) {
                    double d18 = gMatrix11.values[i19][i19 + i39];
                    d17 += d18 * d18;
                }
                double sqrt2 = Math.sqrt(d17);
                int i40 = i19 + 1;
                double d19 = gMatrix11.values[i19][i40];
                if (d19 == 0.0d) {
                    dArr4[0] = sqrt2;
                } else {
                    dArr4[0] = d19 + d_sign(sqrt2, d19);
                }
                int i41 = 1;
                while (true) {
                    i14 = i18 - 1;
                    if (i41 >= i14) {
                        break;
                    }
                    dArr4[i41] = gMatrix11.values[i19][i19 + i41 + 1];
                    i41++;
                }
                double d20 = 0.0d;
                for (int i42 = 0; i42 < i14; i42++) {
                    double d21 = dArr4[i42];
                    d20 += d21 * d21;
                }
                double d22 = 2.0d / d20;
                for (int i43 = i40; i43 < i18; i43++) {
                    int i44 = i40;
                    while (i44 < gMatrix11.nCol) {
                        gMatrix10.values[i43][i44] = (-d22) * dArr4[(i43 - i19) - 1] * dArr4[(i44 - i19) - 1];
                        i44++;
                        i17 = i17;
                        i18 = i18;
                    }
                }
                i13 = i17;
                int i45 = i18;
                for (int i46 = i40; i46 < gMatrix11.nCol; i46++) {
                    double[] dArr10 = gMatrix10.values[i46];
                    dArr10[i46] = dArr10[i46] + 1.0d;
                }
                double d23 = 0.0d;
                for (int i47 = i19; i47 < gMatrix11.nCol; i47++) {
                    d23 += gMatrix10.values[i47][i40] * gMatrix11.values[i19][i47];
                }
                gMatrix11.values[i19][i40] = d23;
                for (int i48 = i40; i48 < gMatrix11.nRow; i48++) {
                    for (int i49 = i40; i49 < gMatrix11.nCol; i49++) {
                        gMatrix8.values[i48][i49] = 0.0d;
                        for (int i50 = i40; i50 < gMatrix11.nCol; i50++) {
                            double[] dArr11 = gMatrix8.values[i48];
                            dArr11[i49] = dArr11[i49] + (gMatrix10.values[i50][i49] * gMatrix11.values[i48][i50]);
                        }
                    }
                }
                for (int i51 = i40; i51 < gMatrix11.nRow; i51++) {
                    for (int i52 = i40; i52 < gMatrix11.nCol; i52++) {
                        gMatrix11.values[i51][i52] = gMatrix8.values[i51][i52];
                    }
                }
                for (int i53 = 0; i53 < gMatrix11.nRow; i53++) {
                    for (int i54 = i40; i54 < gMatrix11.nCol; i54++) {
                        gMatrix8.values[i53][i54] = 0.0d;
                        int i55 = i40;
                        while (i55 < gMatrix11.nCol) {
                            double[] dArr12 = gMatrix8.values[i53];
                            dArr12[i54] = dArr12[i54] + (gMatrix10.values[i55][i54] * gMatrix4.values[i53][i55]);
                            i55++;
                            dArr4 = dArr4;
                        }
                    }
                }
                gMatrix5 = gMatrix4;
                dArr3 = dArr4;
                for (int i56 = 0; i56 < gMatrix11.nRow; i56++) {
                    for (int i57 = i40; i57 < gMatrix11.nCol; i57++) {
                        gMatrix5.values[i56][i57] = gMatrix8.values[i56][i57];
                    }
                }
                i18 = i45 - 1;
            } else {
                dArr3 = dArr4;
                gMatrix5 = gMatrix7;
                i13 = i17;
            }
            i19++;
            i17 = i13;
            gMatrix6 = gMatrix2;
            gMatrix7 = gMatrix5;
            dArr4 = dArr3;
            dArr6 = dArr2;
            i10 = i12;
            dArr5 = dArr;
        }
        double[] dArr13 = dArr5;
        int i58 = i10;
        double[] dArr14 = dArr6;
        GMatrix gMatrix12 = gMatrix7;
        for (int i59 = 0; i59 < i11; i59++) {
            dArr13[i59] = gMatrix11.values[i59][i59];
        }
        int i60 = 0;
        while (i60 < i58) {
            int i61 = i60 + 1;
            dArr14[i60] = gMatrix11.values[i60][i61];
            i60 = i61;
        }
        if (gMatrix11.nRow != 2 || gMatrix11.nCol != 2) {
            compute_qr(0, i58 - 1, dArr13, dArr14, gMatrix2, gMatrix4);
            return i11;
        }
        double[] dArr15 = new double[1];
        double[] dArr16 = new double[1];
        double[] dArr17 = new double[1];
        double[] dArr18 = new double[1];
        compute_2X2(dArr13[0], dArr14[0], dArr13[1], dArr13, dArr17, dArr15, dArr18, dArr16, 0);
        update_u(0, gMatrix2, dArr15, dArr17);
        update_v(0, gMatrix12, dArr16, dArr18);
        return 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int compute_2X2(double d10, double d11, double d12, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5, int i10) {
        double d13;
        double d14;
        char c10;
        double d15;
        char c11;
        double d16;
        double d17;
        double d18;
        double d19;
        boolean z10;
        double d20;
        char c12;
        char c13;
        double d21;
        double d22;
        double d23;
        double d24;
        double d25;
        double d26 = dArr[0];
        double d27 = dArr[1];
        double abs = Math.abs(d10);
        double abs2 = Math.abs(d12);
        boolean z11 = abs2 > abs;
        if (z11) {
            d13 = d10;
            d14 = d26;
            c10 = 3;
            d15 = d12;
            abs = abs2;
            abs2 = abs;
        } else {
            d13 = d12;
            d14 = d26;
            c10 = 1;
            d15 = d10;
        }
        double abs3 = Math.abs(d11);
        double d28 = 0.0d;
        if (abs3 == 0.0d) {
            dArr[1] = abs2;
            dArr[0] = abs;
            return 0;
        }
        if (abs3 > abs) {
            double d29 = abs / abs3;
            if (d29 < 1.0E-10d) {
                d27 = abs2 > 1.0d ? abs / (abs3 / abs2) : d29 * abs2;
                d18 = 1.0d;
                d19 = 1.0d;
                d17 = d15 / d11;
                z10 = false;
                c11 = 2;
                d16 = d13 / d11;
                d14 = abs3;
            } else {
                d16 = 0.0d;
                d17 = 0.0d;
                d18 = 0.0d;
                d19 = 0.0d;
                z10 = true;
                c11 = 2;
            }
        } else {
            c11 = c10;
            d16 = 0.0d;
            d17 = 0.0d;
            d18 = 0.0d;
            d19 = 0.0d;
            z10 = true;
        }
        if (z10) {
            double d30 = abs - abs2;
            double d31 = d30 == abs ? 1.0d : d30 / abs;
            double d32 = d11 / d15;
            double d33 = d27;
            double d34 = 2.0d - d31;
            double d35 = d32 * d32;
            Math.sqrt((d34 * d34) + d35);
            if (d31 == 0.0d) {
                Math.abs(d32);
            } else {
                Math.sqrt((d31 * d31) + d35);
            }
            if (abs3 > abs) {
                double d36 = abs / abs3;
                if (d36 < 1.0E-10d) {
                    d16 = d13 / d11;
                    d17 = d15 / d11;
                    d33 = abs2 > 1.0d ? abs / (abs3 / abs2) : d36 * abs2;
                    z10 = false;
                    c11 = 2;
                    d18 = 1.0d;
                    d19 = 1.0d;
                } else {
                    abs3 = d14;
                    c11 = 2;
                }
            } else {
                abs3 = d14;
            }
            if (!z10) {
                d20 = abs3;
                c12 = c11;
                d27 = d33;
                if (z11) {
                    c13 = 0;
                    dArr3[0] = d18;
                    dArr2[0] = d16;
                    dArr5[0] = d17;
                    dArr4[0] = d19;
                } else {
                    c13 = 0;
                    dArr3[0] = d19;
                    dArr2[0] = d17;
                    dArr5[0] = d16;
                    dArr4[0] = d18;
                }
                if (c12 != 1) {
                    d22 = 1.0d;
                    d21 = d27;
                    d28 = d_sign(1.0d, dArr5[c13]) * d_sign(1.0d, dArr3[c13]) * d_sign(1.0d, d10);
                } else {
                    d21 = d27;
                    d22 = 1.0d;
                }
                if (c12 == 2) {
                    d28 = d_sign(d22, dArr4[c13]) * d_sign(d22, dArr3[c13]) * d_sign(d22, d11);
                }
                if (c12 == 3) {
                    d28 = d_sign(d22, dArr4[c13]) * d_sign(d22, dArr2[c13]) * d_sign(d22, d12);
                }
                double d37 = d28;
                dArr[i10] = d_sign(d20, d37);
                dArr[i10 + 1] = d_sign(d21, d37 * d_sign(d22, d10) * d_sign(d22, d12));
                return 0;
            }
            double d38 = d30 == abs ? 1.0d : d30 / abs;
            double d39 = 2.0d - d38;
            double sqrt = Math.sqrt((d39 * d39) + d35);
            double abs4 = d38 == 0.0d ? Math.abs(d32) : Math.sqrt((d38 * d38) + d35);
            double d40 = (sqrt + abs4) * 0.5d;
            double d41 = abs2 / d40;
            d20 = abs * d40;
            if (d35 != 0.0d) {
                d23 = (d32 / (sqrt + d39)) + (d32 / (abs4 + d38));
                d24 = d40 + 1.0d;
            } else if (d38 == 0.0d) {
                d23 = d_sign(2.0d, d15);
                d24 = d_sign(1.0d, d11);
            } else {
                d25 = (d11 / d_sign(d30, d15)) + (d32 / d39);
                double sqrt2 = Math.sqrt((d25 * d25) + 4.0d);
                double d42 = 2.0d / sqrt2;
                d19 = d25 / sqrt2;
                d18 = (d42 + (d32 * d19)) / d40;
                d16 = ((d13 / d15) * d19) / d40;
                d27 = d41;
                d17 = d42;
            }
            d25 = d23 * d24;
            double sqrt22 = Math.sqrt((d25 * d25) + 4.0d);
            double d422 = 2.0d / sqrt22;
            d19 = d25 / sqrt22;
            d18 = (d422 + (d32 * d19)) / d40;
            d16 = ((d13 / d15) * d19) / d40;
            d27 = d41;
            d17 = d422;
        } else {
            d20 = d14;
        }
        c12 = c11;
        if (z11) {
        }
        if (c12 != 1) {
        }
        if (c12 == 2) {
        }
        if (c12 == 3) {
        }
        double d372 = d28;
        dArr[i10] = d_sign(d20, d372);
        dArr[i10 + 1] = d_sign(d21, d372 * d_sign(d22, d10) * d_sign(d22, d12));
        return 0;
    }

    public static void compute_qr(int i10, int i11, double[] dArr, double[] dArr2, GMatrix gMatrix, GMatrix gMatrix2) {
        double[] dArr3;
        double[] dArr4;
        double[] dArr5;
        double[] dArr6;
        int i12;
        GMatrix gMatrix3;
        double d10;
        int i13;
        int i14;
        double d11;
        GMatrix gMatrix4;
        double d12;
        GMatrix gMatrix5 = gMatrix;
        GMatrix gMatrix6 = gMatrix2;
        double[] dArr7 = new double[1];
        double[] dArr8 = new double[1];
        double[] dArr9 = new double[1];
        double[] dArr10 = new double[1];
        new GMatrix(gMatrix5.nCol, gMatrix6.nRow);
        int i15 = i11;
        int i16 = 0;
        boolean z10 = false;
        double d13 = 0.0d;
        double d14 = 0.0d;
        while (i16 < 2 && !z10) {
            int i17 = i10;
            double d15 = d14;
            while (i17 <= i15) {
                if (i17 == i10) {
                    int i18 = dArr2.length == dArr.length ? i15 : i15 + 1;
                    double compute_shift = compute_shift(dArr[i18 - 1], dArr2[i15], dArr[i18]);
                    i13 = i16;
                    i14 = i15;
                    d13 = (Math.abs(dArr[i17]) - compute_shift) * (d_sign(1.0d, dArr[i17]) + (compute_shift / dArr[i17]));
                    d11 = dArr2[i17];
                } else {
                    i13 = i16;
                    i14 = i15;
                    d11 = d15;
                }
                int i19 = i13;
                int i20 = i14;
                double compute_rot = compute_rot(d13, d11, dArr10, dArr8);
                if (i17 != i10) {
                    dArr2[i17 - 1] = compute_rot;
                }
                double d16 = dArr8[0];
                double d17 = dArr[i17];
                double d18 = dArr10[0];
                double d19 = dArr2[i17];
                double d20 = (d16 * d17) + (d18 * d19);
                dArr2[i17] = (d16 * d19) - (d18 * d17);
                double d21 = dArr10[0];
                int i21 = i17 + 1;
                double d22 = dArr[i21];
                double d23 = d21 * d22;
                dArr[i21] = dArr8[0] * d22;
                update_v(i17, gMatrix2, dArr8, dArr10);
                dArr[i17] = compute_rot(d20, d23, dArr9, dArr7);
                double d24 = dArr7[0];
                double d25 = dArr2[i17];
                double d26 = dArr9[0];
                double d27 = dArr[i21];
                double d28 = (d24 * d25) + (d26 * d27);
                dArr[i21] = (d24 * d27) - (d26 * d25);
                if (i17 < i20) {
                    double d29 = dArr9[0];
                    double d30 = dArr2[i21];
                    d12 = d29 * d30;
                    dArr2[i21] = dArr7[0] * d30;
                    gMatrix4 = gMatrix;
                } else {
                    gMatrix4 = gMatrix;
                    d12 = d23;
                }
                update_u(i17, gMatrix4, dArr7, dArr9);
                i17 = i21;
                d15 = d12;
                d13 = d28;
                i15 = i20;
                i16 = i19;
                gMatrix6 = gMatrix2;
                gMatrix5 = gMatrix4;
            }
            int i22 = i16;
            GMatrix gMatrix7 = gMatrix5;
            GMatrix gMatrix8 = gMatrix6;
            int i23 = i15;
            if (dArr.length == dArr2.length) {
                i12 = i23;
                gMatrix3 = gMatrix7;
                compute_rot(d13, d15, dArr10, dArr8);
                double d31 = dArr8[0];
                double d32 = dArr[i17];
                double d33 = dArr10[0];
                double d34 = dArr2[i17];
                double d35 = (d31 * d32) + (d33 * d34);
                dArr2[i17] = (d31 * d34) - (d33 * d32);
                int i24 = i17 + 1;
                dArr[i24] = dArr8[0] * dArr[i24];
                update_v(i17, gMatrix8, dArr8, dArr10);
                d10 = d35;
            } else {
                i12 = i23;
                gMatrix3 = gMatrix7;
                d10 = d13;
            }
            i15 = i12;
            while (i15 - i10 > 1 && Math.abs(dArr2[i15]) < 4.89E-15d) {
                i15--;
            }
            for (int i25 = i15 - 2; i25 > i10; i25--) {
                if (Math.abs(dArr2[i25]) < 4.89E-15d) {
                    compute_qr(i25 + 1, i15, dArr, dArr2, gMatrix, gMatrix2);
                    i15 = i25 - 1;
                    while (i15 - i10 > 1 && Math.abs(dArr2[i15]) < 4.89E-15d) {
                        i15--;
                    }
                }
            }
            if (i15 - i10 <= 1 && Math.abs(dArr2[i10 + 1]) < 4.89E-15d) {
                z10 = true;
            }
            i16 = i22 + 1;
            d14 = d15;
            d13 = d10;
            GMatrix gMatrix9 = gMatrix3;
            gMatrix6 = gMatrix8;
            gMatrix5 = gMatrix9;
        }
        GMatrix gMatrix10 = gMatrix5;
        if (Math.abs(dArr2[1]) < 4.89E-15d) {
            double d36 = dArr[i10];
            double d37 = dArr2[i10];
            int i26 = i10 + 1;
            double d38 = dArr[i26];
            dArr3 = dArr10;
            dArr4 = dArr8;
            dArr5 = dArr7;
            compute_2X2(d36, d37, d38, dArr, dArr9, dArr7, dArr3, dArr8, 0);
            dArr2[i10] = 0.0d;
            dArr2[i26] = 0.0d;
            dArr6 = dArr9;
        } else {
            dArr3 = dArr10;
            dArr4 = dArr8;
            dArr5 = dArr7;
            dArr6 = dArr9;
        }
        update_u(i10, gMatrix10, dArr5, dArr6);
        update_v(i10, gMatrix2, dArr4, dArr3);
    }

    public static double compute_rot(double d10, double d11, double[] dArr, double[] dArr2) {
        double sqrt;
        double d12;
        double d13;
        double d14 = 0.0d;
        if (d11 == 0.0d) {
            d12 = 1.0d;
            sqrt = d10;
        } else if (d10 == 0.0d) {
            d12 = 0.0d;
            d14 = 1.0d;
            sqrt = d11;
        } else {
            double max = max(Math.abs(d10), Math.abs(d11));
            double d15 = 4.994797680505588E145d;
            if (max >= 4.994797680505588E145d) {
                double d16 = d10;
                double d17 = d11;
                int i10 = 0;
                while (max >= 4.994797680505588E145d) {
                    i10++;
                    double d18 = d16 * 2.002083095183101E-146d;
                    d17 *= 2.002083095183101E-146d;
                    max = max(Math.abs(d18), Math.abs(d17));
                    d16 = d18;
                }
                sqrt = Math.sqrt((d16 * d16) + (d17 * d17));
                d12 = d16 / sqrt;
                d13 = d17 / sqrt;
                for (int i11 = 1; i11 <= i10; i11++) {
                    sqrt *= 4.994797680505588E145d;
                }
            } else if (max <= 2.002083095183101E-146d) {
                double d19 = d10;
                double d20 = d11;
                int i12 = 0;
                while (max <= 2.002083095183101E-146d) {
                    i12++;
                    d19 *= d15;
                    d20 *= d15;
                    max = max(Math.abs(d19), Math.abs(d20));
                    d15 = 4.994797680505588E145d;
                }
                sqrt = Math.sqrt((d19 * d19) + (d20 * d20));
                double d21 = d19 / sqrt;
                d13 = d20 / sqrt;
                for (int i13 = 1; i13 <= i12; i13++) {
                    sqrt *= 2.002083095183101E-146d;
                }
                d12 = d21;
            } else {
                sqrt = Math.sqrt((d10 * d10) + (d11 * d11));
                d12 = d10 / sqrt;
                d13 = d11 / sqrt;
            }
            if (Math.abs(d10) <= Math.abs(d11) || d12 >= 0.0d) {
                d14 = d13;
            } else {
                sqrt = -sqrt;
                d12 = -d12;
                d14 = -d13;
            }
        }
        dArr[0] = d14;
        dArr2[0] = d12;
        return sqrt;
    }

    public static double compute_shift(double d10, double d11, double d12) {
        double abs = Math.abs(d10);
        double abs2 = Math.abs(d11);
        double abs3 = Math.abs(d12);
        double min = min(abs, abs3);
        double max = max(abs, abs3);
        if (min == 0.0d) {
            if (max == 0.0d) {
                return 0.0d;
            }
            min(max, abs2);
            max(max, abs2);
            return 0.0d;
        }
        if (abs2 < max) {
            double d13 = (min / max) + 1.0d;
            double d14 = (max - min) / max;
            double d15 = abs2 / max;
            double d16 = d15 * d15;
            return min * (2.0d / (Math.sqrt((d13 * d13) + d16) + Math.sqrt((d14 * d14) + d16)));
        }
        double d17 = max / abs2;
        if (d17 == 0.0d) {
            return (min * max) / abs2;
        }
        double d18 = ((min / max) + 1.0d) * d17;
        double d19 = ((max - min) / max) * d17;
        double sqrt = min * (1.0d / (Math.sqrt((d18 * d18) + 1.0d) + Math.sqrt((d19 * d19) + 1.0d))) * d17;
        return sqrt + sqrt;
    }

    public static double d_sign(double d10, double d11) {
        if (d10 < 0.0d) {
            d10 = -d10;
        }
        return d11 >= 0.0d ? d10 : -d10;
    }

    public static void luBacksubstitution(int i10, double[] dArr, int[] iArr, double[] dArr2) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = -1;
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = (iArr[i13] * i10) + i11;
                double d10 = dArr2[i14];
                int i15 = i10 * i13;
                int i16 = i11 + i15;
                dArr2[i14] = dArr2[i16];
                if (i12 >= 0) {
                    for (int i17 = i12; i17 <= i13 - 1; i17++) {
                        d10 -= dArr[i15 + i17] * dArr2[(i10 * i17) + i11];
                    }
                } else if (d10 != 0.0d) {
                    i12 = i13;
                }
                dArr2[i16] = d10;
            }
            for (int i18 = 0; i18 < i10; i18++) {
                int i19 = (i10 - 1) - i18;
                int i20 = i10 * i19;
                double d11 = 0.0d;
                for (int i21 = 1; i21 <= i18; i21++) {
                    d11 += dArr[(i20 + i10) - i21] * dArr2[((i10 - i21) * i10) + i11];
                }
                int i22 = i11 + i20;
                dArr2[i22] = (dArr2[i22] - d11) / dArr[i20 + i19];
            }
        }
    }

    public static boolean luDecomposition(int i10, double[] dArr, int[] iArr, int[] iArr2) {
        double[] dArr2 = new double[i10];
        iArr2[0] = 1;
        int i11 = i10;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i11 - 1;
            if (i11 == 0) {
                for (int i15 = 0; i15 < i10; i15++) {
                    for (int i16 = 0; i16 < i15; i16++) {
                        int i17 = i10 * i16;
                        int i18 = i17 + i15;
                        double d10 = dArr[i18];
                        int i19 = i15;
                        int i20 = i16;
                        while (true) {
                            int i21 = i20 - 1;
                            if (i20 != 0) {
                                d10 -= dArr[i17] * dArr[i19];
                                i17++;
                                i19 += i10;
                                i20 = i21;
                            }
                        }
                        dArr[i18] = d10;
                    }
                    int i22 = -1;
                    double d11 = 0.0d;
                    for (int i23 = i15; i23 < i10; i23++) {
                        int i24 = i10 * i23;
                        int i25 = i24 + i15;
                        double d12 = dArr[i25];
                        int i26 = i15;
                        int i27 = i26;
                        while (true) {
                            int i28 = i26 - 1;
                            if (i26 == 0) {
                                break;
                            }
                            d12 -= dArr[i24] * dArr[i27];
                            i24++;
                            i27 += i10;
                            i26 = i28;
                        }
                        dArr[i25] = d12;
                        double abs = dArr2[i23] * Math.abs(d12);
                        if (abs >= d11) {
                            i22 = i23;
                            d11 = abs;
                        }
                    }
                    if (i22 < 0) {
                        throw new RuntimeException(VecMathI18N.getString("GMatrix24"));
                    }
                    if (i15 != i22) {
                        int i29 = i10 * i22;
                        int i30 = i10 * i15;
                        int i31 = i10;
                        while (true) {
                            int i32 = i31 - 1;
                            if (i31 == 0) {
                                break;
                            }
                            double d13 = dArr[i29];
                            dArr[i29] = dArr[i30];
                            dArr[i30] = d13;
                            i30++;
                            i29++;
                            i31 = i32;
                        }
                        dArr2[i22] = dArr2[i15];
                        iArr2[0] = -iArr2[0];
                    }
                    iArr[i15] = i22;
                    double d14 = dArr[(i10 * i15) + i15];
                    if (d14 == 0.0d) {
                        return false;
                    }
                    int i33 = i10 - 1;
                    if (i15 != i33) {
                        double d15 = 1.0d / d14;
                        int i34 = ((i15 + 1) * i10) + i15;
                        int i35 = i33 - i15;
                        while (true) {
                            int i36 = i35 - 1;
                            if (i35 != 0) {
                                dArr[i34] = dArr[i34] * d15;
                                i34 += i10;
                                i35 = i36;
                            }
                        }
                    }
                }
                return true;
            }
            int i37 = i10;
            double d16 = 0.0d;
            while (true) {
                int i38 = i37 - 1;
                if (i37 == 0) {
                    break;
                }
                int i39 = i12 + 1;
                double abs2 = Math.abs(dArr[i12]);
                if (abs2 > d16) {
                    i12 = i39;
                    i37 = i38;
                    d16 = abs2;
                } else {
                    i12 = i39;
                    i37 = i38;
                }
            }
            if (d16 == 0.0d) {
                return false;
            }
            dArr2[i13] = 1.0d / d16;
            i13++;
            i11 = i14;
        }
    }

    public static double max(double d10, double d11) {
        return d10 > d11 ? d10 : d11;
    }

    public static double min(double d10, double d11) {
        return d10 < d11 ? d10 : d11;
    }

    private static void print_m(GMatrix gMatrix, GMatrix gMatrix2, GMatrix gMatrix3) {
        GMatrix gMatrix4 = new GMatrix(gMatrix.nCol, gMatrix.nRow);
        gMatrix4.mul(gMatrix2, gMatrix4);
        gMatrix4.mul(gMatrix4, gMatrix3);
        System.out.println("\n m = \n" + toString(gMatrix4));
    }

    private static void print_se(double[] dArr, double[] dArr2) {
        PrintStream printStream = System.out;
        printStream.println("\ns =" + dArr[0] + " " + dArr[1] + " " + dArr[2]);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("e =");
        sb2.append(dArr2[0]);
        sb2.append(" ");
        sb2.append(dArr2[1]);
        printStream.println(sb2.toString());
    }

    private static void print_svd(double[] dArr, double[] dArr2, GMatrix gMatrix, GMatrix gMatrix2) {
        GMatrix gMatrix3 = new GMatrix(gMatrix.nCol, gMatrix2.nRow);
        System.out.println(" \ns = ");
        int i10 = 0;
        for (double d10 : dArr) {
            System.out.println(" " + d10);
        }
        System.out.println(" \ne = ");
        for (double d11 : dArr2) {
            System.out.println(" " + d11);
        }
        PrintStream printStream = System.out;
        printStream.println(" \nu  = \n" + gMatrix.toString());
        printStream.println(" \nv  = \n" + gMatrix2.toString());
        gMatrix3.setIdentity();
        for (int i11 = 0; i11 < dArr.length; i11++) {
            gMatrix3.values[i11][i11] = dArr[i11];
        }
        while (i10 < dArr2.length) {
            int i12 = i10 + 1;
            gMatrix3.values[i10][i12] = dArr2[i10];
            i10 = i12;
        }
        PrintStream printStream2 = System.out;
        printStream2.println(" \nm  = \n" + gMatrix3.toString());
        gMatrix3.mulTransposeLeft(gMatrix, gMatrix3);
        gMatrix3.mulTransposeRight(gMatrix3, gMatrix2);
        printStream2.println(" \n u.transpose*m*v.transpose  = \n" + gMatrix3.toString());
    }

    private static void update_u(int i10, GMatrix gMatrix, double[] dArr, double[] dArr2) {
        for (int i11 = 0; i11 < gMatrix.nCol; i11++) {
            double[][] dArr3 = gMatrix.values;
            double[] dArr4 = dArr3[i10];
            double d10 = dArr4[i11];
            double d11 = dArr[0] * d10;
            double d12 = dArr2[0];
            double[] dArr5 = dArr3[i10 + 1];
            dArr4[i11] = d11 + (d12 * dArr5[i11]);
            dArr5[i11] = ((-dArr2[0]) * d10) + (dArr[0] * dArr5[i11]);
        }
    }

    private static void update_u_split(int i10, int i11, GMatrix gMatrix, double[] dArr, double[] dArr2, GMatrix gMatrix2, GMatrix gMatrix3) {
        for (int i12 = 0; i12 < gMatrix.nCol; i12++) {
            double[][] dArr3 = gMatrix.values;
            double[] dArr4 = dArr3[i10];
            double d10 = dArr4[i12];
            double d11 = dArr[0] * d10;
            double d12 = dArr2[0];
            double[] dArr5 = dArr3[i11];
            dArr4[i12] = d11 - (d12 * dArr5[i12]);
            dArr5[i12] = (dArr2[0] * d10) + (dArr[0] * dArr5[i12]);
        }
        PrintStream printStream = System.out;
        printStream.println("\nm=");
        checkMatrix(gMatrix3);
        printStream.println("\nu=");
        checkMatrix(gMatrix2);
        gMatrix3.mul(gMatrix2, gMatrix3);
        printStream.println("\nt*m=");
        checkMatrix(gMatrix3);
    }

    private static void update_v(int i10, GMatrix gMatrix, double[] dArr, double[] dArr2) {
        for (int i11 = 0; i11 < gMatrix.nRow; i11++) {
            double[] dArr3 = gMatrix.values[i11];
            double d10 = dArr3[i10];
            int i12 = i10 + 1;
            dArr3[i10] = (dArr[0] * d10) + (dArr2[0] * dArr3[i12]);
            dArr3[i12] = ((-dArr2[0]) * d10) + (dArr[0] * dArr3[i12]);
        }
    }

    private static void update_v_split(int i10, int i11, GMatrix gMatrix, double[] dArr, double[] dArr2, GMatrix gMatrix2, GMatrix gMatrix3) {
        for (int i12 = 0; i12 < gMatrix.nRow; i12++) {
            double[] dArr3 = gMatrix.values[i12];
            double d10 = dArr3[i10];
            dArr3[i10] = (dArr[0] * d10) - (dArr2[0] * dArr3[i11]);
            dArr3[i11] = (dArr2[0] * d10) + (dArr[0] * dArr3[i11]);
        }
        PrintStream printStream = System.out;
        printStream.println("topr    =" + i10);
        printStream.println("bottomr =" + i11);
        printStream.println("cosr =" + dArr[0]);
        printStream.println("sinr =" + dArr2[0]);
        printStream.println("\nm =");
        checkMatrix(gMatrix3);
        printStream.println("\nv =");
        checkMatrix(gMatrix2);
        gMatrix3.mul(gMatrix3, gMatrix2);
        printStream.println("\nt*m =");
        checkMatrix(gMatrix3);
    }

    public final int LUD(GMatrix gMatrix, GVector gVector) {
        int i10 = gMatrix.nRow;
        int i11 = gMatrix.nCol;
        double[] dArr = new double[i10 * i11];
        int[] iArr = new int[1];
        int[] iArr2 = new int[i10];
        int i12 = this.nRow;
        int i13 = this.nCol;
        if (i12 != i13) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix19"));
        }
        if (i12 != i10) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix27"));
        }
        if (i13 != i11) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix27"));
        }
        if (i10 != gVector.getSize()) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix20"));
        }
        for (int i14 = 0; i14 < this.nRow; i14++) {
            int i15 = 0;
            while (true) {
                int i16 = this.nCol;
                if (i15 < i16) {
                    dArr[(i16 * i14) + i15] = this.values[i14][i15];
                    i15++;
                }
            }
        }
        if (!luDecomposition(gMatrix.nRow, dArr, iArr2, iArr)) {
            throw new SingularMatrixException(VecMathI18N.getString("GMatrix21"));
        }
        for (int i17 = 0; i17 < this.nRow; i17++) {
            int i18 = 0;
            while (true) {
                int i19 = this.nCol;
                if (i18 < i19) {
                    gMatrix.values[i17][i18] = dArr[(i19 * i17) + i18];
                    i18++;
                }
            }
        }
        for (int i20 = 0; i20 < gMatrix.nRow; i20++) {
            gVector.values[i20] = iArr2[i20];
        }
        return iArr[0];
    }

    public final int SVD(GMatrix gMatrix, GMatrix gMatrix2, GMatrix gMatrix3) {
        int i10 = this.nCol;
        if (i10 != gMatrix3.nCol || i10 != gMatrix3.nRow) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix18"));
        }
        int i11 = this.nRow;
        if (i11 != gMatrix.nRow || i11 != gMatrix.nCol) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix25"));
        }
        if (i11 != gMatrix2.nRow || i10 != gMatrix2.nCol) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix26"));
        }
        if (i11 != 2 || i10 != 2 || this.values[1][0] != 0.0d) {
            return computeSVD(this, gMatrix, gMatrix2, gMatrix3);
        }
        gMatrix.setIdentity();
        gMatrix3.setIdentity();
        double[][] dArr = this.values;
        double[] dArr2 = dArr[0];
        double d10 = dArr2[1];
        if (d10 == 0.0d) {
            return 2;
        }
        double[] dArr3 = new double[1];
        double[] dArr4 = new double[1];
        double[] dArr5 = new double[1];
        double[] dArr6 = new double[1];
        double d11 = dArr2[0];
        double d12 = dArr[1][1];
        compute_2X2(d11, d10, d12, new double[]{d11, d12}, dArr3, dArr5, dArr4, dArr6, 0);
        update_u(0, gMatrix, dArr5, dArr3);
        update_v(0, gMatrix3, dArr6, dArr4);
        return 2;
    }

    public final void add(GMatrix gMatrix) {
        if (this.nRow == gMatrix.nRow) {
            if (this.nCol == gMatrix.nCol) {
                for (int i10 = 0; i10 < this.nRow; i10++) {
                    for (int i11 = 0; i11 < this.nCol; i11++) {
                        double[] dArr = this.values[i10];
                        dArr[i11] = dArr[i11] + gMatrix.values[i10][i11];
                    }
                }
                return;
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix5"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GMatrix4"));
    }

    public Object clone() {
        try {
            GMatrix gMatrix = (GMatrix) super.clone();
            gMatrix.values = (double[][]) Array.newInstance(Double.TYPE, this.nRow, this.nCol);
            for (int i10 = 0; i10 < this.nRow; i10++) {
                for (int i11 = 0; i11 < this.nCol; i11++) {
                    gMatrix.values[i10][i11] = this.values[i10][i11];
                }
            }
            return gMatrix;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final void copySubMatrix(int i10, int i11, int i12, int i13, int i14, int i15, GMatrix gMatrix) {
        if (this != gMatrix) {
            for (int i16 = 0; i16 < i12; i16++) {
                for (int i17 = 0; i17 < i13; i17++) {
                    gMatrix.values[i14 + i16][i15 + i17] = this.values[i10 + i16][i11 + i17];
                }
            }
            return;
        }
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i12, i13);
        for (int i18 = 0; i18 < i12; i18++) {
            for (int i19 = 0; i19 < i13; i19++) {
                dArr[i18][i19] = this.values[i10 + i18][i11 + i19];
            }
        }
        for (int i20 = 0; i20 < i12; i20++) {
            for (int i21 = 0; i21 < i13; i21++) {
                gMatrix.values[i14 + i20][i15 + i21] = dArr[i20][i21];
            }
        }
    }

    public boolean epsilonEquals(GMatrix gMatrix, float f10) {
        return epsilonEquals(gMatrix, f10);
    }

    public boolean equals(GMatrix gMatrix) {
        try {
            if (this.nRow == gMatrix.nRow && this.nCol == gMatrix.nCol) {
                for (int i10 = 0; i10 < this.nRow; i10++) {
                    for (int i11 = 0; i11 < this.nCol; i11++) {
                        if (this.values[i10][i11] != gMatrix.values[i10][i11]) {
                            return false;
                        }
                    }
                }
                return true;
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    public final void get(Matrix3d matrix3d) {
        if (this.nRow >= 3 && this.nCol >= 3) {
            double[][] dArr = this.values;
            double[] dArr2 = dArr[0];
            matrix3d.m00 = dArr2[0];
            matrix3d.m01 = dArr2[1];
            matrix3d.m02 = dArr2[2];
            double[] dArr3 = dArr[1];
            matrix3d.m10 = dArr3[0];
            matrix3d.m11 = dArr3[1];
            matrix3d.m12 = dArr3[2];
            double[] dArr4 = dArr[2];
            matrix3d.m20 = dArr4[0];
            matrix3d.m21 = dArr4[1];
            matrix3d.m22 = dArr4[2];
            return;
        }
        matrix3d.setZero();
        int i10 = this.nCol;
        if (i10 > 0) {
            int i11 = this.nRow;
            if (i11 > 0) {
                double[][] dArr5 = this.values;
                matrix3d.m00 = dArr5[0][0];
                if (i11 > 1) {
                    matrix3d.m10 = dArr5[1][0];
                    if (i11 > 2) {
                        matrix3d.m20 = dArr5[2][0];
                    }
                }
            }
            if (i10 > 1) {
                if (i11 > 0) {
                    double[][] dArr6 = this.values;
                    matrix3d.m01 = dArr6[0][1];
                    if (i11 > 1) {
                        matrix3d.m11 = dArr6[1][1];
                        if (i11 > 2) {
                            matrix3d.m21 = dArr6[2][1];
                        }
                    }
                }
                if (i10 <= 2 || i11 <= 0) {
                    return;
                }
                double[][] dArr7 = this.values;
                matrix3d.m02 = dArr7[0][2];
                if (i11 > 1) {
                    matrix3d.m12 = dArr7[1][2];
                    if (i11 > 2) {
                        matrix3d.m22 = dArr7[2][2];
                    }
                }
            }
        }
    }

    public final void getColumn(int i10, double[] dArr) {
        for (int i11 = 0; i11 < this.nRow; i11++) {
            dArr[i11] = this.values[i11][i10];
        }
    }

    public final double getElement(int i10, int i11) {
        return this.values[i10][i11];
    }

    public final int getNumCol() {
        return this.nCol;
    }

    public final int getNumRow() {
        return this.nRow;
    }

    public final void getRow(int i10, double[] dArr) {
        for (int i11 = 0; i11 < this.nCol; i11++) {
            dArr[i11] = this.values[i10][i11];
        }
    }

    public int hashCode() {
        long j10 = ((this.nRow + 31) * 31) + this.nCol;
        for (int i10 = 0; i10 < this.nRow; i10++) {
            for (int i11 = 0; i11 < this.nCol; i11++) {
                j10 = (j10 * 31) + VecMathUtil.doubleToLongBits(this.values[i10][i11]);
            }
        }
        return (int) (j10 ^ (j10 >> 32));
    }

    public final void identityMinus() {
        int i10;
        int i11 = 0;
        while (true) {
            i10 = this.nRow;
            if (i11 >= i10) {
                break;
            }
            for (int i12 = 0; i12 < this.nCol; i12++) {
                double[] dArr = this.values[i11];
                dArr[i12] = -dArr[i12];
            }
            i11++;
        }
        int i13 = this.nCol;
        if (i10 >= i13) {
            i10 = i13;
        }
        for (int i14 = 0; i14 < i10; i14++) {
            double[] dArr2 = this.values[i14];
            dArr2[i14] = dArr2[i14] + 1.0d;
        }
    }

    public final void invert() {
        invertGeneral(this);
    }

    public final void invertGeneral(GMatrix gMatrix) {
        int i10 = gMatrix.nRow;
        int i11 = gMatrix.nCol;
        int i12 = i10 * i11;
        double[] dArr = new double[i12];
        double[] dArr2 = new double[i12];
        int[] iArr = new int[i10];
        int[] iArr2 = new int[1];
        if (i10 != i11) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix22"));
        }
        for (int i13 = 0; i13 < this.nRow; i13++) {
            int i14 = 0;
            while (true) {
                int i15 = this.nCol;
                if (i14 < i15) {
                    dArr[(i15 * i13) + i14] = gMatrix.values[i13][i14];
                    i14++;
                }
            }
        }
        if (!luDecomposition(gMatrix.nRow, dArr, iArr, iArr2)) {
            throw new SingularMatrixException(VecMathI18N.getString("GMatrix21"));
        }
        for (int i16 = 0; i16 < i12; i16++) {
            dArr2[i16] = 0.0d;
        }
        int i17 = 0;
        while (true) {
            int i18 = this.nCol;
            if (i17 >= i18) {
                break;
            }
            dArr2[(i18 * i17) + i17] = 1.0d;
            i17++;
        }
        luBacksubstitution(gMatrix.nRow, dArr, iArr, dArr2);
        for (int i19 = 0; i19 < this.nRow; i19++) {
            int i20 = 0;
            while (true) {
                int i21 = this.nCol;
                if (i20 < i21) {
                    this.values[i19][i20] = dArr2[(i21 * i19) + i20];
                    i20++;
                }
            }
        }
    }

    public final void mul(GMatrix gMatrix) {
        int i10 = this.nCol;
        if (i10 == gMatrix.nRow && i10 == gMatrix.nCol) {
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, this.nRow, i10);
            for (int i11 = 0; i11 < this.nRow; i11++) {
                for (int i12 = 0; i12 < this.nCol; i12++) {
                    dArr[i11][i12] = 0.0d;
                    for (int i13 = 0; i13 < this.nCol; i13++) {
                        double[] dArr2 = dArr[i11];
                        dArr2[i12] = dArr2[i12] + (this.values[i11][i13] * gMatrix.values[i13][i12]);
                    }
                }
            }
            this.values = dArr;
            return;
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GMatrix0"));
    }

    public final void mulTransposeBoth(GMatrix gMatrix, GMatrix gMatrix2) {
        int i10;
        int i11;
        if (gMatrix.nRow != gMatrix2.nCol || (i10 = this.nRow) != gMatrix.nCol || (i11 = this.nCol) != gMatrix2.nRow) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix14"));
        }
        if (gMatrix != this && gMatrix2 != this) {
            for (int i12 = 0; i12 < this.nRow; i12++) {
                for (int i13 = 0; i13 < this.nCol; i13++) {
                    this.values[i12][i13] = 0.0d;
                    for (int i14 = 0; i14 < gMatrix.nRow; i14++) {
                        double[] dArr = this.values[i12];
                        dArr[i13] = dArr[i13] + (gMatrix.values[i14][i12] * gMatrix2.values[i13][i14]);
                    }
                }
            }
            return;
        }
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        for (int i15 = 0; i15 < this.nRow; i15++) {
            for (int i16 = 0; i16 < this.nCol; i16++) {
                dArr2[i15][i16] = 0.0d;
                for (int i17 = 0; i17 < gMatrix.nRow; i17++) {
                    double[] dArr3 = dArr2[i15];
                    dArr3[i16] = dArr3[i16] + (gMatrix.values[i17][i15] * gMatrix2.values[i16][i17]);
                }
            }
        }
        this.values = dArr2;
    }

    public final void mulTransposeLeft(GMatrix gMatrix, GMatrix gMatrix2) {
        int i10;
        int i11;
        if (gMatrix.nRow != gMatrix2.nRow || (i10 = this.nCol) != gMatrix2.nCol || (i11 = this.nRow) != gMatrix.nCol) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix16"));
        }
        if (gMatrix != this && gMatrix2 != this) {
            for (int i12 = 0; i12 < this.nRow; i12++) {
                for (int i13 = 0; i13 < this.nCol; i13++) {
                    this.values[i12][i13] = 0.0d;
                    for (int i14 = 0; i14 < gMatrix.nRow; i14++) {
                        double[] dArr = this.values[i12];
                        dArr[i13] = dArr[i13] + (gMatrix.values[i14][i12] * gMatrix2.values[i14][i13]);
                    }
                }
            }
            return;
        }
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, i11, i10);
        for (int i15 = 0; i15 < this.nRow; i15++) {
            for (int i16 = 0; i16 < this.nCol; i16++) {
                dArr2[i15][i16] = 0.0d;
                for (int i17 = 0; i17 < gMatrix.nRow; i17++) {
                    double[] dArr3 = dArr2[i15];
                    dArr3[i16] = dArr3[i16] + (gMatrix.values[i17][i15] * gMatrix2.values[i17][i16]);
                }
            }
        }
        this.values = dArr2;
    }

    public final void mulTransposeRight(GMatrix gMatrix, GMatrix gMatrix2) {
        int i10;
        int i11;
        if (gMatrix.nCol != gMatrix2.nCol || (i10 = this.nCol) != gMatrix2.nRow || (i11 = this.nRow) != gMatrix.nRow) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix15"));
        }
        if (gMatrix != this && gMatrix2 != this) {
            for (int i12 = 0; i12 < this.nRow; i12++) {
                for (int i13 = 0; i13 < this.nCol; i13++) {
                    this.values[i12][i13] = 0.0d;
                    for (int i14 = 0; i14 < gMatrix.nCol; i14++) {
                        double[] dArr = this.values[i12];
                        dArr[i13] = dArr[i13] + (gMatrix.values[i12][i14] * gMatrix2.values[i13][i14]);
                    }
                }
            }
            return;
        }
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, i11, i10);
        for (int i15 = 0; i15 < this.nRow; i15++) {
            for (int i16 = 0; i16 < this.nCol; i16++) {
                dArr2[i15][i16] = 0.0d;
                for (int i17 = 0; i17 < gMatrix.nCol; i17++) {
                    double[] dArr3 = dArr2[i15];
                    dArr3[i16] = dArr3[i16] + (gMatrix.values[i15][i17] * gMatrix2.values[i16][i17]);
                }
            }
        }
        this.values = dArr2;
    }

    public final void negate() {
        for (int i10 = 0; i10 < this.nRow; i10++) {
            for (int i11 = 0; i11 < this.nCol; i11++) {
                double[] dArr = this.values[i10];
                dArr[i11] = -dArr[i11];
            }
        }
    }

    public final void set(double[] dArr) {
        for (int i10 = 0; i10 < this.nRow; i10++) {
            int i11 = 0;
            while (true) {
                int i12 = this.nCol;
                if (i11 < i12) {
                    this.values[i10][i11] = dArr[(i12 * i10) + i11];
                    i11++;
                }
            }
        }
    }

    public final void setColumn(int i10, double[] dArr) {
        for (int i11 = 0; i11 < this.nRow; i11++) {
            this.values[i11][i10] = dArr[i11];
        }
    }

    public final void setElement(int i10, int i11, double d10) {
        this.values[i10][i11] = d10;
    }

    public final void setIdentity() {
        int i10;
        int i11 = 0;
        while (true) {
            i10 = this.nRow;
            if (i11 >= i10) {
                break;
            }
            for (int i12 = 0; i12 < this.nCol; i12++) {
                this.values[i11][i12] = 0.0d;
            }
            i11++;
        }
        int i13 = this.nCol;
        if (i10 >= i13) {
            i10 = i13;
        }
        for (int i14 = 0; i14 < i10; i14++) {
            this.values[i14][i14] = 1.0d;
        }
    }

    public final void setRow(int i10, double[] dArr) {
        for (int i11 = 0; i11 < this.nCol; i11++) {
            this.values[i10][i11] = dArr[i11];
        }
    }

    public final void setScale(double d10) {
        int i10 = this.nRow;
        int i11 = this.nCol;
        if (i10 >= i11) {
            i10 = i11;
        }
        for (int i12 = 0; i12 < this.nRow; i12++) {
            for (int i13 = 0; i13 < this.nCol; i13++) {
                this.values[i12][i13] = 0.0d;
            }
        }
        for (int i14 = 0; i14 < i10; i14++) {
            this.values[i14][i14] = d10;
        }
    }

    public final void setSize(int i10, int i11) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        int i12 = this.nRow;
        if (i12 >= i10) {
            i12 = i10;
        }
        int i13 = this.nCol;
        if (i13 >= i11) {
            i13 = i11;
        }
        for (int i14 = 0; i14 < i12; i14++) {
            for (int i15 = 0; i15 < i13; i15++) {
                dArr[i14][i15] = this.values[i14][i15];
            }
        }
        this.nRow = i10;
        this.nCol = i11;
        this.values = dArr;
    }

    public final void setZero() {
        for (int i10 = 0; i10 < this.nRow; i10++) {
            for (int i11 = 0; i11 < this.nCol; i11++) {
                this.values[i10][i11] = 0.0d;
            }
        }
    }

    public final void sub(GMatrix gMatrix) {
        if (this.nRow == gMatrix.nRow) {
            if (this.nCol == gMatrix.nCol) {
                for (int i10 = 0; i10 < this.nRow; i10++) {
                    for (int i11 = 0; i11 < this.nCol; i11++) {
                        double[] dArr = this.values[i10];
                        dArr[i11] = dArr[i11] - gMatrix.values[i10][i11];
                    }
                }
                return;
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix28"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GMatrix9"));
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(this.nRow * this.nCol * 8);
        for (int i10 = 0; i10 < this.nRow; i10++) {
            for (int i11 = 0; i11 < this.nCol; i11++) {
                stringBuffer.append(this.values[i10][i11]);
                stringBuffer.append(" ");
            }
            stringBuffer.append("\n");
        }
        return stringBuffer.toString();
    }

    public final double trace() {
        int i10 = this.nRow;
        int i11 = this.nCol;
        if (i10 >= i11) {
            i10 = i11;
        }
        double d10 = 0.0d;
        for (int i12 = 0; i12 < i10; i12++) {
            d10 += this.values[i12][i12];
        }
        return d10;
    }

    public final void transpose() {
        int i10 = this.nRow;
        int i11 = this.nCol;
        if (i10 != i11) {
            this.nRow = i11;
            this.nCol = i10;
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i11, i10);
            for (int i12 = 0; i12 < this.nRow; i12++) {
                for (int i13 = 0; i13 < this.nCol; i13++) {
                    dArr[i12][i13] = this.values[i13][i12];
                }
            }
            this.values = dArr;
            return;
        }
        for (int i14 = 0; i14 < this.nRow; i14++) {
            for (int i15 = 0; i15 < i14; i15++) {
                double[][] dArr2 = this.values;
                double[] dArr3 = dArr2[i14];
                double d10 = dArr3[i15];
                double[] dArr4 = dArr2[i15];
                dArr3[i15] = dArr4[i14];
                dArr4[i14] = d10;
            }
        }
    }

    public boolean epsilonEquals(GMatrix gMatrix, double d10) {
        if (this.nRow != gMatrix.nRow || this.nCol != gMatrix.nCol) {
            return false;
        }
        for (int i10 = 0; i10 < this.nRow; i10++) {
            for (int i11 = 0; i11 < this.nCol; i11++) {
                double d11 = this.values[i10][i11] - gMatrix.values[i10][i11];
                if (d11 < 0.0d) {
                    d11 = -d11;
                }
                if (d11 > d10) {
                    return false;
                }
            }
        }
        return true;
    }

    public final void invert(GMatrix gMatrix) {
        invertGeneral(gMatrix);
    }

    public final void getColumn(int i10, GVector gVector) {
        int size = gVector.getSize();
        int i11 = this.nRow;
        if (size < i11) {
            gVector.setSize(i11);
        }
        for (int i12 = 0; i12 < this.nRow; i12++) {
            gVector.values[i12] = this.values[i12][i10];
        }
    }

    public final void getRow(int i10, GVector gVector) {
        int size = gVector.getSize();
        int i11 = this.nCol;
        if (size < i11) {
            gVector.setSize(i11);
        }
        for (int i12 = 0; i12 < this.nCol; i12++) {
            gVector.values[i12] = this.values[i10][i12];
        }
    }

    public final void setColumn(int i10, GVector gVector) {
        for (int i11 = 0; i11 < this.nRow; i11++) {
            this.values[i11][i10] = gVector.values[i11];
        }
    }

    public final void setRow(int i10, GVector gVector) {
        for (int i11 = 0; i11 < this.nCol; i11++) {
            this.values[i10][i11] = gVector.values[i11];
        }
    }

    public final void negate(GMatrix gMatrix) {
        if (this.nRow == gMatrix.nRow && this.nCol == gMatrix.nCol) {
            for (int i10 = 0; i10 < this.nRow; i10++) {
                for (int i11 = 0; i11 < this.nCol; i11++) {
                    this.values[i10][i11] = -gMatrix.values[i10][i11];
                }
            }
            return;
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GMatrix13"));
    }

    public final void set(Matrix3f matrix3f) {
        if (this.nCol < 3 || this.nRow < 3) {
            this.nCol = 3;
            this.nRow = 3;
            this.values = (double[][]) Array.newInstance(Double.TYPE, 3, 3);
        }
        double[][] dArr = this.values;
        double[] dArr2 = dArr[0];
        dArr2[0] = matrix3f.m00;
        dArr2[1] = matrix3f.m01;
        dArr2[2] = matrix3f.m02;
        double[] dArr3 = dArr[1];
        dArr3[0] = matrix3f.m10;
        dArr3[1] = matrix3f.m11;
        dArr3[2] = matrix3f.m12;
        double[] dArr4 = dArr[2];
        dArr4[0] = matrix3f.m20;
        dArr4[1] = matrix3f.m21;
        dArr4[2] = matrix3f.m22;
        for (int i10 = 3; i10 < this.nRow; i10++) {
            for (int i11 = 3; i11 < this.nCol; i11++) {
                this.values[i10][i11] = 0.0d;
            }
        }
    }

    public boolean equals(Object obj) {
        try {
            GMatrix gMatrix = (GMatrix) obj;
            if (this.nRow == gMatrix.nRow && this.nCol == gMatrix.nCol) {
                for (int i10 = 0; i10 < this.nRow; i10++) {
                    for (int i11 = 0; i11 < this.nCol; i11++) {
                        if (this.values[i10][i11] != gMatrix.values[i10][i11]) {
                            return false;
                        }
                    }
                }
                return true;
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public GMatrix(int i10, int i11, double[] dArr) {
        this.values = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        this.nRow = i10;
        this.nCol = i11;
        for (int i12 = 0; i12 < i10; i12++) {
            for (int i13 = 0; i13 < i11; i13++) {
                this.values[i12][i13] = dArr[(i12 * i11) + i13];
            }
        }
    }

    private static String toString(GMatrix gMatrix) {
        StringBuffer stringBuffer = new StringBuffer(gMatrix.nRow * gMatrix.nCol * 8);
        for (int i10 = 0; i10 < gMatrix.nRow; i10++) {
            for (int i11 = 0; i11 < gMatrix.nCol; i11++) {
                if (Math.abs(gMatrix.values[i10][i11]) < 1.0E-9d) {
                    stringBuffer.append("0.0000 ");
                } else {
                    stringBuffer.append(gMatrix.values[i10][i11]);
                    stringBuffer.append(" ");
                }
            }
            stringBuffer.append("\n");
        }
        return stringBuffer.toString();
    }

    public final void add(GMatrix gMatrix, GMatrix gMatrix2) {
        int i10 = gMatrix2.nRow;
        int i11 = gMatrix.nRow;
        if (i10 == i11) {
            int i12 = gMatrix2.nCol;
            int i13 = gMatrix.nCol;
            if (i12 == i13) {
                if (this.nCol == i13 && this.nRow == i11) {
                    for (int i14 = 0; i14 < this.nRow; i14++) {
                        for (int i15 = 0; i15 < this.nCol; i15++) {
                            this.values[i14][i15] = gMatrix.values[i14][i15] + gMatrix2.values[i14][i15];
                        }
                    }
                    return;
                }
                throw new MismatchedSizeException(VecMathI18N.getString("GMatrix8"));
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix7"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GMatrix6"));
    }

    public final void sub(GMatrix gMatrix, GMatrix gMatrix2) {
        int i10 = gMatrix2.nRow;
        int i11 = gMatrix.nRow;
        if (i10 == i11) {
            int i12 = gMatrix2.nCol;
            int i13 = gMatrix.nCol;
            if (i12 == i13) {
                if (this.nRow == i11 && this.nCol == i13) {
                    for (int i14 = 0; i14 < this.nRow; i14++) {
                        for (int i15 = 0; i15 < this.nCol; i15++) {
                            this.values[i14][i15] = gMatrix.values[i14][i15] - gMatrix2.values[i14][i15];
                        }
                    }
                    return;
                }
                throw new MismatchedSizeException(VecMathI18N.getString("GMatrix12"));
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix11"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GMatrix10"));
    }

    public final void mul(GMatrix gMatrix, GMatrix gMatrix2) {
        int i10;
        int i11;
        if (gMatrix.nCol == gMatrix2.nRow && (i10 = this.nRow) == gMatrix.nRow && (i11 = this.nCol) == gMatrix2.nCol) {
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
            for (int i12 = 0; i12 < gMatrix.nRow; i12++) {
                for (int i13 = 0; i13 < gMatrix2.nCol; i13++) {
                    dArr[i12][i13] = 0.0d;
                    for (int i14 = 0; i14 < gMatrix.nCol; i14++) {
                        double[] dArr2 = dArr[i12];
                        dArr2[i13] = dArr2[i13] + (gMatrix.values[i12][i14] * gMatrix2.values[i14][i13]);
                    }
                }
            }
            this.values = dArr;
            return;
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GMatrix1"));
    }

    public GMatrix(GMatrix gMatrix) {
        int i10 = gMatrix.nRow;
        this.nRow = i10;
        int i11 = gMatrix.nCol;
        this.nCol = i11;
        this.values = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        for (int i12 = 0; i12 < this.nRow; i12++) {
            for (int i13 = 0; i13 < this.nCol; i13++) {
                this.values[i12][i13] = gMatrix.values[i12][i13];
            }
        }
    }

    public final void transpose(GMatrix gMatrix) {
        if (this.nRow != gMatrix.nCol || this.nCol != gMatrix.nRow) {
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix17"));
        }
        if (gMatrix != this) {
            for (int i10 = 0; i10 < this.nRow; i10++) {
                for (int i11 = 0; i11 < this.nCol; i11++) {
                    this.values[i10][i11] = gMatrix.values[i11][i10];
                }
            }
            return;
        }
        transpose();
    }

    public final void set(Matrix3d matrix3d) {
        if (this.nRow < 3 || this.nCol < 3) {
            this.values = (double[][]) Array.newInstance(Double.TYPE, 3, 3);
            this.nRow = 3;
            this.nCol = 3;
        }
        double[][] dArr = this.values;
        double[] dArr2 = dArr[0];
        dArr2[0] = matrix3d.m00;
        dArr2[1] = matrix3d.m01;
        dArr2[2] = matrix3d.m02;
        double[] dArr3 = dArr[1];
        dArr3[0] = matrix3d.m10;
        dArr3[1] = matrix3d.m11;
        dArr3[2] = matrix3d.m12;
        double[] dArr4 = dArr[2];
        dArr4[0] = matrix3d.m20;
        dArr4[1] = matrix3d.m21;
        dArr4[2] = matrix3d.m22;
        for (int i10 = 3; i10 < this.nRow; i10++) {
            for (int i11 = 3; i11 < this.nCol; i11++) {
                this.values[i10][i11] = 0.0d;
            }
        }
    }

    public final void mul(GVector gVector, GVector gVector2) {
        if (this.nRow >= gVector.getSize()) {
            if (this.nCol >= gVector2.getSize()) {
                for (int i10 = 0; i10 < gVector.getSize(); i10++) {
                    for (int i11 = 0; i11 < gVector2.getSize(); i11++) {
                        this.values[i10][i11] = gVector.values[i10] * gVector2.values[i11];
                    }
                }
                return;
            }
            throw new MismatchedSizeException(VecMathI18N.getString("GMatrix3"));
        }
        throw new MismatchedSizeException(VecMathI18N.getString("GMatrix2"));
    }

    public final void get(Matrix3f matrix3f) {
        if (this.nRow >= 3 && this.nCol >= 3) {
            double[][] dArr = this.values;
            double[] dArr2 = dArr[0];
            matrix3f.m00 = (float) dArr2[0];
            matrix3f.m01 = (float) dArr2[1];
            matrix3f.m02 = (float) dArr2[2];
            double[] dArr3 = dArr[1];
            matrix3f.m10 = (float) dArr3[0];
            matrix3f.m11 = (float) dArr3[1];
            matrix3f.m12 = (float) dArr3[2];
            double[] dArr4 = dArr[2];
            matrix3f.m20 = (float) dArr4[0];
            matrix3f.m21 = (float) dArr4[1];
            matrix3f.m22 = (float) dArr4[2];
            return;
        }
        matrix3f.setZero();
        int i10 = this.nCol;
        if (i10 > 0) {
            int i11 = this.nRow;
            if (i11 > 0) {
                double[][] dArr5 = this.values;
                matrix3f.m00 = (float) dArr5[0][0];
                if (i11 > 1) {
                    matrix3f.m10 = (float) dArr5[1][0];
                    if (i11 > 2) {
                        matrix3f.m20 = (float) dArr5[2][0];
                    }
                }
            }
            if (i10 > 1) {
                if (i11 > 0) {
                    double[][] dArr6 = this.values;
                    matrix3f.m01 = (float) dArr6[0][1];
                    if (i11 > 1) {
                        matrix3f.m11 = (float) dArr6[1][1];
                        if (i11 > 2) {
                            matrix3f.m21 = (float) dArr6[2][1];
                        }
                    }
                }
                if (i10 <= 2 || i11 <= 0) {
                    return;
                }
                double[][] dArr7 = this.values;
                matrix3f.m02 = (float) dArr7[0][2];
                if (i11 > 1) {
                    matrix3f.m12 = (float) dArr7[1][2];
                    if (i11 > 2) {
                        matrix3f.m22 = (float) dArr7[2][2];
                    }
                }
            }
        }
    }

    public final void set(Matrix4f matrix4f) {
        if (this.nRow < 4 || this.nCol < 4) {
            this.values = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
            this.nRow = 4;
            this.nCol = 4;
        }
        double[][] dArr = this.values;
        double[] dArr2 = dArr[0];
        dArr2[0] = matrix4f.m00;
        dArr2[1] = matrix4f.m01;
        dArr2[2] = matrix4f.m02;
        dArr2[3] = matrix4f.m03;
        double[] dArr3 = dArr[1];
        dArr3[0] = matrix4f.m10;
        dArr3[1] = matrix4f.m11;
        dArr3[2] = matrix4f.m12;
        dArr3[3] = matrix4f.m13;
        double[] dArr4 = dArr[2];
        dArr4[0] = matrix4f.m20;
        dArr4[1] = matrix4f.m21;
        dArr4[2] = matrix4f.m22;
        dArr4[3] = matrix4f.m23;
        double[] dArr5 = dArr[3];
        dArr5[0] = matrix4f.m30;
        dArr5[1] = matrix4f.m31;
        dArr5[2] = matrix4f.m32;
        dArr5[3] = matrix4f.m33;
        for (int i10 = 4; i10 < this.nRow; i10++) {
            for (int i11 = 4; i11 < this.nCol; i11++) {
                this.values[i10][i11] = 0.0d;
            }
        }
    }

    public final void get(Matrix4d matrix4d) {
        if (this.nRow >= 4 && this.nCol >= 4) {
            double[][] dArr = this.values;
            double[] dArr2 = dArr[0];
            matrix4d.m00 = dArr2[0];
            matrix4d.m01 = dArr2[1];
            matrix4d.m02 = dArr2[2];
            matrix4d.m03 = dArr2[3];
            double[] dArr3 = dArr[1];
            matrix4d.m10 = dArr3[0];
            matrix4d.m11 = dArr3[1];
            matrix4d.m12 = dArr3[2];
            matrix4d.m13 = dArr3[3];
            double[] dArr4 = dArr[2];
            matrix4d.m20 = dArr4[0];
            matrix4d.m21 = dArr4[1];
            matrix4d.m22 = dArr4[2];
            matrix4d.m23 = dArr4[3];
            double[] dArr5 = dArr[3];
            matrix4d.m30 = dArr5[0];
            matrix4d.m31 = dArr5[1];
            matrix4d.m32 = dArr5[2];
            matrix4d.m33 = dArr5[3];
            return;
        }
        matrix4d.setZero();
        int i10 = this.nCol;
        if (i10 > 0) {
            int i11 = this.nRow;
            if (i11 > 0) {
                double[][] dArr6 = this.values;
                matrix4d.m00 = dArr6[0][0];
                if (i11 > 1) {
                    matrix4d.m10 = dArr6[1][0];
                    if (i11 > 2) {
                        matrix4d.m20 = dArr6[2][0];
                        if (i11 > 3) {
                            matrix4d.m30 = dArr6[3][0];
                        }
                    }
                }
            }
            if (i10 > 1) {
                if (i11 > 0) {
                    double[][] dArr7 = this.values;
                    matrix4d.m01 = dArr7[0][1];
                    if (i11 > 1) {
                        matrix4d.m11 = dArr7[1][1];
                        if (i11 > 2) {
                            matrix4d.m21 = dArr7[2][1];
                            if (i11 > 3) {
                                matrix4d.m31 = dArr7[3][1];
                            }
                        }
                    }
                }
                if (i10 > 2) {
                    if (i11 > 0) {
                        double[][] dArr8 = this.values;
                        matrix4d.m02 = dArr8[0][2];
                        if (i11 > 1) {
                            matrix4d.m12 = dArr8[1][2];
                            if (i11 > 2) {
                                matrix4d.m22 = dArr8[2][2];
                                if (i11 > 3) {
                                    matrix4d.m32 = dArr8[3][2];
                                }
                            }
                        }
                    }
                    if (i10 <= 3 || i11 <= 0) {
                        return;
                    }
                    double[][] dArr9 = this.values;
                    matrix4d.m03 = dArr9[0][3];
                    if (i11 > 1) {
                        matrix4d.m13 = dArr9[1][3];
                        if (i11 > 2) {
                            matrix4d.m23 = dArr9[2][3];
                            if (i11 > 3) {
                                matrix4d.m33 = dArr9[3][3];
                            }
                        }
                    }
                }
            }
        }
    }

    public final void set(Matrix4d matrix4d) {
        if (this.nRow < 4 || this.nCol < 4) {
            this.values = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
            this.nRow = 4;
            this.nCol = 4;
        }
        double[][] dArr = this.values;
        double[] dArr2 = dArr[0];
        dArr2[0] = matrix4d.m00;
        dArr2[1] = matrix4d.m01;
        dArr2[2] = matrix4d.m02;
        dArr2[3] = matrix4d.m03;
        double[] dArr3 = dArr[1];
        dArr3[0] = matrix4d.m10;
        dArr3[1] = matrix4d.m11;
        dArr3[2] = matrix4d.m12;
        dArr3[3] = matrix4d.m13;
        double[] dArr4 = dArr[2];
        dArr4[0] = matrix4d.m20;
        dArr4[1] = matrix4d.m21;
        dArr4[2] = matrix4d.m22;
        dArr4[3] = matrix4d.m23;
        double[] dArr5 = dArr[3];
        dArr5[0] = matrix4d.m30;
        dArr5[1] = matrix4d.m31;
        dArr5[2] = matrix4d.m32;
        dArr5[3] = matrix4d.m33;
        for (int i10 = 4; i10 < this.nRow; i10++) {
            for (int i11 = 4; i11 < this.nCol; i11++) {
                this.values[i10][i11] = 0.0d;
            }
        }
    }

    public final void get(Matrix4f matrix4f) {
        if (this.nRow >= 4 && this.nCol >= 4) {
            double[][] dArr = this.values;
            double[] dArr2 = dArr[0];
            matrix4f.m00 = (float) dArr2[0];
            matrix4f.m01 = (float) dArr2[1];
            matrix4f.m02 = (float) dArr2[2];
            matrix4f.m03 = (float) dArr2[3];
            double[] dArr3 = dArr[1];
            matrix4f.m10 = (float) dArr3[0];
            matrix4f.m11 = (float) dArr3[1];
            matrix4f.m12 = (float) dArr3[2];
            matrix4f.m13 = (float) dArr3[3];
            double[] dArr4 = dArr[2];
            matrix4f.m20 = (float) dArr4[0];
            matrix4f.m21 = (float) dArr4[1];
            matrix4f.m22 = (float) dArr4[2];
            matrix4f.m23 = (float) dArr4[3];
            double[] dArr5 = dArr[3];
            matrix4f.m30 = (float) dArr5[0];
            matrix4f.m31 = (float) dArr5[1];
            matrix4f.m32 = (float) dArr5[2];
            matrix4f.m33 = (float) dArr5[3];
            return;
        }
        matrix4f.setZero();
        int i10 = this.nCol;
        if (i10 > 0) {
            int i11 = this.nRow;
            if (i11 > 0) {
                double[][] dArr6 = this.values;
                matrix4f.m00 = (float) dArr6[0][0];
                if (i11 > 1) {
                    matrix4f.m10 = (float) dArr6[1][0];
                    if (i11 > 2) {
                        matrix4f.m20 = (float) dArr6[2][0];
                        if (i11 > 3) {
                            matrix4f.m30 = (float) dArr6[3][0];
                        }
                    }
                }
            }
            if (i10 > 1) {
                if (i11 > 0) {
                    double[][] dArr7 = this.values;
                    matrix4f.m01 = (float) dArr7[0][1];
                    if (i11 > 1) {
                        matrix4f.m11 = (float) dArr7[1][1];
                        if (i11 > 2) {
                            matrix4f.m21 = (float) dArr7[2][1];
                            if (i11 > 3) {
                                matrix4f.m31 = (float) dArr7[3][1];
                            }
                        }
                    }
                }
                if (i10 > 2) {
                    if (i11 > 0) {
                        double[][] dArr8 = this.values;
                        matrix4f.m02 = (float) dArr8[0][2];
                        if (i11 > 1) {
                            matrix4f.m12 = (float) dArr8[1][2];
                            if (i11 > 2) {
                                matrix4f.m22 = (float) dArr8[2][2];
                                if (i11 > 3) {
                                    matrix4f.m32 = (float) dArr8[3][2];
                                }
                            }
                        }
                    }
                    if (i10 <= 3 || i11 <= 0) {
                        return;
                    }
                    double[][] dArr9 = this.values;
                    matrix4f.m03 = (float) dArr9[0][3];
                    if (i11 > 1) {
                        matrix4f.m13 = (float) dArr9[1][3];
                        if (i11 > 2) {
                            matrix4f.m23 = (float) dArr9[2][3];
                            if (i11 > 3) {
                                matrix4f.m33 = (float) dArr9[3][3];
                            }
                        }
                    }
                }
            }
        }
    }

    public final void set(GMatrix gMatrix) {
        int i10 = this.nRow;
        int i11 = gMatrix.nRow;
        if (i10 < i11 || this.nCol < gMatrix.nCol) {
            this.nRow = i11;
            int i12 = gMatrix.nCol;
            this.nCol = i12;
            this.values = (double[][]) Array.newInstance(Double.TYPE, i11, i12);
        }
        for (int i13 = 0; i13 < Math.min(this.nRow, gMatrix.nRow); i13++) {
            for (int i14 = 0; i14 < Math.min(this.nCol, gMatrix.nCol); i14++) {
                this.values[i13][i14] = gMatrix.values[i13][i14];
            }
        }
        for (int i15 = gMatrix.nRow; i15 < this.nRow; i15++) {
            for (int i16 = gMatrix.nCol; i16 < this.nCol; i16++) {
                this.values[i15][i16] = 0.0d;
            }
        }
    }

    public final void get(GMatrix gMatrix) {
        int i10 = this.nCol;
        int i11 = gMatrix.nCol;
        if (i10 >= i11) {
            i10 = i11;
        }
        int i12 = this.nRow;
        int i13 = gMatrix.nRow;
        if (i12 >= i13) {
            i12 = i13;
        }
        for (int i14 = 0; i14 < i12; i14++) {
            for (int i15 = 0; i15 < i10; i15++) {
                gMatrix.values[i14][i15] = this.values[i14][i15];
            }
        }
        for (int i16 = i12; i16 < gMatrix.nRow; i16++) {
            for (int i17 = 0; i17 < gMatrix.nCol; i17++) {
                gMatrix.values[i16][i17] = 0.0d;
            }
        }
        while (i10 < gMatrix.nCol) {
            for (int i18 = 0; i18 < i12; i18++) {
                gMatrix.values[i18][i10] = 0.0d;
            }
            i10++;
        }
    }
}
