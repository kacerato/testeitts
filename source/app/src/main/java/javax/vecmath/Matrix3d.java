package javax.vecmath;

import java.io.PrintStream;
import java.io.Serializable;

public class Matrix3d implements Serializable, Cloneable {
    private static final double EPS = 1.110223024E-16d;
    private static final double ERR_EPS = 1.0E-8d;
    static final long serialVersionUID = 6837536777072402710L;
    private static double xin;
    private static double xout;
    private static double yin;
    private static double yout;
    private static double zin;
    private static double zout;
    public double m00;
    public double m01;
    public double m02;
    public double m10;
    public double m11;
    public double m12;
    public double m20;
    public double m21;
    public double m22;

    public Matrix3d(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        this.m00 = d10;
        this.m01 = d11;
        this.m02 = d12;
        this.m10 = d13;
        this.m11 = d14;
        this.m12 = d15;
        this.m20 = d16;
        this.m21 = d17;
        this.m22 = d18;
    }

    private static final boolean almostEqual(double d10, double d11) {
        if (d10 == d11) {
            return true;
        }
        double abs = Math.abs(d10 - d11);
        double abs2 = Math.abs(d10);
        double abs3 = Math.abs(d11);
        if (abs2 < abs3) {
            abs2 = abs3;
        }
        return abs < 1.0E-6d || abs / abs2 < 1.0E-4d;
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
            if (d29 < EPS) {
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
                if (d36 < EPS) {
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

    public static int compute_qr(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) {
        char c10 = 2;
        double[] dArr5 = new double[2];
        double[] dArr6 = new double[2];
        double[] dArr7 = new double[2];
        double[] dArr8 = new double[2];
        boolean z10 = Math.abs(dArr2[1]) < 4.89E-15d || Math.abs(dArr2[0]) < 4.89E-15d;
        int i10 = 1;
        int i11 = 0;
        while (i11 < 10 && !z10) {
            double compute_shift = compute_shift(dArr[1], dArr2[1], dArr[c10]);
            int i12 = i11;
            compute_rot((Math.abs(dArr[0]) - compute_shift) * (d_sign(1.0d, dArr[0]) + (compute_shift / dArr[0])), dArr2[0], dArr8, dArr6, 0, i10);
            double d10 = dArr6[0];
            double d11 = dArr[0];
            double d12 = dArr8[0];
            double d13 = dArr2[0];
            double d14 = (d10 * d11) + (d12 * d13);
            dArr2[0] = (d10 * d13) - (d12 * d11);
            double d15 = dArr8[0];
            double d16 = dArr[1];
            dArr[1] = dArr6[0] * d16;
            dArr[0] = compute_rot(d14, d15 * d16, dArr7, dArr5, 0, i10);
            double d17 = dArr5[0];
            double d18 = dArr2[0];
            double d19 = dArr7[0];
            double d20 = dArr[1];
            double d21 = (d17 * d18) + (d19 * d20);
            dArr[1] = (d20 * d17) - (d18 * d19);
            double d22 = dArr2[1];
            dArr2[1] = d17 * d22;
            i10 = 0;
            dArr2[0] = compute_rot(d21, d19 * d22, dArr8, dArr6, 1, 0);
            double d23 = dArr6[1];
            double d24 = dArr[1];
            double d25 = dArr8[1];
            double d26 = dArr2[1];
            double d27 = (d23 * d24) + (d25 * d26);
            dArr2[1] = (d23 * d26) - (d25 * d24);
            double d28 = dArr8[1];
            double d29 = dArr[c10];
            dArr[c10] = dArr6[1] * d29;
            dArr[1] = compute_rot(d27, d28 * d29, dArr7, dArr5, 1, 0);
            double d30 = dArr5[1];
            double d31 = dArr2[1];
            double d32 = dArr7[1];
            double d33 = dArr[c10];
            dArr[c10] = (d30 * d33) - (d32 * d31);
            dArr2[1] = (d30 * d31) + (d32 * d33);
            double d34 = dArr3[0];
            double d35 = dArr5[0] * d34;
            double d36 = dArr7[0];
            double d37 = dArr3[3];
            dArr3[0] = d35 + (d36 * d37);
            double d38 = dArr7[0];
            double d39 = (-d38) * d34;
            double d40 = dArr5[0];
            double d41 = d39 + (d37 * d40);
            dArr3[3] = d41;
            double d42 = dArr3[1];
            double d43 = dArr3[4];
            dArr3[1] = (d40 * d42) + (d38 * d43);
            double[] dArr9 = dArr5;
            double d44 = ((-d38) * d42) + (d43 * d40);
            dArr3[4] = d44;
            double d45 = dArr3[2];
            double d46 = dArr3[5];
            dArr3[2] = (d40 * d45) + (d38 * d46);
            double d47 = ((-d38) * d45) + (d40 * d46);
            dArr3[5] = d47;
            double d48 = dArr9[1];
            boolean z11 = z10;
            double d49 = dArr7[1];
            double d50 = dArr3[6];
            dArr3[3] = (d48 * d41) + (d49 * d50);
            dArr3[6] = ((-d49) * d41) + (d50 * d48);
            double d51 = dArr3[7];
            dArr3[4] = (d48 * d44) + (d49 * d51);
            dArr3[7] = ((-d49) * d44) + (d51 * d48);
            double d52 = dArr3[8];
            dArr3[5] = (d48 * d47) + (d49 * d52);
            dArr3[8] = ((-d49) * d47) + (d48 * d52);
            double d53 = dArr4[0];
            double d54 = dArr6[0] * d53;
            double d55 = dArr8[0];
            double d56 = dArr4[1];
            dArr4[0] = d54 + (d55 * d56);
            double d57 = dArr8[0];
            double d58 = (-d57) * d53;
            double d59 = dArr6[0];
            double d60 = d58 + (d56 * d59);
            dArr4[1] = d60;
            double d61 = dArr4[3];
            double d62 = dArr4[4];
            dArr4[3] = (d59 * d61) + (d57 * d62);
            double d63 = ((-d57) * d61) + (d62 * d59);
            dArr4[4] = d63;
            double d64 = dArr4[6];
            double d65 = dArr4[7];
            dArr4[6] = (d59 * d64) + (d57 * d65);
            double d66 = ((-d57) * d64) + (d59 * d65);
            dArr4[7] = d66;
            double d67 = dArr6[1] * d60;
            double d68 = dArr8[1];
            double d69 = dArr4[2];
            dArr4[1] = d67 + (d68 * d69);
            double d70 = dArr8[1];
            double d71 = (-d70) * d60;
            double d72 = dArr6[1];
            dArr4[2] = d71 + (d69 * d72);
            double d73 = dArr4[5];
            dArr4[4] = (d72 * d63) + (d70 * d73);
            dArr4[5] = ((-d70) * d63) + (d73 * d72);
            double d74 = dArr4[8];
            dArr4[7] = (d72 * d66) + (d70 * d74);
            dArr4[8] = ((-d70) * d66) + (d72 * d74);
            double d75 = dArr[0];
            double d76 = dArr2[0];
            double d77 = dArr[1];
            double d78 = dArr2[1];
            double d79 = dArr[2];
            z10 = (Math.abs(d78) < 4.89E-15d || Math.abs(dArr2[0]) < 4.89E-15d) ? true : z11;
            i11 = i12 + 1;
            dArr5 = dArr9;
            c10 = 2;
        }
        double[] dArr10 = dArr5;
        if (Math.abs(dArr2[1]) < 4.89E-15d) {
            compute_2X2(dArr[0], dArr2[0], dArr[1], dArr, dArr7, dArr10, dArr8, dArr6, 0);
            double d80 = dArr3[0];
            double d81 = dArr10[0] * d80;
            double d82 = dArr7[0];
            double d83 = dArr3[3];
            dArr3[0] = d81 + (d82 * d83);
            double d84 = dArr7[0];
            double d85 = (-d84) * d80;
            double d86 = dArr10[0];
            dArr3[3] = d85 + (d83 * d86);
            double d87 = dArr3[1];
            double d88 = dArr3[4];
            dArr3[1] = (d86 * d87) + (d84 * d88);
            dArr3[4] = ((-d84) * d87) + (d88 * d86);
            double d89 = dArr3[2];
            double d90 = dArr3[5];
            dArr3[2] = (d86 * d89) + (d84 * d90);
            dArr3[5] = ((-d84) * d89) + (d86 * d90);
            double d91 = dArr4[0];
            double d92 = dArr6[0] * d91;
            double d93 = dArr8[0];
            double d94 = dArr4[1];
            dArr4[0] = d92 + (d93 * d94);
            double d95 = dArr8[0];
            double d96 = (-d95) * d91;
            double d97 = dArr6[0];
            dArr4[1] = d96 + (d94 * d97);
            double d98 = dArr4[3];
            double d99 = dArr4[4];
            dArr4[3] = (d97 * d98) + (d95 * d99);
            dArr4[4] = ((-d95) * d98) + (d99 * d97);
            double d100 = dArr4[6];
            double d101 = dArr4[7];
            dArr4[6] = (d97 * d100) + (d95 * d101);
            dArr4[7] = ((-d95) * d100) + (d97 * d101);
        } else {
            compute_2X2(dArr[1], dArr2[1], dArr[2], dArr, dArr7, dArr10, dArr8, dArr6, 1);
            double d102 = dArr3[3];
            double d103 = dArr10[0];
            double d104 = dArr7[0];
            double d105 = dArr3[6];
            dArr3[3] = (d103 * d102) + (d104 * d105);
            dArr3[6] = ((-d104) * d102) + (d105 * d103);
            double d106 = dArr3[4];
            double d107 = dArr3[7];
            dArr3[4] = (d103 * d106) + (d104 * d107);
            dArr3[7] = ((-d104) * d106) + (d107 * d103);
            double d108 = dArr3[5];
            double d109 = dArr3[8];
            dArr3[5] = (d103 * d108) + (d104 * d109);
            dArr3[8] = ((-d104) * d108) + (d103 * d109);
            double d110 = dArr4[1];
            double d111 = dArr6[0];
            double d112 = dArr8[0];
            double d113 = dArr4[2];
            dArr4[1] = (d111 * d110) + (d112 * d113);
            dArr4[2] = ((-d112) * d110) + (d113 * d111);
            double d114 = dArr4[4];
            double d115 = dArr4[5];
            dArr4[4] = (d111 * d114) + (d112 * d115);
            dArr4[5] = ((-d112) * d114) + (d115 * d111);
            double d116 = dArr4[7];
            double d117 = dArr4[8];
            dArr4[7] = (d111 * d116) + (d112 * d117);
            dArr4[8] = ((-d112) * d116) + (d111 * d117);
        }
        return 0;
    }

    public static double compute_rot(double d10, double d11, double[] dArr, double[] dArr2, int i10, int i11) {
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
            int i12 = 0;
            if (max >= 4.994797680505588E145d) {
                double d15 = d10;
                double d16 = d11;
                while (max >= 4.994797680505588E145d) {
                    i12++;
                    double d17 = d15 * 2.002083095183101E-146d;
                    d16 *= 2.002083095183101E-146d;
                    max = max(Math.abs(d17), Math.abs(d16));
                    d15 = d17;
                }
                sqrt = Math.sqrt((d15 * d15) + (d16 * d16));
                d12 = d15 / sqrt;
                d13 = d16 / sqrt;
                for (int i13 = 1; i13 <= i12; i13++) {
                    sqrt *= 4.994797680505588E145d;
                }
            } else if (max <= 2.002083095183101E-146d) {
                double d18 = d10;
                double d19 = d11;
                while (max <= 2.002083095183101E-146d) {
                    i12++;
                    d18 *= 4.994797680505588E145d;
                    d19 *= 4.994797680505588E145d;
                    max = max(Math.abs(d18), Math.abs(d19));
                }
                sqrt = Math.sqrt((d18 * d18) + (d19 * d19));
                double d20 = d18 / sqrt;
                d13 = d19 / sqrt;
                for (int i14 = 1; i14 <= i12; i14++) {
                    sqrt *= 2.002083095183101E-146d;
                }
                d12 = d20;
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
        dArr[i10] = d14;
        dArr2[i10] = d12;
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

    /* JADX WARN: Removed duplicated region for block: B:20:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0436 A[LOOP:2: B:49:0x0434->B:50:0x0436, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void compute_svd(double[] dArr, double[] dArr2, double[] dArr3) {
        double[] dArr4;
        double d10;
        double d11;
        double[] dArr5;
        double[] dArr6;
        int i10;
        int i11;
        int i12;
        double[] dArr7 = new double[9];
        double[] dArr8 = new double[9];
        double[] dArr9 = new double[9];
        double[] dArr10 = new double[9];
        double[] dArr11 = new double[9];
        double[] dArr12 = new double[3];
        for (int i13 = 0; i13 < 9; i13++) {
            dArr11[i13] = dArr[i13];
        }
        double d12 = dArr[3];
        if (d12 * d12 < EPS) {
            dArr7[0] = 1.0d;
            dArr7[1] = 0.0d;
            dArr7[2] = 0.0d;
            dArr7[3] = 0.0d;
            dArr7[4] = 1.0d;
            dArr7[5] = 0.0d;
            dArr7[6] = 0.0d;
            dArr7[7] = 0.0d;
            dArr7[8] = 1.0d;
        } else {
            double d13 = dArr[0];
            if (d13 * d13 < EPS) {
                dArr9[0] = d13;
                dArr9[1] = dArr[1];
                dArr9[2] = dArr[2];
                dArr[0] = d12;
                dArr[1] = dArr[4];
                dArr[2] = dArr[5];
                dArr[3] = -dArr9[0];
                dArr[4] = -dArr9[1];
                dArr[5] = -dArr9[2];
                dArr7[0] = 0.0d;
                dArr7[1] = 1.0d;
                dArr7[2] = 0.0d;
                dArr7[3] = -1.0d;
                dArr7[4] = 0.0d;
                dArr7[5] = 0.0d;
                dArr7[6] = 0.0d;
                dArr7[7] = 0.0d;
                dArr7[8] = 1.0d;
            } else {
                double sqrt = 1.0d / Math.sqrt((d13 * d13) + (d12 * d12));
                double d14 = dArr[0];
                double d15 = d14 * sqrt;
                double d16 = dArr[3];
                double d17 = sqrt * d16;
                double d18 = (d14 * d15) + (d17 * d16);
                dArr9[0] = d18;
                double d19 = dArr[1] * d15;
                double d20 = dArr[4];
                double d21 = d19 + (d17 * d20);
                dArr9[1] = d21;
                double d22 = dArr[2] * d15;
                double d23 = dArr[5];
                double d24 = d22 + (d17 * d23);
                dArr9[2] = d24;
                double d25 = -d17;
                dArr[3] = (dArr[0] * d25) + (d16 * d15);
                dArr[4] = (dArr[1] * d25) + (d20 * d15);
                dArr[5] = (dArr[2] * d25) + (d23 * d15);
                dArr[0] = d18;
                dArr[1] = d21;
                dArr[2] = d24;
                dArr7[0] = d15;
                dArr7[1] = d17;
                dArr7[2] = 0.0d;
                dArr7[3] = d25;
                dArr7[4] = d15;
                dArr7[5] = 0.0d;
                dArr7[6] = 0.0d;
                dArr7[7] = 0.0d;
                dArr7[8] = 1.0d;
            }
        }
        double d26 = dArr[6];
        if (d26 * d26 >= EPS) {
            double d27 = dArr[0];
            if (d27 * d27 < EPS) {
                dArr9[0] = d27;
                dArr9[1] = dArr[1];
                dArr9[2] = dArr[2];
                dArr[0] = d26;
                dArr[1] = dArr[7];
                dArr[2] = dArr[8];
                dArr[6] = -dArr9[0];
                dArr[7] = -dArr9[1];
                dArr[8] = -dArr9[2];
                dArr9[0] = dArr7[0];
                dArr9[1] = dArr7[1];
                dArr9[2] = dArr7[2];
                dArr7[0] = dArr7[6];
                dArr7[1] = dArr7[7];
                dArr7[2] = dArr7[8];
                dArr7[6] = -dArr9[0];
                dArr7[7] = -dArr9[1];
                dArr7[8] = -dArr9[2];
            } else {
                double sqrt2 = 1.0d / Math.sqrt((d27 * d27) + (d26 * d26));
                double d28 = dArr[0];
                double d29 = d28 * sqrt2;
                double d30 = dArr[6];
                double d31 = sqrt2 * d30;
                double d32 = (d28 * d29) + (d31 * d30);
                dArr9[0] = d32;
                double d33 = dArr[1] * d29;
                double d34 = dArr[7];
                double d35 = d33 + (d31 * d34);
                dArr9[1] = d35;
                double d36 = dArr[2] * d29;
                double d37 = dArr[8];
                double d38 = d36 + (d31 * d37);
                dArr9[2] = d38;
                double d39 = -d31;
                dArr[6] = (dArr[0] * d39) + (d30 * d29);
                dArr[7] = (dArr[1] * d39) + (d34 * d29);
                dArr[8] = (d39 * dArr[2]) + (d37 * d29);
                dArr[0] = d32;
                dArr[1] = d35;
                dArr[2] = d38;
                double d40 = dArr7[0] * d29;
                dArr9[0] = d40;
                double d41 = dArr7[1] * d29;
                dArr9[1] = d41;
                dArr7[2] = d31;
                double d42 = (-dArr7[0]) * d31;
                dArr9[6] = d42;
                double d43 = (-dArr7[1]) * d31;
                dArr9[7] = d43;
                dArr7[8] = d29;
                dArr7[0] = d40;
                dArr7[1] = d41;
                dArr7[6] = d42;
                dArr7[7] = d43;
            }
        }
        double d44 = dArr[2];
        if (d44 * d44 < EPS) {
            dArr8[0] = 1.0d;
            dArr8[1] = 0.0d;
            dArr8[2] = 0.0d;
            dArr8[3] = 0.0d;
            dArr8[4] = 1.0d;
            dArr8[5] = 0.0d;
            dArr8[6] = 0.0d;
            dArr8[7] = 0.0d;
            dArr8[8] = 1.0d;
        } else {
            double d45 = dArr[1];
            if (d45 * d45 >= EPS) {
                double sqrt3 = 1.0d / Math.sqrt((d45 * d45) + (d44 * d44));
                double d46 = dArr[1];
                double d47 = d46 * sqrt3;
                double d48 = dArr[2];
                double d49 = sqrt3 * d48;
                double d50 = (d46 * d47) + (d49 * d48);
                dArr9[1] = d50;
                dArr4 = dArr7;
                double d51 = -d49;
                dArr[2] = (dArr[1] * d51) + (d48 * d47);
                dArr[1] = d50;
                double d52 = dArr[4] * d47;
                double d53 = dArr[5];
                double d54 = d52 + (d49 * d53);
                dArr9[4] = d54;
                dArr[5] = (dArr[4] * d51) + (d53 * d47);
                dArr[4] = d54;
                double d55 = dArr[7] * d47;
                double d56 = dArr[8];
                double d57 = d55 + (d49 * d56);
                dArr9[7] = d57;
                dArr[8] = (dArr[7] * d51) + (d56 * d47);
                dArr[7] = d57;
                dArr8[0] = 1.0d;
                dArr8[1] = 0.0d;
                dArr8[2] = 0.0d;
                dArr8[3] = 0.0d;
                dArr8[4] = d47;
                dArr8[5] = d51;
                dArr8[6] = 0.0d;
                dArr8[7] = d49;
                dArr8[8] = d47;
                d10 = dArr[7];
                if (d10 * d10 >= EPS) {
                    double d58 = dArr[4];
                    if (d58 * d58 < EPS) {
                        dArr9[3] = dArr[3];
                        dArr9[4] = d58;
                        dArr9[5] = dArr[5];
                        dArr[3] = dArr[6];
                        dArr[4] = d10;
                        dArr[5] = dArr[8];
                        dArr[6] = -dArr9[3];
                        dArr[7] = -dArr9[4];
                        dArr[8] = -dArr9[5];
                        dArr9[3] = dArr4[3];
                        dArr9[4] = dArr4[4];
                        dArr9[5] = dArr4[5];
                        dArr4[3] = dArr4[6];
                        dArr4[4] = dArr4[7];
                        dArr4[5] = dArr4[8];
                        dArr4[6] = -dArr9[3];
                        dArr4[7] = -dArr9[4];
                        dArr4[8] = -dArr9[5];
                    } else {
                        double sqrt4 = 1.0d / Math.sqrt((d58 * d58) + (d10 * d10));
                        double d59 = dArr[4];
                        double d60 = d59 * sqrt4;
                        double d61 = dArr[7];
                        double d62 = sqrt4 * d61;
                        double d63 = dArr[3] * d60;
                        double d64 = dArr[6];
                        double d65 = d63 + (d62 * d64);
                        dArr9[3] = d65;
                        double d66 = -d62;
                        dArr[6] = (dArr[3] * d66) + (d64 * d60);
                        dArr[3] = d65;
                        double d67 = (d59 * d60) + (d62 * d61);
                        dArr9[4] = d67;
                        dArr[7] = (dArr[4] * d66) + (d61 * d60);
                        dArr[4] = d67;
                        double d68 = dArr[5] * d60;
                        double d69 = dArr[8];
                        double d70 = d68 + (d62 * d69);
                        dArr9[5] = d70;
                        dArr[8] = (dArr[5] * d66) + (d69 * d60);
                        dArr[5] = d70;
                        double d71 = dArr4[3] * d60;
                        double d72 = dArr4[6];
                        double d73 = d71 + (d62 * d72);
                        dArr9[3] = d73;
                        dArr4[6] = (dArr4[3] * d66) + (d72 * d60);
                        dArr4[3] = d73;
                        double d74 = dArr4[4] * d60;
                        double d75 = dArr4[7];
                        double d76 = d74 + (d62 * d75);
                        dArr9[4] = d76;
                        dArr4[7] = (dArr4[4] * d66) + (d75 * d60);
                        dArr4[4] = d76;
                        double d77 = dArr4[5] * d60;
                        double d78 = dArr4[8];
                        double d79 = d77 + (d62 * d78);
                        dArr9[5] = d79;
                        dArr4[8] = (d66 * dArr4[5]) + (d60 * d78);
                        dArr4[5] = d79;
                    }
                }
                dArr10[0] = dArr[0];
                dArr10[1] = dArr[4];
                dArr10[2] = dArr[8];
                d11 = dArr[1];
                dArr12[0] = d11;
                double d80 = dArr[5];
                dArr12[1] = d80;
                if (d11 * d11 < EPS || d80 * d80 >= EPS) {
                    dArr5 = dArr4;
                    compute_qr(dArr10, dArr12, dArr5, dArr8);
                } else {
                    dArr5 = dArr4;
                }
                dArr6 = new double[]{dArr10[0], dArr10[1], dArr10[2]};
                if (almostEqual(Math.abs(dArr6[0]), 1.0d) && almostEqual(Math.abs(dArr6[1]), 1.0d) && almostEqual(Math.abs(dArr6[2]), 1.0d)) {
                    i10 = 0;
                    i11 = 0;
                    while (i10 < 3) {
                        if (dArr6[i10] < 0.0d) {
                            i12 = 1;
                            i11++;
                        } else {
                            i12 = 1;
                        }
                        i10 += i12;
                    }
                    if (i11 != 0 || i11 == 2) {
                        dArr2[2] = 1.0d;
                        dArr2[1] = 1.0d;
                        dArr2[0] = 1.0d;
                        for (int i14 = 0; i14 < 9; i14++) {
                            dArr3[i14] = dArr11[i14];
                        }
                        return;
                    }
                }
                transpose_mat(dArr5, dArr9);
                transpose_mat(dArr8, dArr10);
                svdReorder(dArr, dArr9, dArr10, dArr6, dArr3, dArr2);
            }
            dArr9[2] = d44;
            dArr9[5] = dArr[5];
            dArr9[8] = dArr[8];
            dArr[2] = -d45;
            dArr[5] = -dArr[4];
            dArr[8] = -dArr[7];
            dArr[1] = dArr9[2];
            dArr[4] = dArr9[5];
            dArr[7] = dArr9[8];
            dArr8[0] = 1.0d;
            dArr8[1] = 0.0d;
            dArr8[2] = 0.0d;
            dArr8[3] = 0.0d;
            dArr8[4] = 0.0d;
            dArr8[5] = -1.0d;
            dArr8[6] = 0.0d;
            dArr8[7] = 1.0d;
            dArr8[8] = 0.0d;
        }
        dArr4 = dArr7;
        d10 = dArr[7];
        if (d10 * d10 >= EPS) {
        }
        dArr10[0] = dArr[0];
        dArr10[1] = dArr[4];
        dArr10[2] = dArr[8];
        d11 = dArr[1];
        dArr12[0] = d11;
        double d802 = dArr[5];
        dArr12[1] = d802;
        if (d11 * d11 < EPS) {
        }
        dArr5 = dArr4;
        compute_qr(dArr10, dArr12, dArr5, dArr8);
        dArr6 = new double[]{dArr10[0], dArr10[1], dArr10[2]};
        if (almostEqual(Math.abs(dArr6[0]), 1.0d)) {
            i10 = 0;
            i11 = 0;
            while (i10 < 3) {
            }
            if (i11 != 0) {
            }
            dArr2[2] = 1.0d;
            dArr2[1] = 1.0d;
            dArr2[0] = 1.0d;
            while (i14 < 9) {
            }
            return;
        }
        transpose_mat(dArr5, dArr9);
        transpose_mat(dArr8, dArr10);
        svdReorder(dArr, dArr9, dArr10, dArr6, dArr3, dArr2);
    }

    public static double d_sign(double d10, double d11) {
        if (d10 < 0.0d) {
            d10 = -d10;
        }
        return d11 >= 0.0d ? d10 : -d10;
    }

    private final void invertGeneral(Matrix3d matrix3d) {
        double[] dArr = new double[9];
        int[] iArr = new int[3];
        double[] dArr2 = {matrix3d.m00, matrix3d.m01, matrix3d.m02, matrix3d.m10, matrix3d.m11, matrix3d.m12, matrix3d.m20, matrix3d.m21, matrix3d.m22};
        if (!luDecomposition(dArr2, iArr)) {
            throw new SingularMatrixException(VecMathI18N.getString("Matrix3d12"));
        }
        for (int i10 = 0; i10 < 9; i10++) {
            dArr[i10] = 0.0d;
        }
        dArr[0] = 1.0d;
        dArr[4] = 1.0d;
        dArr[8] = 1.0d;
        luBacksubstitution(dArr2, iArr, dArr);
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m10 = dArr[3];
        this.m11 = dArr[4];
        this.m12 = dArr[5];
        this.m20 = dArr[6];
        this.m21 = dArr[7];
        this.m22 = dArr[8];
    }

    public static void luBacksubstitution(double[] dArr, int[] iArr, double[] dArr2) {
        for (int i10 = 0; i10 < 3; i10++) {
            int i11 = -1;
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = (iArr[i12] * 3) + i10;
                double d10 = dArr2[i13];
                int i14 = i12 * 3;
                int i15 = i10 + i14;
                dArr2[i13] = dArr2[i15];
                if (i11 >= 0) {
                    for (int i16 = i11; i16 <= i12 - 1; i16++) {
                        d10 -= dArr[i14 + i16] * dArr2[(i16 * 3) + i10];
                    }
                } else if (d10 != 0.0d) {
                    i11 = i12;
                }
                dArr2[i15] = d10;
            }
            int i17 = i10 + 6;
            double d11 = dArr2[i17] / dArr[8];
            dArr2[i17] = d11;
            int i18 = i10 + 3;
            double d12 = (dArr2[i18] - (dArr[5] * d11)) / dArr[4];
            dArr2[i18] = d12;
            dArr2[i10] = ((dArr2[i10] - (dArr[1] * d12)) - (dArr[2] * dArr2[i17])) / dArr[0];
        }
    }

    public static boolean luDecomposition(double[] dArr, int[] iArr) {
        double[] dArr2 = new double[3];
        int i10 = 3;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = i10 - 1;
            if (i10 == 0) {
                for (int i14 = 0; i14 < 3; i14++) {
                    for (int i15 = 0; i15 < i14; i15++) {
                        int i16 = i15 * 3;
                        int i17 = i16 + i14;
                        double d10 = dArr[i17];
                        int i18 = i14;
                        int i19 = i15;
                        while (true) {
                            int i20 = i19 - 1;
                            if (i19 != 0) {
                                d10 -= dArr[i16] * dArr[i18];
                                i16++;
                                i18 += 3;
                                i19 = i20;
                            }
                        }
                        dArr[i17] = d10;
                    }
                    int i21 = -1;
                    double d11 = 0.0d;
                    for (int i22 = i14; i22 < 3; i22++) {
                        int i23 = i22 * 3;
                        int i24 = i23 + i14;
                        double d12 = dArr[i24];
                        int i25 = i14;
                        int i26 = i25;
                        while (true) {
                            int i27 = i25 - 1;
                            if (i25 == 0) {
                                break;
                            }
                            d12 -= dArr[i23] * dArr[i26];
                            i23++;
                            i26 += 3;
                            i25 = i27;
                        }
                        dArr[i24] = d12;
                        double abs = dArr2[i22] * Math.abs(d12);
                        if (abs >= d11) {
                            i21 = i22;
                            d11 = abs;
                        }
                    }
                    if (i21 < 0) {
                        throw new RuntimeException(VecMathI18N.getString("Matrix3d13"));
                    }
                    if (i14 != i21) {
                        int i28 = i21 * 3;
                        int i29 = i14 * 3;
                        int i30 = 3;
                        while (true) {
                            int i31 = i30 - 1;
                            if (i30 == 0) {
                                break;
                            }
                            double d13 = dArr[i28];
                            dArr[i28] = dArr[i29];
                            dArr[i29] = d13;
                            i29++;
                            i28++;
                            i30 = i31;
                        }
                        dArr2[i21] = dArr2[i14];
                    }
                    iArr[i14] = i21;
                    double d14 = dArr[(i14 * 3) + i14];
                    if (d14 == 0.0d) {
                        return false;
                    }
                    if (i14 != 2) {
                        double d15 = 1.0d / d14;
                        int i32 = ((i14 + 1) * 3) + i14;
                        int i33 = 2 - i14;
                        while (true) {
                            int i34 = i33 - 1;
                            if (i33 != 0) {
                                dArr[i32] = dArr[i32] * d15;
                                i32 += 3;
                                i33 = i34;
                            }
                        }
                    }
                }
                return true;
            }
            int i35 = 3;
            double d16 = 0.0d;
            while (true) {
                int i36 = i35 - 1;
                if (i35 == 0) {
                    break;
                }
                int i37 = i11 + 1;
                double abs2 = Math.abs(dArr[i11]);
                if (abs2 > d16) {
                    i11 = i37;
                    i35 = i36;
                    d16 = abs2;
                } else {
                    i11 = i37;
                    i35 = i36;
                }
            }
            if (d16 == 0.0d) {
                return false;
            }
            dArr2[i12] = 1.0d / d16;
            i12++;
            i10 = i13;
        }
    }

    public static void mat_mul(double[] dArr, double[] dArr2, double[] dArr3) {
        double d10 = dArr[0];
        double d11 = dArr2[0];
        double d12 = dArr[1];
        double d13 = dArr2[3];
        double d14 = dArr[2];
        double d15 = dArr2[6];
        double d16 = (d10 * d11) + (d12 * d13) + (d14 * d15);
        double d17 = dArr2[1];
        double d18 = dArr2[4];
        double d19 = dArr2[7];
        double d20 = (d10 * d17) + (d12 * d18) + (d14 * d19);
        double d21 = dArr2[2];
        double d22 = dArr2[5];
        double d23 = dArr2[8];
        double d24 = (d10 * d21) + (d12 * d22) + (d14 * d23);
        double d25 = dArr[3];
        double d26 = dArr[4];
        double d27 = dArr[5];
        double d28 = (d25 * d11) + (d26 * d13) + (d27 * d15);
        double d29 = (d25 * d17) + (d26 * d18) + (d27 * d19);
        double d30 = (d25 * d21) + (d26 * d22) + (d27 * d23);
        double d31 = dArr[6];
        double d32 = dArr[7];
        double d33 = (d11 * d31) + (d13 * d32);
        double d34 = dArr[8];
        double[] dArr4 = {d16, d20, d24, d28, d29, d30, d33 + (d15 * d34), (d17 * d31) + (d18 * d32) + (d19 * d34), (d31 * d21) + (d32 * d22) + (d34 * d23)};
        for (int i10 = 0; i10 < 9; i10++) {
            dArr3[i10] = dArr4[i10];
        }
    }

    public static double max(double d10, double d11) {
        return d10 > d11 ? d10 : d11;
    }

    public static double max3(double[] dArr) {
        double d10 = dArr[0];
        double d11 = dArr[1];
        if (d10 > d11) {
            double d12 = dArr[2];
            return d10 > d12 ? d10 : d12;
        }
        double d13 = dArr[2];
        return d11 > d13 ? d11 : d13;
    }

    public static double min(double d10, double d11) {
        return d10 < d11 ? d10 : d11;
    }

    public static void print_det(double[] dArr) {
        double d10 = dArr[0];
        double d11 = dArr[4];
        double d12 = dArr[8];
        double d13 = dArr[1];
        double d14 = dArr[5];
        double d15 = dArr[6];
        double d16 = dArr[2];
        double d17 = dArr[3];
        double d18 = dArr[7];
        double d19 = ((((((d10 * d11) * d12) + ((d13 * d14) * d15)) + ((d16 * d17) * d18)) - ((d16 * d11) * d15)) - ((d10 * d14) * d18)) - ((d13 * d17) * d12);
        System.out.println("det= " + d19);
    }

    public static void print_mat(double[] dArr) {
        for (int i10 = 0; i10 < 3; i10++) {
            PrintStream printStream = System.out;
            StringBuilder sb2 = new StringBuilder();
            int i11 = i10 * 3;
            sb2.append(dArr[i11]);
            sb2.append(" ");
            sb2.append(dArr[i11 + 1]);
            sb2.append(" ");
            sb2.append(dArr[i11 + 2]);
            sb2.append("\n");
            printStream.println(sb2.toString());
        }
    }

    public static void svdReorder(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5, double[] dArr6) {
        char c10;
        char c11;
        char c12;
        int[] iArr = new int[3];
        double[] dArr7 = new double[9];
        double d10 = dArr4[0];
        if (d10 < 0.0d) {
            dArr4[0] = -d10;
            dArr3[0] = -dArr3[0];
            dArr3[1] = -dArr3[1];
            dArr3[2] = -dArr3[2];
        }
        double d11 = dArr4[1];
        if (d11 < 0.0d) {
            dArr4[1] = -d11;
            dArr3[3] = -dArr3[3];
            dArr3[4] = -dArr3[4];
            dArr3[5] = -dArr3[5];
        }
        double d12 = dArr4[2];
        if (d12 < 0.0d) {
            dArr4[2] = -d12;
            dArr3[6] = -dArr3[6];
            dArr3[7] = -dArr3[7];
            dArr3[8] = -dArr3[8];
        }
        mat_mul(dArr2, dArr3, dArr7);
        if (almostEqual(Math.abs(dArr4[0]), Math.abs(dArr4[1])) && almostEqual(Math.abs(dArr4[1]), Math.abs(dArr4[2]))) {
            for (int i10 = 0; i10 < 9; i10++) {
                dArr5[i10] = dArr7[i10];
            }
            for (int i11 = 0; i11 < 3; i11++) {
                dArr6[i11] = dArr4[i11];
            }
            return;
        }
        double d13 = dArr4[0];
        double d14 = dArr4[1];
        if (d13 > d14) {
            double d15 = dArr4[2];
            if (d13 <= d15) {
                iArr[0] = 2;
                iArr[1] = 0;
                iArr[2] = 1;
            } else if (d15 > d14) {
                iArr[0] = 0;
                iArr[1] = 2;
                iArr[2] = 1;
            } else {
                iArr[0] = 0;
                iArr[1] = 1;
                iArr[2] = 2;
            }
        } else {
            double d16 = dArr4[2];
            if (d14 <= d16) {
                iArr[0] = 2;
                iArr[1] = 1;
                iArr[2] = 0;
            } else if (d16 > d13) {
                iArr[0] = 1;
                iArr[1] = 2;
                iArr[2] = 0;
            } else {
                iArr[0] = 1;
                iArr[1] = 0;
                iArr[2] = 2;
            }
        }
        double d17 = dArr[0];
        double d18 = dArr[1];
        double d19 = (d17 * d17) + (d18 * d18);
        double d20 = dArr[2];
        double d21 = d19 + (d20 * d20);
        double d22 = dArr[3];
        double d23 = dArr[4];
        double d24 = (d22 * d22) + (d23 * d23);
        double d25 = dArr[5];
        double d26 = d24 + (d25 * d25);
        double d27 = dArr[6];
        double d28 = dArr[7];
        double d29 = (d27 * d27) + (d28 * d28);
        double d30 = dArr[8];
        double[] dArr8 = {d21, d26, d29 + (d30 * d30)};
        double d31 = dArr8[0];
        double d32 = dArr8[1];
        if (d31 > d32) {
            double d33 = dArr8[2];
            if (d31 <= d33) {
                c10 = 0;
                c12 = 2;
                c11 = 1;
            } else if (d33 > d32) {
                c11 = 0;
                c12 = 2;
                c10 = 1;
            } else {
                c11 = 0;
                c10 = 2;
                c12 = 1;
            }
        } else {
            double d34 = dArr8[2];
            if (d32 <= d34) {
                c10 = 0;
                c11 = 2;
                c12 = 1;
            } else if (d34 > d31) {
                c12 = 0;
                c11 = 2;
                c10 = 1;
            } else {
                c12 = 0;
                c10 = 2;
                c11 = 1;
            }
        }
        int i12 = iArr[c11];
        dArr6[0] = dArr4[i12];
        int i13 = iArr[c12];
        dArr6[1] = dArr4[i13];
        int i14 = iArr[c10];
        dArr6[2] = dArr4[i14];
        dArr5[0] = dArr7[i12];
        dArr5[3] = dArr7[i12 + 3];
        dArr5[6] = dArr7[i12 + 6];
        dArr5[1] = dArr7[i13];
        dArr5[4] = dArr7[i13 + 3];
        dArr5[7] = dArr7[i13 + 6];
        dArr5[2] = dArr7[i14];
        dArr5[5] = dArr7[3 + i14];
        dArr5[8] = dArr7[i14 + 6];
    }

    public static void transpose_mat(double[] dArr, double[] dArr2) {
        dArr2[0] = dArr[0];
        dArr2[1] = dArr[3];
        dArr2[2] = dArr[6];
        dArr2[3] = dArr[1];
        dArr2[4] = dArr[4];
        dArr2[5] = dArr[7];
        dArr2[6] = dArr[2];
        dArr2[7] = dArr[5];
        dArr2[8] = dArr[8];
    }

    public final void add(double d10) {
        this.m00 += d10;
        this.m01 += d10;
        this.m02 += d10;
        this.m10 += d10;
        this.m11 += d10;
        this.m12 += d10;
        this.m20 += d10;
        this.m21 += d10;
        this.m22 += d10;
    }

    public Object clone() {
        try {
            return (Matrix3d) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final double determinant() {
        double d10 = this.m00;
        double d11 = this.m11;
        double d12 = this.m22;
        double d13 = this.m12;
        double d14 = this.m21;
        double d15 = d10 * ((d11 * d12) - (d13 * d14));
        double d16 = this.m01;
        double d17 = this.m20;
        double d18 = this.m10;
        return d15 + (d16 * ((d13 * d17) - (d12 * d18))) + (this.m02 * ((d18 * d14) - (d11 * d17)));
    }

    public boolean epsilonEquals(Matrix3d matrix3d, double d10) {
        double d11 = this.m00 - matrix3d.m00;
        if (d11 < 0.0d) {
            d11 = -d11;
        }
        if (d11 > d10) {
            return false;
        }
        double d12 = this.m01 - matrix3d.m01;
        if (d12 < 0.0d) {
            d12 = -d12;
        }
        if (d12 > d10) {
            return false;
        }
        double d13 = this.m02 - matrix3d.m02;
        if (d13 < 0.0d) {
            d13 = -d13;
        }
        if (d13 > d10) {
            return false;
        }
        double d14 = this.m10 - matrix3d.m10;
        if (d14 < 0.0d) {
            d14 = -d14;
        }
        if (d14 > d10) {
            return false;
        }
        double d15 = this.m11 - matrix3d.m11;
        if (d15 < 0.0d) {
            d15 = -d15;
        }
        if (d15 > d10) {
            return false;
        }
        double d16 = this.m12 - matrix3d.m12;
        if (d16 < 0.0d) {
            d16 = -d16;
        }
        if (d16 > d10) {
            return false;
        }
        double d17 = this.m20 - matrix3d.m20;
        if (d17 < 0.0d) {
            d17 = -d17;
        }
        if (d17 > d10) {
            return false;
        }
        double d18 = this.m21 - matrix3d.m21;
        if (d18 < 0.0d) {
            d18 = -d18;
        }
        if (d18 > d10) {
            return false;
        }
        double d19 = this.m22 - matrix3d.m22;
        if (d19 < 0.0d) {
            d19 = -d19;
        }
        return d19 <= d10;
    }

    public boolean equals(Matrix3d matrix3d) {
        try {
            if (this.m00 == matrix3d.m00 && this.m01 == matrix3d.m01 && this.m02 == matrix3d.m02 && this.m10 == matrix3d.m10 && this.m11 == matrix3d.m11 && this.m12 == matrix3d.m12 && this.m20 == matrix3d.m20 && this.m21 == matrix3d.m21) {
                return this.m22 == matrix3d.m22;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void getColumn(int i10, Vector3d vector3d) {
        if (i10 == 0) {
            vector3d.f92833x = this.m00;
            vector3d.f92834y = this.m10;
            vector3d.f92835z = this.m20;
        } else if (i10 == 1) {
            vector3d.f92833x = this.m01;
            vector3d.f92834y = this.m11;
            vector3d.f92835z = this.m21;
        } else {
            if (i10 == 2) {
                vector3d.f92833x = this.m02;
                vector3d.f92834y = this.m12;
                vector3d.f92835z = this.m22;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d4"));
        }
    }

    public final double getElement(int i10, int i11) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    if (i11 == 0) {
                        return this.m20;
                    }
                    if (i11 == 1) {
                        return this.m21;
                    }
                    if (i11 == 2) {
                        return this.m22;
                    }
                }
            } else {
                if (i11 == 0) {
                    return this.m10;
                }
                if (i11 == 1) {
                    return this.m11;
                }
                if (i11 == 2) {
                    return this.m12;
                }
            }
        } else {
            if (i11 == 0) {
                return this.m00;
            }
            if (i11 == 1) {
                return this.m01;
            }
            if (i11 == 2) {
                return this.m02;
            }
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d1"));
    }

    public final double getM00() {
        return this.m00;
    }

    public final double getM01() {
        return this.m01;
    }

    public final double getM02() {
        return this.m02;
    }

    public final double getM10() {
        return this.m10;
    }

    public final double getM11() {
        return this.m11;
    }

    public final double getM12() {
        return this.m12;
    }

    public final double getM20() {
        return this.m20;
    }

    public final double getM21() {
        return this.m21;
    }

    public final double getM22() {
        return this.m22;
    }

    public final void getRow(int i10, Vector3d vector3d) {
        if (i10 == 0) {
            vector3d.f92833x = this.m00;
            vector3d.f92834y = this.m01;
            vector3d.f92835z = this.m02;
        } else if (i10 == 1) {
            vector3d.f92833x = this.m10;
            vector3d.f92834y = this.m11;
            vector3d.f92835z = this.m12;
        } else {
            if (i10 == 2) {
                vector3d.f92833x = this.m20;
                vector3d.f92834y = this.m21;
                vector3d.f92835z = this.m22;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d2"));
        }
    }

    public final double getScale() {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        return max3(dArr);
    }

    public final void getScaleRotate(double[] dArr, double[] dArr2) {
        compute_svd(new double[]{this.m00, this.m01, this.m02, this.m10, this.m11, this.m12, this.m20, this.m21, this.m22}, dArr, dArr2);
    }

    public int hashCode() {
        long doubleToLongBits = ((((((((((((((((VecMathUtil.doubleToLongBits(this.m00) + 31) * 31) + VecMathUtil.doubleToLongBits(this.m01)) * 31) + VecMathUtil.doubleToLongBits(this.m02)) * 31) + VecMathUtil.doubleToLongBits(this.m10)) * 31) + VecMathUtil.doubleToLongBits(this.m11)) * 31) + VecMathUtil.doubleToLongBits(this.m12)) * 31) + VecMathUtil.doubleToLongBits(this.m20)) * 31) + VecMathUtil.doubleToLongBits(this.m21)) * 31) + VecMathUtil.doubleToLongBits(this.m22);
        return (int) (doubleToLongBits ^ (doubleToLongBits >> 32));
    }

    public final void invert(Matrix3d matrix3d) {
        invertGeneral(matrix3d);
    }

    public final void mul(double d10) {
        this.m00 *= d10;
        this.m01 *= d10;
        this.m02 *= d10;
        this.m10 *= d10;
        this.m11 *= d10;
        this.m12 *= d10;
        this.m20 *= d10;
        this.m21 *= d10;
        this.m22 *= d10;
    }

    public final void mulNormalize(Matrix3d matrix3d) {
        double[] dArr = new double[9];
        double d10 = this.m00;
        double d11 = matrix3d.m00;
        double d12 = this.m01;
        double d13 = matrix3d.m10;
        double d14 = this.m02;
        double d15 = matrix3d.m20;
        double d16 = (d10 * d11) + (d12 * d13) + (d14 * d15);
        double d17 = matrix3d.m01;
        double d18 = d10 * d17;
        double d19 = matrix3d.m11;
        double d20 = d18 + (d12 * d19);
        double d21 = matrix3d.m21;
        double d22 = d20 + (d14 * d21);
        double d23 = matrix3d.m02;
        double d24 = d10 * d23;
        double d25 = matrix3d.m12;
        double d26 = d24 + (d12 * d25);
        double d27 = matrix3d.m22;
        double d28 = d26 + (d14 * d27);
        double d29 = this.m10;
        double d30 = this.m11;
        double d31 = (d29 * d11) + (d30 * d13);
        double d32 = this.m12;
        double d33 = d31 + (d32 * d15);
        double d34 = (d29 * d17) + (d30 * d19) + (d32 * d21);
        double d35 = (d29 * d23) + (d30 * d25) + (d32 * d27);
        double d36 = this.m20;
        double d37 = this.m21;
        double d38 = this.m22;
        compute_svd(new double[]{d16, d22, d28, d33, d34, d35, (d11 * d36) + (d13 * d37) + (d15 * d38), (d36 * d17) + (d37 * d19) + (d38 * d21), (d36 * d23) + (d37 * d25) + (d38 * d27)}, new double[3], dArr);
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m10 = dArr[3];
        this.m11 = dArr[4];
        this.m12 = dArr[5];
        this.m20 = dArr[6];
        this.m21 = dArr[7];
        this.m22 = dArr[8];
    }

    public final void mulTransposeBoth(Matrix3d matrix3d, Matrix3d matrix3d2) {
        if (this != matrix3d && this != matrix3d2) {
            double d10 = matrix3d.m00 * matrix3d2.m00;
            double d11 = matrix3d.m10;
            double d12 = d10 + (matrix3d2.m01 * d11);
            double d13 = matrix3d.m20;
            this.m00 = d12 + (matrix3d2.m02 * d13);
            double d14 = matrix3d.m00;
            double d15 = matrix3d2.m10 * d14;
            double d16 = matrix3d2.m11;
            double d17 = matrix3d2.m12;
            this.m01 = d15 + (d11 * d16) + (d13 * d17);
            double d18 = matrix3d2.m20;
            double d19 = d14 * d18;
            double d20 = matrix3d2.m21;
            double d21 = d19 + (d11 * d20);
            double d22 = matrix3d2.m22;
            this.m02 = d21 + (d13 * d22);
            double d23 = matrix3d.m01;
            double d24 = matrix3d2.m00;
            double d25 = d23 * d24;
            double d26 = matrix3d.m11;
            double d27 = matrix3d2.m01;
            double d28 = d25 + (d26 * d27);
            double d29 = matrix3d.m21;
            double d30 = matrix3d2.m02;
            this.m10 = d28 + (d29 * d30);
            double d31 = matrix3d2.m10;
            this.m11 = (d23 * d31) + (d26 * d16) + (d17 * d29);
            this.m12 = (d23 * d18) + (matrix3d.m11 * d20) + (d29 * d22);
            double d32 = matrix3d.m02;
            double d33 = matrix3d.m12;
            double d34 = matrix3d.m22;
            this.m20 = (d32 * d24) + (d33 * d27) + (d34 * d30);
            this.m21 = (d31 * d32) + (matrix3d2.m11 * d33) + (matrix3d2.m12 * d34);
            this.m22 = (d32 * matrix3d2.m20) + (d33 * matrix3d2.m21) + (d34 * d22);
            return;
        }
        double d35 = matrix3d.m00;
        double d36 = matrix3d2.m00;
        double d37 = matrix3d.m10;
        double d38 = matrix3d2.m01;
        double d39 = (d35 * d36) + (d37 * d38);
        double d40 = matrix3d.m20;
        double d41 = matrix3d2.m02;
        double d42 = d39 + (d40 * d41);
        double d43 = matrix3d2.m10;
        double d44 = d35 * d43;
        double d45 = matrix3d2.m11;
        double d46 = d44 + (d37 * d45);
        double d47 = matrix3d2.m12;
        double d48 = d46 + (d40 * d47);
        double d49 = matrix3d2.m20;
        double d50 = d35 * d49;
        double d51 = matrix3d2.m21;
        double d52 = d50 + (d37 * d51);
        double d53 = matrix3d2.m22;
        double d54 = d52 + (d40 * d53);
        double d55 = matrix3d.m01;
        double d56 = matrix3d.m11;
        double d57 = matrix3d.m21;
        double d58 = (d55 * d36) + (d56 * d38) + (d57 * d41);
        double d59 = (d55 * d43) + (d56 * d45) + (d57 * d47);
        double d60 = (d55 * d49) + (d56 * d51) + (d57 * d53);
        double d61 = matrix3d.m02;
        double d62 = matrix3d.m12;
        double d63 = (d61 * d36) + (d38 * d62);
        double d64 = matrix3d.m22;
        this.m00 = d42;
        this.m01 = d48;
        this.m02 = d54;
        this.m10 = d58;
        this.m11 = d59;
        this.m12 = d60;
        this.m20 = d63 + (d64 * d41);
        this.m21 = (d43 * d61) + (d45 * d62) + (d64 * d47);
        this.m22 = (d61 * d49) + (d62 * d51) + (d64 * d53);
    }

    public final void mulTransposeLeft(Matrix3d matrix3d, Matrix3d matrix3d2) {
        if (this != matrix3d && this != matrix3d2) {
            double d10 = matrix3d.m00 * matrix3d2.m00;
            double d11 = matrix3d.m10;
            double d12 = matrix3d2.m10;
            double d13 = matrix3d.m20;
            double d14 = matrix3d2.m20;
            this.m00 = d10 + (d11 * d12) + (d13 * d14);
            double d15 = matrix3d.m00;
            double d16 = matrix3d2.m01 * d15;
            double d17 = matrix3d2.m11;
            double d18 = d16 + (d11 * d17);
            double d19 = matrix3d2.m21;
            this.m01 = d18 + (d13 * d19);
            double d20 = d15 * matrix3d2.m02;
            double d21 = matrix3d2.m12;
            double d22 = d20 + (d11 * d21);
            double d23 = matrix3d2.m22;
            this.m02 = d22 + (d13 * d23);
            double d24 = matrix3d.m01;
            double d25 = matrix3d2.m00;
            double d26 = d24 * d25;
            double d27 = matrix3d.m11;
            double d28 = d26 + (d12 * d27);
            double d29 = matrix3d.m21;
            this.m10 = d28 + (d29 * d14);
            double d30 = matrix3d2.m01;
            this.m11 = (d24 * d30) + (d27 * d17) + (d29 * d19);
            double d31 = matrix3d2.m02;
            this.m12 = (d24 * d31) + (matrix3d.m11 * d21) + (d29 * d23);
            double d32 = matrix3d.m02;
            double d33 = matrix3d.m12;
            double d34 = (d32 * d25) + (matrix3d2.m10 * d33);
            double d35 = matrix3d.m22;
            this.m20 = d34 + (d14 * d35);
            this.m21 = (d30 * d32) + (matrix3d2.m11 * d33) + (d19 * d35);
            this.m22 = (d32 * d31) + (d33 * matrix3d2.m12) + (d35 * d23);
            return;
        }
        double d36 = matrix3d.m00;
        double d37 = matrix3d2.m00;
        double d38 = matrix3d.m10;
        double d39 = matrix3d2.m10;
        double d40 = (d36 * d37) + (d38 * d39);
        double d41 = matrix3d.m20;
        double d42 = matrix3d2.m20;
        double d43 = d40 + (d41 * d42);
        double d44 = matrix3d2.m01;
        double d45 = d36 * d44;
        double d46 = matrix3d2.m11;
        double d47 = d45 + (d38 * d46);
        double d48 = matrix3d2.m21;
        double d49 = d47 + (d41 * d48);
        double d50 = matrix3d2.m02;
        double d51 = d36 * d50;
        double d52 = matrix3d2.m12;
        double d53 = d51 + (d38 * d52);
        double d54 = matrix3d2.m22;
        double d55 = d53 + (d41 * d54);
        double d56 = matrix3d.m01;
        double d57 = matrix3d.m11;
        double d58 = matrix3d.m21;
        double d59 = (d56 * d37) + (d57 * d39) + (d58 * d42);
        double d60 = (d56 * d44) + (d57 * d46) + (d58 * d48);
        double d61 = (d56 * d50) + (d57 * d52) + (d58 * d54);
        double d62 = matrix3d.m02;
        double d63 = matrix3d.m12;
        double d64 = (d62 * d37) + (d39 * d63);
        double d65 = matrix3d.m22;
        this.m00 = d43;
        this.m01 = d49;
        this.m02 = d55;
        this.m10 = d59;
        this.m11 = d60;
        this.m12 = d61;
        this.m20 = d64 + (d65 * d42);
        this.m21 = (d44 * d62) + (d46 * d63) + (d65 * d48);
        this.m22 = (d62 * d50) + (d63 * d52) + (d65 * d54);
    }

    public final void mulTransposeRight(Matrix3d matrix3d, Matrix3d matrix3d2) {
        if (this != matrix3d && this != matrix3d2) {
            double d10 = matrix3d.m00 * matrix3d2.m00;
            double d11 = matrix3d.m01;
            double d12 = d10 + (matrix3d2.m01 * d11);
            double d13 = matrix3d.m02;
            this.m00 = d12 + (matrix3d2.m02 * d13);
            double d14 = matrix3d.m00;
            double d15 = matrix3d2.m10 * d14;
            double d16 = matrix3d2.m11;
            double d17 = d15 + (d11 * d16);
            double d18 = matrix3d2.m12;
            this.m01 = d17 + (d13 * d18);
            double d19 = matrix3d2.m20;
            double d20 = d14 * d19;
            double d21 = matrix3d.m01;
            double d22 = matrix3d2.m21;
            double d23 = d20 + (d21 * d22);
            double d24 = matrix3d2.m22;
            this.m02 = d23 + (d13 * d24);
            double d25 = matrix3d.m10;
            double d26 = matrix3d2.m00;
            double d27 = d25 * d26;
            double d28 = matrix3d.m11;
            double d29 = matrix3d2.m01;
            double d30 = d27 + (d28 * d29);
            double d31 = matrix3d.m12;
            double d32 = matrix3d2.m02;
            this.m10 = d30 + (d31 * d32);
            double d33 = matrix3d.m10;
            double d34 = matrix3d2.m10;
            this.m11 = (d33 * d34) + (d28 * d16) + (d18 * d31);
            this.m12 = (d33 * d19) + (matrix3d.m11 * d22) + (d31 * d24);
            double d35 = matrix3d.m20 * d26;
            double d36 = matrix3d.m21;
            double d37 = matrix3d.m22;
            this.m20 = d35 + (d36 * d29) + (d37 * d32);
            double d38 = matrix3d.m20;
            this.m21 = (d34 * d38) + (d36 * matrix3d2.m11) + (matrix3d2.m12 * d37);
            this.m22 = (d38 * matrix3d2.m20) + (matrix3d.m21 * matrix3d2.m21) + (d37 * d24);
            return;
        }
        double d39 = matrix3d.m00;
        double d40 = matrix3d2.m00;
        double d41 = matrix3d.m01;
        double d42 = matrix3d2.m01;
        double d43 = (d39 * d40) + (d41 * d42);
        double d44 = matrix3d.m02;
        double d45 = matrix3d2.m02;
        double d46 = d43 + (d44 * d45);
        double d47 = matrix3d2.m10;
        double d48 = d39 * d47;
        double d49 = matrix3d2.m11;
        double d50 = d48 + (d41 * d49);
        double d51 = matrix3d2.m12;
        double d52 = d50 + (d44 * d51);
        double d53 = matrix3d2.m20;
        double d54 = d39 * d53;
        double d55 = matrix3d2.m21;
        double d56 = d54 + (d41 * d55);
        double d57 = matrix3d2.m22;
        double d58 = d56 + (d44 * d57);
        double d59 = matrix3d.m10;
        double d60 = matrix3d.m11;
        double d61 = matrix3d.m12;
        double d62 = (d59 * d40) + (d60 * d42) + (d61 * d45);
        double d63 = (d59 * d47) + (d60 * d49) + (d61 * d51);
        double d64 = (d59 * d53) + (d60 * d55) + (d61 * d57);
        double d65 = matrix3d.m20;
        double d66 = matrix3d.m21;
        double d67 = (d65 * d40) + (d42 * d66);
        double d68 = matrix3d.m22;
        this.m00 = d46;
        this.m01 = d52;
        this.m02 = d58;
        this.m10 = d62;
        this.m11 = d63;
        this.m12 = d64;
        this.m20 = d67 + (d68 * d45);
        this.m21 = (d47 * d65) + (d49 * d66) + (d68 * d51);
        this.m22 = (d65 * d53) + (d66 * d55) + (d68 * d57);
    }

    public final void negate() {
        this.m00 = -this.m00;
        this.m01 = -this.m01;
        this.m02 = -this.m02;
        this.m10 = -this.m10;
        this.m11 = -this.m11;
        this.m12 = -this.m12;
        this.m20 = -this.m20;
        this.m21 = -this.m21;
        this.m22 = -this.m22;
    }

    public final void normalize() {
        double[] dArr = new double[9];
        getScaleRotate(new double[3], dArr);
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m10 = dArr[3];
        this.m11 = dArr[4];
        this.m12 = dArr[5];
        this.m20 = dArr[6];
        this.m21 = dArr[7];
        this.m22 = dArr[8];
    }

    public final void normalizeCP() {
        double d10 = this.m00;
        double d11 = this.m10;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.m20;
        double sqrt = 1.0d / Math.sqrt(d12 + (d13 * d13));
        this.m00 *= sqrt;
        this.m10 *= sqrt;
        this.m20 *= sqrt;
        double d14 = this.m01;
        double d15 = this.m11;
        double d16 = (d14 * d14) + (d15 * d15);
        double d17 = this.m21;
        double sqrt2 = 1.0d / Math.sqrt(d16 + (d17 * d17));
        double d18 = this.m01 * sqrt2;
        this.m01 = d18;
        double d19 = this.m11 * sqrt2;
        this.m11 = d19;
        double d20 = this.m21 * sqrt2;
        this.m21 = d20;
        double d21 = this.m10;
        double d22 = this.m20;
        this.m02 = (d21 * d20) - (d19 * d22);
        double d23 = this.m00;
        this.m12 = (d22 * d18) - (d20 * d23);
        this.m22 = (d23 * d19) - (d18 * d21);
    }

    public final void rotX(double d10) {
        double sin = Math.sin(d10);
        double cos = Math.cos(d10);
        this.m00 = 1.0d;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = cos;
        this.m12 = -sin;
        this.m20 = 0.0d;
        this.m21 = sin;
        this.m22 = cos;
    }

    public final void rotY(double d10) {
        double sin = Math.sin(d10);
        double cos = Math.cos(d10);
        this.m00 = cos;
        this.m01 = 0.0d;
        this.m02 = sin;
        this.m10 = 0.0d;
        this.m11 = 1.0d;
        this.m12 = 0.0d;
        this.m20 = -sin;
        this.m21 = 0.0d;
        this.m22 = cos;
    }

    public final void rotZ(double d10) {
        double sin = Math.sin(d10);
        double cos = Math.cos(d10);
        this.m00 = cos;
        this.m01 = -sin;
        this.m02 = 0.0d;
        this.m10 = sin;
        this.m11 = cos;
        this.m12 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = 1.0d;
    }

    public final void set(Quat4d quat4d) {
        double d10 = quat4d.f92848y;
        double d11 = quat4d.f92849z;
        this.m00 = (1.0d - ((d10 * 2.0d) * d10)) - ((d11 * 2.0d) * d11);
        double d12 = quat4d.f92847x;
        double d13 = quat4d.f92846w;
        this.m10 = ((d12 * d10) + (d13 * d11)) * 2.0d;
        this.m20 = ((d12 * d11) - (d13 * d10)) * 2.0d;
        this.m01 = ((d12 * d10) - (d13 * d11)) * 2.0d;
        this.m11 = (1.0d - ((d12 * 2.0d) * d12)) - ((d11 * 2.0d) * d11);
        this.m21 = ((d10 * d11) + (d13 * d12)) * 2.0d;
        this.m02 = ((d12 * d11) + (d13 * d10)) * 2.0d;
        this.m12 = ((d11 * d10) - (d13 * d12)) * 2.0d;
        this.m22 = (1.0d - ((d12 * 2.0d) * d12)) - ((2.0d * d10) * d10);
    }

    public final void setColumn(int i10, double d10, double d11, double d12) {
        if (i10 == 0) {
            this.m00 = d10;
            this.m10 = d11;
            this.m20 = d12;
        } else if (i10 == 1) {
            this.m01 = d10;
            this.m11 = d11;
            this.m21 = d12;
        } else {
            if (i10 == 2) {
                this.m02 = d10;
                this.m12 = d11;
                this.m22 = d12;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d9"));
        }
    }

    public final void setElement(int i10, int i11, double d10) {
        if (i10 == 0) {
            if (i11 == 0) {
                this.m00 = d10;
                return;
            } else if (i11 == 1) {
                this.m01 = d10;
                return;
            } else {
                if (i11 != 2) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d0"));
                }
                this.m02 = d10;
                return;
            }
        }
        if (i10 == 1) {
            if (i11 == 0) {
                this.m10 = d10;
                return;
            } else if (i11 == 1) {
                this.m11 = d10;
                return;
            } else {
                if (i11 != 2) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d0"));
                }
                this.m12 = d10;
                return;
            }
        }
        if (i10 != 2) {
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d0"));
        }
        if (i11 == 0) {
            this.m20 = d10;
        } else if (i11 == 1) {
            this.m21 = d10;
        } else {
            if (i11 != 2) {
                throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d0"));
            }
            this.m22 = d10;
        }
    }

    public final void setIdentity() {
        this.m00 = 1.0d;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = 1.0d;
        this.m12 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = 1.0d;
    }

    public final void setM00(double d10) {
        this.m00 = d10;
    }

    public final void setM01(double d10) {
        this.m01 = d10;
    }

    public final void setM02(double d10) {
        this.m02 = d10;
    }

    public final void setM10(double d10) {
        this.m10 = d10;
    }

    public final void setM11(double d10) {
        this.m11 = d10;
    }

    public final void setM12(double d10) {
        this.m12 = d10;
    }

    public final void setM20(double d10) {
        this.m20 = d10;
    }

    public final void setM21(double d10) {
        this.m21 = d10;
    }

    public final void setM22(double d10) {
        this.m22 = d10;
    }

    public final void setRow(int i10, double d10, double d11, double d12) {
        if (i10 == 0) {
            this.m00 = d10;
            this.m01 = d11;
            this.m02 = d12;
        } else if (i10 == 1) {
            this.m10 = d10;
            this.m11 = d11;
            this.m12 = d12;
        } else {
            if (i10 == 2) {
                this.m20 = d10;
                this.m21 = d11;
                this.m22 = d12;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d6"));
        }
    }

    public final void setScale(double d10) {
        double[] dArr = new double[9];
        getScaleRotate(new double[3], dArr);
        this.m00 = dArr[0] * d10;
        this.m01 = dArr[1] * d10;
        this.m02 = dArr[2] * d10;
        this.m10 = dArr[3] * d10;
        this.m11 = dArr[4] * d10;
        this.m12 = dArr[5] * d10;
        this.m20 = dArr[6] * d10;
        this.m21 = dArr[7] * d10;
        this.m22 = dArr[8] * d10;
    }

    public final void setZero() {
        this.m00 = 0.0d;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = 0.0d;
        this.m12 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = 0.0d;
    }

    public final void sub(Matrix3d matrix3d, Matrix3d matrix3d2) {
        this.m00 = matrix3d.m00 - matrix3d2.m00;
        this.m01 = matrix3d.m01 - matrix3d2.m01;
        this.m02 = matrix3d.m02 - matrix3d2.m02;
        this.m10 = matrix3d.m10 - matrix3d2.m10;
        this.m11 = matrix3d.m11 - matrix3d2.m11;
        this.m12 = matrix3d.m12 - matrix3d2.m12;
        this.m20 = matrix3d.m20 - matrix3d2.m20;
        this.m21 = matrix3d.m21 - matrix3d2.m21;
        this.m22 = matrix3d.m22 - matrix3d2.m22;
    }

    public String toString() {
        return this.m00 + ", " + this.m01 + ", " + this.m02 + "\n" + this.m10 + ", " + this.m11 + ", " + this.m12 + "\n" + this.m20 + ", " + this.m21 + ", " + this.m22 + "\n";
    }

    public final void transform(Tuple3d tuple3d) {
        double d10 = this.m00;
        double d11 = tuple3d.f92833x;
        double d12 = this.m01;
        double d13 = tuple3d.f92834y;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = this.m02;
        double d16 = tuple3d.f92835z;
        tuple3d.set(d14 + (d15 * d16), (this.m10 * d11) + (this.m11 * d13) + (this.m12 * d16), (this.m20 * d11) + (this.m21 * d13) + (this.m22 * d16));
    }

    public final void transpose() {
        double d10 = this.m10;
        this.m10 = this.m01;
        this.m01 = d10;
        double d11 = this.m20;
        this.m20 = this.m02;
        this.m02 = d11;
        double d12 = this.m21;
        this.m21 = this.m12;
        this.m12 = d12;
    }

    public boolean equals(Object obj) {
        try {
            Matrix3d matrix3d = (Matrix3d) obj;
            if (this.m00 == matrix3d.m00 && this.m01 == matrix3d.m01 && this.m02 == matrix3d.m02 && this.m10 == matrix3d.m10 && this.m11 == matrix3d.m11 && this.m12 == matrix3d.m12 && this.m20 == matrix3d.m20 && this.m21 == matrix3d.m21) {
                return this.m22 == matrix3d.m22;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void invert() {
        invertGeneral(this);
    }

    public final void transform(Tuple3d tuple3d, Tuple3d tuple3d2) {
        double d10 = this.m00;
        double d11 = tuple3d.f92833x;
        double d12 = this.m01;
        double d13 = tuple3d.f92834y;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = this.m02;
        double d16 = tuple3d.f92835z;
        double d17 = d14 + (d15 * d16);
        double d18 = (this.m10 * d11) + (this.m11 * d13) + (this.m12 * d16);
        tuple3d2.f92835z = (this.m20 * d11) + (this.m21 * d13) + (this.m22 * d16);
        tuple3d2.f92833x = d17;
        tuple3d2.f92834y = d18;
    }

    public final void add(double d10, Matrix3d matrix3d) {
        this.m00 = matrix3d.m00 + d10;
        this.m01 = matrix3d.m01 + d10;
        this.m02 = matrix3d.m02 + d10;
        this.m10 = matrix3d.m10 + d10;
        this.m11 = matrix3d.m11 + d10;
        this.m12 = matrix3d.m12 + d10;
        this.m20 = matrix3d.m20 + d10;
        this.m21 = matrix3d.m21 + d10;
        this.m22 = matrix3d.m22 + d10;
    }

    public final void mul(double d10, Matrix3d matrix3d) {
        this.m00 = matrix3d.m00 * d10;
        this.m01 = matrix3d.m01 * d10;
        this.m02 = matrix3d.m02 * d10;
        this.m10 = matrix3d.m10 * d10;
        this.m11 = matrix3d.m11 * d10;
        this.m12 = matrix3d.m12 * d10;
        this.m20 = matrix3d.m20 * d10;
        this.m21 = matrix3d.m21 * d10;
        this.m22 = d10 * matrix3d.m22;
    }

    public final void negate(Matrix3d matrix3d) {
        this.m00 = -matrix3d.m00;
        this.m01 = -matrix3d.m01;
        this.m02 = -matrix3d.m02;
        this.m10 = -matrix3d.m10;
        this.m11 = -matrix3d.m11;
        this.m12 = -matrix3d.m12;
        this.m20 = -matrix3d.m20;
        this.m21 = -matrix3d.m21;
        this.m22 = -matrix3d.m22;
    }

    public final void set(AxisAngle4d axisAngle4d) {
        double d10 = axisAngle4d.f92818x;
        double d11 = axisAngle4d.f92819y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = axisAngle4d.f92820z;
        double sqrt = Math.sqrt(d12 + (d13 * d13));
        if (sqrt < EPS) {
            this.m00 = 1.0d;
            this.m01 = 0.0d;
            this.m02 = 0.0d;
            this.m10 = 0.0d;
            this.m11 = 1.0d;
            this.m12 = 0.0d;
            this.m20 = 0.0d;
            this.m21 = 0.0d;
            this.m22 = 1.0d;
            return;
        }
        double d14 = 1.0d / sqrt;
        double d15 = axisAngle4d.f92818x * d14;
        double d16 = axisAngle4d.f92819y * d14;
        double d17 = axisAngle4d.f92820z * d14;
        double sin = Math.sin(axisAngle4d.angle);
        double cos = Math.cos(axisAngle4d.angle);
        double d18 = 1.0d - cos;
        double d19 = d15 * d17;
        double d20 = d16 * d17;
        this.m00 = (d18 * d15 * d15) + cos;
        double d21 = d15 * d16 * d18;
        double d22 = sin * d17;
        this.m01 = d21 - d22;
        double d23 = d19 * d18;
        double d24 = sin * d16;
        this.m02 = d23 + d24;
        this.m10 = d21 + d22;
        this.m11 = (d18 * d16 * d16) + cos;
        double d25 = d20 * d18;
        double d26 = sin * d15;
        this.m12 = d25 - d26;
        this.m20 = d23 - d24;
        this.m21 = d25 + d26;
        this.m22 = (d18 * d17 * d17) + cos;
    }

    public final void sub(Matrix3d matrix3d) {
        this.m00 -= matrix3d.m00;
        this.m01 -= matrix3d.m01;
        this.m02 -= matrix3d.m02;
        this.m10 -= matrix3d.m10;
        this.m11 -= matrix3d.m11;
        this.m12 -= matrix3d.m12;
        this.m20 -= matrix3d.m20;
        this.m21 -= matrix3d.m21;
        this.m22 -= matrix3d.m22;
    }

    public final void transpose(Matrix3d matrix3d) {
        if (this != matrix3d) {
            this.m00 = matrix3d.m00;
            this.m01 = matrix3d.m10;
            this.m02 = matrix3d.m20;
            this.m10 = matrix3d.m01;
            this.m11 = matrix3d.m11;
            this.m12 = matrix3d.m21;
            this.m20 = matrix3d.m02;
            this.m21 = matrix3d.m12;
            this.m22 = matrix3d.m22;
            return;
        }
        transpose();
    }

    public Matrix3d(double[] dArr) {
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m10 = dArr[3];
        this.m11 = dArr[4];
        this.m12 = dArr[5];
        this.m20 = dArr[6];
        this.m21 = dArr[7];
        this.m22 = dArr[8];
    }

    public final void getColumn(int i10, double[] dArr) {
        if (i10 == 0) {
            dArr[0] = this.m00;
            dArr[1] = this.m10;
            dArr[2] = this.m20;
        } else if (i10 == 1) {
            dArr[0] = this.m01;
            dArr[1] = this.m11;
            dArr[2] = this.m21;
        } else {
            if (i10 == 2) {
                dArr[0] = this.m02;
                dArr[1] = this.m12;
                dArr[2] = this.m22;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d4"));
        }
    }

    public final void getRow(int i10, double[] dArr) {
        if (i10 == 0) {
            dArr[0] = this.m00;
            dArr[1] = this.m01;
            dArr[2] = this.m02;
        } else if (i10 == 1) {
            dArr[0] = this.m10;
            dArr[1] = this.m11;
            dArr[2] = this.m12;
        } else {
            if (i10 == 2) {
                dArr[0] = this.m20;
                dArr[1] = this.m21;
                dArr[2] = this.m22;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d2"));
        }
    }

    public final void setColumn(int i10, Vector3d vector3d) {
        if (i10 == 0) {
            this.m00 = vector3d.f92833x;
            this.m10 = vector3d.f92834y;
            this.m20 = vector3d.f92835z;
        } else if (i10 == 1) {
            this.m01 = vector3d.f92833x;
            this.m11 = vector3d.f92834y;
            this.m21 = vector3d.f92835z;
        } else {
            if (i10 == 2) {
                this.m02 = vector3d.f92833x;
                this.m12 = vector3d.f92834y;
                this.m22 = vector3d.f92835z;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d9"));
        }
    }

    public final void setRow(int i10, Vector3d vector3d) {
        if (i10 == 0) {
            this.m00 = vector3d.f92833x;
            this.m01 = vector3d.f92834y;
            this.m02 = vector3d.f92835z;
        } else if (i10 == 1) {
            this.m10 = vector3d.f92833x;
            this.m11 = vector3d.f92834y;
            this.m12 = vector3d.f92835z;
        } else {
            if (i10 == 2) {
                this.m20 = vector3d.f92833x;
                this.m21 = vector3d.f92834y;
                this.m22 = vector3d.f92835z;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d6"));
        }
    }

    public final void normalizeCP(Matrix3d matrix3d) {
        double d10 = matrix3d.m00;
        double d11 = matrix3d.m10;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = matrix3d.m20;
        double sqrt = 1.0d / Math.sqrt(d12 + (d13 * d13));
        this.m00 = matrix3d.m00 * sqrt;
        this.m10 = matrix3d.m10 * sqrt;
        this.m20 = matrix3d.m20 * sqrt;
        double d14 = matrix3d.m01;
        double d15 = matrix3d.m11;
        double d16 = (d14 * d14) + (d15 * d15);
        double d17 = matrix3d.m21;
        double sqrt2 = 1.0d / Math.sqrt(d16 + (d17 * d17));
        double d18 = matrix3d.m01 * sqrt2;
        this.m01 = d18;
        double d19 = matrix3d.m11 * sqrt2;
        this.m11 = d19;
        double d20 = matrix3d.m21 * sqrt2;
        this.m21 = d20;
        double d21 = this.m10;
        double d22 = this.m20;
        this.m02 = (d21 * d20) - (d19 * d22);
        double d23 = this.m00;
        this.m12 = (d22 * d18) - (d20 * d23);
        this.m22 = (d23 * d19) - (d18 * d21);
    }

    public final void normalize(Matrix3d matrix3d) {
        double[] dArr = new double[9];
        compute_svd(new double[]{matrix3d.m00, matrix3d.m01, matrix3d.m02, matrix3d.m10, matrix3d.m11, matrix3d.m12, matrix3d.m20, matrix3d.m21, matrix3d.m22}, new double[3], dArr);
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m10 = dArr[3];
        this.m11 = dArr[4];
        this.m12 = dArr[5];
        this.m20 = dArr[6];
        this.m21 = dArr[7];
        this.m22 = dArr[8];
    }

    public final void add(Matrix3d matrix3d, Matrix3d matrix3d2) {
        this.m00 = matrix3d.m00 + matrix3d2.m00;
        this.m01 = matrix3d.m01 + matrix3d2.m01;
        this.m02 = matrix3d.m02 + matrix3d2.m02;
        this.m10 = matrix3d.m10 + matrix3d2.m10;
        this.m11 = matrix3d.m11 + matrix3d2.m11;
        this.m12 = matrix3d.m12 + matrix3d2.m12;
        this.m20 = matrix3d.m20 + matrix3d2.m20;
        this.m21 = matrix3d.m21 + matrix3d2.m21;
        this.m22 = matrix3d.m22 + matrix3d2.m22;
    }

    public final void mul(Matrix3d matrix3d) {
        double d10 = this.m00;
        double d11 = matrix3d.m00;
        double d12 = this.m01;
        double d13 = matrix3d.m10;
        double d14 = this.m02;
        double d15 = matrix3d.m20;
        double d16 = (d10 * d11) + (d12 * d13) + (d14 * d15);
        double d17 = matrix3d.m01;
        double d18 = d10 * d17;
        double d19 = matrix3d.m11;
        double d20 = d18 + (d12 * d19);
        double d21 = matrix3d.m21;
        double d22 = d20 + (d14 * d21);
        double d23 = matrix3d.m02;
        double d24 = d10 * d23;
        double d25 = matrix3d.m12;
        double d26 = d24 + (d12 * d25);
        double d27 = matrix3d.m22;
        double d28 = d26 + (d14 * d27);
        double d29 = this.m10;
        double d30 = this.m11;
        double d31 = (d29 * d11) + (d30 * d13);
        double d32 = this.m12;
        double d33 = d31 + (d32 * d15);
        double d34 = (d29 * d17) + (d30 * d19) + (d32 * d21);
        double d35 = (d29 * d23) + (d30 * d25) + (d32 * d27);
        double d36 = this.m20;
        double d37 = this.m21;
        double d38 = this.m22;
        this.m00 = d16;
        this.m01 = d22;
        this.m02 = d28;
        this.m10 = d33;
        this.m11 = d34;
        this.m12 = d35;
        this.m20 = (d11 * d36) + (d37 * d13) + (d38 * d15);
        this.m21 = (d17 * d36) + (d19 * d37) + (d38 * d21);
        this.m22 = (d36 * d23) + (d37 * d25) + (d38 * d27);
    }

    public final void mulNormalize(Matrix3d matrix3d, Matrix3d matrix3d2) {
        double[] dArr = new double[9];
        double d10 = matrix3d.m00;
        double d11 = matrix3d2.m00;
        double d12 = matrix3d.m01;
        double d13 = matrix3d2.m10;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = matrix3d.m02;
        double d16 = matrix3d2.m20;
        double d17 = d14 + (d15 * d16);
        double d18 = matrix3d2.m01;
        double d19 = d10 * d18;
        double d20 = matrix3d2.m11;
        double d21 = d19 + (d12 * d20);
        double d22 = matrix3d2.m21;
        double d23 = d21 + (d15 * d22);
        double d24 = matrix3d2.m02;
        double d25 = d10 * d24;
        double d26 = matrix3d2.m12;
        double d27 = d25 + (d12 * d26);
        double d28 = matrix3d2.m22;
        double d29 = d27 + (d15 * d28);
        double d30 = matrix3d.m10;
        double d31 = matrix3d.m11;
        double d32 = (d30 * d11) + (d31 * d13);
        double d33 = matrix3d.m12;
        double d34 = (d30 * d18) + (d31 * d20) + (d33 * d22);
        double d35 = (d30 * d24) + (d31 * d26) + (d33 * d28);
        double d36 = matrix3d.m20;
        double d37 = matrix3d.m21;
        double d38 = matrix3d.m22;
        compute_svd(new double[]{d17, d23, d29, d32 + (d33 * d16), d34, d35, (d36 * d11) + (d13 * d37) + (d16 * d38), (d36 * d18) + (d37 * d20) + (d38 * d22), (d36 * d24) + (d37 * d26) + (d38 * d28)}, new double[3], dArr);
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m10 = dArr[3];
        this.m11 = dArr[4];
        this.m12 = dArr[5];
        this.m20 = dArr[6];
        this.m21 = dArr[7];
        this.m22 = dArr[8];
    }

    public Matrix3d(Matrix3d matrix3d) {
        this.m00 = matrix3d.m00;
        this.m01 = matrix3d.m01;
        this.m02 = matrix3d.m02;
        this.m10 = matrix3d.m10;
        this.m11 = matrix3d.m11;
        this.m12 = matrix3d.m12;
        this.m20 = matrix3d.m20;
        this.m21 = matrix3d.m21;
        this.m22 = matrix3d.m22;
    }

    public final void setColumn(int i10, double[] dArr) {
        if (i10 == 0) {
            this.m00 = dArr[0];
            this.m10 = dArr[1];
            this.m20 = dArr[2];
        } else if (i10 == 1) {
            this.m01 = dArr[0];
            this.m11 = dArr[1];
            this.m21 = dArr[2];
        } else {
            if (i10 == 2) {
                this.m02 = dArr[0];
                this.m12 = dArr[1];
                this.m22 = dArr[2];
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d9"));
        }
    }

    public final void setRow(int i10, double[] dArr) {
        if (i10 == 0) {
            this.m00 = dArr[0];
            this.m01 = dArr[1];
            this.m02 = dArr[2];
        } else if (i10 == 1) {
            this.m10 = dArr[0];
            this.m11 = dArr[1];
            this.m12 = dArr[2];
        } else {
            if (i10 == 2) {
                this.m20 = dArr[0];
                this.m21 = dArr[1];
                this.m22 = dArr[2];
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3d6"));
        }
    }

    public final void mul(Matrix3d matrix3d, Matrix3d matrix3d2) {
        if (this != matrix3d && this != matrix3d2) {
            double d10 = matrix3d.m00 * matrix3d2.m00;
            double d11 = matrix3d.m01;
            double d12 = matrix3d2.m10;
            double d13 = matrix3d.m02;
            double d14 = matrix3d2.m20;
            this.m00 = d10 + (d11 * d12) + (d13 * d14);
            double d15 = matrix3d.m00;
            double d16 = matrix3d2.m01 * d15;
            double d17 = matrix3d2.m11;
            double d18 = d16 + (d11 * d17);
            double d19 = matrix3d2.m21;
            this.m01 = d18 + (d13 * d19);
            double d20 = d15 * matrix3d2.m02;
            double d21 = matrix3d.m01;
            double d22 = matrix3d2.m12;
            double d23 = d20 + (d21 * d22);
            double d24 = matrix3d2.m22;
            this.m02 = d23 + (d13 * d24);
            double d25 = matrix3d.m10;
            double d26 = matrix3d2.m00;
            double d27 = d25 * d26;
            double d28 = matrix3d.m11;
            double d29 = d27 + (d12 * d28);
            double d30 = matrix3d.m12;
            this.m10 = d29 + (d30 * d14);
            double d31 = matrix3d.m10;
            double d32 = matrix3d2.m01;
            this.m11 = (d31 * d32) + (d28 * d17) + (d30 * d19);
            double d33 = matrix3d2.m02;
            this.m12 = (d31 * d33) + (matrix3d.m11 * d22) + (d30 * d24);
            double d34 = matrix3d.m20 * d26;
            double d35 = matrix3d.m21;
            double d36 = d34 + (matrix3d2.m10 * d35);
            double d37 = matrix3d.m22;
            this.m20 = d36 + (d37 * d14);
            double d38 = matrix3d.m20;
            this.m21 = (d32 * d38) + (d35 * matrix3d2.m11) + (d37 * d19);
            this.m22 = (d38 * d33) + (matrix3d.m21 * matrix3d2.m12) + (d37 * d24);
            return;
        }
        double d39 = matrix3d.m00;
        double d40 = matrix3d2.m00;
        double d41 = matrix3d.m01;
        double d42 = matrix3d2.m10;
        double d43 = (d39 * d40) + (d41 * d42);
        double d44 = matrix3d.m02;
        double d45 = matrix3d2.m20;
        double d46 = d43 + (d44 * d45);
        double d47 = matrix3d2.m01;
        double d48 = d39 * d47;
        double d49 = matrix3d2.m11;
        double d50 = d48 + (d41 * d49);
        double d51 = matrix3d2.m21;
        double d52 = d50 + (d44 * d51);
        double d53 = matrix3d2.m02;
        double d54 = d39 * d53;
        double d55 = matrix3d2.m12;
        double d56 = d54 + (d41 * d55);
        double d57 = matrix3d2.m22;
        double d58 = d56 + (d44 * d57);
        double d59 = matrix3d.m10;
        double d60 = matrix3d.m11;
        double d61 = matrix3d.m12;
        double d62 = (d59 * d40) + (d60 * d42) + (d61 * d45);
        double d63 = (d59 * d47) + (d60 * d49) + (d61 * d51);
        double d64 = (d59 * d53) + (d60 * d55) + (d61 * d57);
        double d65 = matrix3d.m20;
        double d66 = matrix3d.m21;
        double d67 = (d65 * d40) + (d42 * d66);
        double d68 = matrix3d.m22;
        this.m00 = d46;
        this.m01 = d52;
        this.m02 = d58;
        this.m10 = d62;
        this.m11 = d63;
        this.m12 = d64;
        this.m20 = d67 + (d68 * d45);
        this.m21 = (d47 * d65) + (d49 * d66) + (d68 * d51);
        this.m22 = (d65 * d53) + (d66 * d55) + (d68 * d57);
    }

    public final void add(Matrix3d matrix3d) {
        this.m00 += matrix3d.m00;
        this.m01 += matrix3d.m01;
        this.m02 += matrix3d.m02;
        this.m10 += matrix3d.m10;
        this.m11 += matrix3d.m11;
        this.m12 += matrix3d.m12;
        this.m20 += matrix3d.m20;
        this.m21 += matrix3d.m21;
        this.m22 += matrix3d.m22;
    }

    public Matrix3d(Matrix3f matrix3f) {
        this.m00 = matrix3f.m00;
        this.m01 = matrix3f.m01;
        this.m02 = matrix3f.m02;
        this.m10 = matrix3f.m10;
        this.m11 = matrix3f.m11;
        this.m12 = matrix3f.m12;
        this.m20 = matrix3f.m20;
        this.m21 = matrix3f.m21;
        this.m22 = matrix3f.m22;
    }

    public final void set(Quat4f quat4f) {
        float f10 = quat4f.f92852y;
        float f11 = quat4f.f92853z;
        this.m00 = (1.0d - ((f10 * 2.0d) * f10)) - ((f11 * 2.0d) * f11);
        float f12 = quat4f.f92851x;
        float f13 = quat4f.f92850w;
        this.m10 = ((f12 * f10) + (f13 * f11)) * 2.0d;
        this.m20 = ((f12 * f11) - (f13 * f10)) * 2.0d;
        this.m01 = ((f12 * f10) - (f13 * f11)) * 2.0d;
        this.m11 = (1.0d - ((f12 * 2.0d) * f12)) - ((f11 * 2.0d) * f11);
        this.m21 = ((f10 * f11) + (f13 * f12)) * 2.0d;
        this.m02 = ((f12 * f11) + (f13 * f10)) * 2.0d;
        this.m12 = ((f11 * f10) - (f13 * f12)) * 2.0d;
        this.m22 = (1.0d - ((f12 * 2.0d) * f12)) - ((f10 * 2.0d) * f10);
    }

    public Matrix3d() {
        this.m00 = 0.0d;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = 0.0d;
        this.m12 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = 0.0d;
    }

    public final void set(AxisAngle4f axisAngle4f) {
        float f10 = axisAngle4f.f92821x;
        float f11 = axisAngle4f.f92822y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = axisAngle4f.f92823z;
        double sqrt = Math.sqrt(f12 + (f13 * f13));
        if (sqrt < EPS) {
            this.m00 = 1.0d;
            this.m01 = 0.0d;
            this.m02 = 0.0d;
            this.m10 = 0.0d;
            this.m11 = 1.0d;
            this.m12 = 0.0d;
            this.m20 = 0.0d;
            this.m21 = 0.0d;
            this.m22 = 1.0d;
            return;
        }
        double d10 = 1.0d / sqrt;
        double d11 = axisAngle4f.f92821x * d10;
        double d12 = axisAngle4f.f92822y * d10;
        double d13 = axisAngle4f.f92823z * d10;
        double sin = Math.sin(axisAngle4f.angle);
        double cos = Math.cos(axisAngle4f.angle);
        double d14 = 1.0d - cos;
        double d15 = d11 * d13;
        double d16 = d12 * d13;
        this.m00 = (d14 * d11 * d11) + cos;
        double d17 = d11 * d12 * d14;
        double d18 = sin * d13;
        this.m01 = d17 - d18;
        double d19 = d15 * d14;
        double d20 = sin * d12;
        this.m02 = d19 + d20;
        this.m10 = d17 + d18;
        this.m11 = (d14 * d12 * d12) + cos;
        double d21 = d16 * d14;
        double d22 = sin * d11;
        this.m12 = d21 - d22;
        this.m20 = d19 - d20;
        this.m21 = d21 + d22;
        this.m22 = (d14 * d13 * d13) + cos;
    }

    public final void set(Matrix3f matrix3f) {
        this.m00 = matrix3f.m00;
        this.m01 = matrix3f.m01;
        this.m02 = matrix3f.m02;
        this.m10 = matrix3f.m10;
        this.m11 = matrix3f.m11;
        this.m12 = matrix3f.m12;
        this.m20 = matrix3f.m20;
        this.m21 = matrix3f.m21;
        this.m22 = matrix3f.m22;
    }

    public final void set(Matrix3d matrix3d) {
        this.m00 = matrix3d.m00;
        this.m01 = matrix3d.m01;
        this.m02 = matrix3d.m02;
        this.m10 = matrix3d.m10;
        this.m11 = matrix3d.m11;
        this.m12 = matrix3d.m12;
        this.m20 = matrix3d.m20;
        this.m21 = matrix3d.m21;
        this.m22 = matrix3d.m22;
    }

    public final void set(double[] dArr) {
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m10 = dArr[3];
        this.m11 = dArr[4];
        this.m12 = dArr[5];
        this.m20 = dArr[6];
        this.m21 = dArr[7];
        this.m22 = dArr[8];
    }

    public final void set(double d10) {
        this.m00 = d10;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = d10;
        this.m12 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = d10;
    }
}
