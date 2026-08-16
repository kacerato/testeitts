package org.apache.commons.math3.util;

import java.io.PrintStream;
import org.apache.commons.math3.exception.DimensionMismatchException;

class FastMathCalc {
    private static final long HEX_40000000 = 1073741824;
    private static final String TABLE_END_DECL = "    };";
    private static final String TABLE_START_DECL = "    {";
    private static final double[] FACT = {1.0d, 1.0d, 2.0d, 6.0d, 24.0d, 120.0d, 720.0d, 5040.0d, 40320.0d, 362880.0d, 3628800.0d, 3.99168E7d, 4.790016E8d, 6.2270208E9d, 8.71782912E10d, 1.307674368E12d, 2.0922789888E13d, 3.55687428096E14d, 6.402373705728E15d, 1.21645100408832E17d};
    private static final double[][] LN_SPLIT_COEF = {new double[]{2.0d, 0.0d}, new double[]{0.6666666269302368d, 3.9736429850260626E-8d}, new double[]{0.3999999761581421d, 2.3841857910019882E-8d}, new double[]{0.2857142686843872d, 1.7029898543501842E-8d}, new double[]{0.2222222089767456d, 1.3245471311735498E-8d}, new double[]{0.1818181574344635d, 2.4384203044354907E-8d}, new double[]{0.1538461446762085d, 9.140260083262505E-9d}, new double[]{0.13333332538604736d, 9.220590270857665E-9d}, new double[]{0.11764700710773468d, 1.2393345855018391E-8d}, new double[]{0.10526403784751892d, 8.251545029714408E-9d}, new double[]{0.0952233225107193d, 1.2675934823758863E-8d}, new double[]{0.08713622391223907d, 1.1430250008909141E-8d}, new double[]{0.07842259109020233d, 2.404307984052299E-9d}, new double[]{0.08371849358081818d, 1.176342548272881E-8d}, new double[]{0.030589580535888672d, 1.2958646899018938E-9d}, new double[]{0.14982303977012634d, 1.225743062930824E-8d}};

    private FastMathCalc() {
    }

    private static void buildSinCosTables(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, int i10, double[] dArr5, double[] dArr6) {
        int i11;
        double[] dArr7 = new double[2];
        int i12 = 0;
        while (true) {
            if (i12 >= 7) {
                break;
            }
            double d10 = i12 / 8.0d;
            slowSin(d10, dArr7);
            dArr[i12] = dArr7[0];
            dArr2[i12] = dArr7[1];
            slowCos(d10, dArr7);
            dArr3[i12] = dArr7[0];
            dArr4[i12] = dArr7[1];
            i12++;
        }
        for (i11 = 7; i11 < i10; i11++) {
            double[] dArr8 = new double[2];
            double[] dArr9 = new double[2];
            double[] dArr10 = new double[2];
            double[] dArr11 = new double[2];
            if ((i11 & 1) == 0) {
                int i13 = i11 / 2;
                dArr8[0] = dArr[i13];
                dArr8[1] = dArr2[i13];
                dArr9[0] = dArr3[i13];
                dArr9[1] = dArr4[i13];
                splitMult(dArr8, dArr9, dArr7);
                dArr[i11] = dArr7[0] * 2.0d;
                dArr2[i11] = dArr7[1] * 2.0d;
                splitMult(dArr9, dArr9, dArr10);
                splitMult(dArr8, dArr8, dArr11);
                dArr11[0] = -dArr11[0];
                dArr11[1] = -dArr11[1];
                splitAdd(dArr10, dArr11, dArr7);
                dArr3[i11] = dArr7[0];
                dArr4[i11] = dArr7[1];
            } else {
                int i14 = i11 / 2;
                dArr8[0] = dArr[i14];
                dArr8[1] = dArr2[i14];
                dArr9[0] = dArr3[i14];
                dArr9[1] = dArr4[i14];
                int i15 = i14 + 1;
                dArr10[0] = dArr[i15];
                dArr10[1] = dArr2[i15];
                double[] dArr12 = {dArr3[i15], dArr4[i15]};
                splitMult(dArr8, dArr12, dArr11);
                splitMult(dArr9, dArr10, dArr7);
                splitAdd(dArr7, dArr11, dArr7);
                dArr[i11] = dArr7[0];
                dArr2[i11] = dArr7[1];
                splitMult(dArr9, dArr12, dArr7);
                splitMult(dArr8, dArr10, dArr11);
                dArr11[0] = -dArr11[0];
                dArr11[1] = -dArr11[1];
                splitAdd(dArr7, dArr11, dArr7);
                dArr3[i11] = dArr7[0];
                dArr4[i11] = dArr7[1];
            }
        }
        for (int i16 = 0; i16 < i10; i16++) {
            double[] dArr13 = new double[2];
            double[] dArr14 = {dArr3[i16], dArr4[i16]};
            splitReciprocal(dArr14, dArr13);
            splitMult(new double[]{dArr[i16], dArr2[i16]}, dArr13, dArr14);
            dArr5[i16] = dArr14[0];
            dArr6[i16] = dArr14[1];
        }
    }

    private static void checkLen(int i10, int i11) throws DimensionMismatchException {
        if (i10 != i11) {
            throw new DimensionMismatchException(i11, i10);
        }
    }

    public static double expint(int i10, double[] dArr) {
        double[] dArr2 = new double[2];
        double[] dArr3 = new double[2];
        double[] dArr4 = {2.718281828459045d, 1.4456468917292502E-16d};
        split(1.0d, dArr3);
        while (i10 > 0) {
            if ((i10 & 1) != 0) {
                quadMult(dArr3, dArr4, dArr2);
                dArr3[0] = dArr2[0];
                dArr3[1] = dArr2[1];
            }
            quadMult(dArr4, dArr4, dArr2);
            dArr4[0] = dArr2[0];
            dArr4[1] = dArr2[1];
            i10 >>= 1;
        }
        if (dArr != null) {
            dArr[0] = dArr3[0];
            dArr[1] = dArr3[1];
            resplit(dArr);
        }
        return dArr3[0] + dArr3[1];
    }

    public static String format(double d10) {
        if (d10 != d10) {
            return "Double.NaN,";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(d10 >= 0.0d ? "+" : "");
        sb2.append(Double.toString(d10));
        sb2.append("d,");
        return sb2.toString();
    }

    public static void printarray(PrintStream printStream, String str, int i10, double[][] dArr) {
        printStream.println(str);
        checkLen(i10, dArr.length);
        printStream.println("    { ");
        int length = dArr.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            double[] dArr2 = dArr[i11];
            printStream.print("        {");
            for (double d10 : dArr2) {
                printStream.printf("%-25.25s", format(d10));
            }
            printStream.println("}, // " + i12);
            i11++;
            i12++;
        }
        printStream.println(TABLE_END_DECL);
    }

    private static void quadMult(double[] dArr, double[] dArr2, double[] dArr3) {
        double[] dArr4 = new double[2];
        double[] dArr5 = new double[2];
        double[] dArr6 = new double[2];
        split(dArr[0], dArr4);
        split(dArr2[0], dArr5);
        splitMult(dArr4, dArr5, dArr6);
        dArr3[0] = dArr6[0];
        dArr3[1] = dArr6[1];
        split(dArr2[1], dArr5);
        splitMult(dArr4, dArr5, dArr6);
        double d10 = dArr3[0];
        double d11 = dArr6[0];
        double d12 = d10 + d11;
        double d13 = dArr3[1] - ((d12 - d10) - d11);
        dArr3[1] = d13;
        dArr3[0] = d12;
        double d14 = dArr6[1];
        double d15 = d12 + d14;
        dArr3[1] = d13 - ((d15 - d12) - d14);
        dArr3[0] = d15;
        split(dArr[1], dArr4);
        split(dArr2[0], dArr5);
        splitMult(dArr4, dArr5, dArr6);
        double d16 = dArr3[0];
        double d17 = dArr6[0];
        double d18 = d16 + d17;
        double d19 = dArr3[1] - ((d18 - d16) - d17);
        dArr3[1] = d19;
        dArr3[0] = d18;
        double d20 = dArr6[1];
        double d21 = d18 + d20;
        dArr3[1] = d19 - ((d21 - d18) - d20);
        dArr3[0] = d21;
        split(dArr[1], dArr4);
        split(dArr2[1], dArr5);
        splitMult(dArr4, dArr5, dArr6);
        double d22 = dArr3[0];
        double d23 = dArr6[0];
        double d24 = d22 + d23;
        double d25 = dArr3[1] - ((d24 - d22) - d23);
        dArr3[1] = d25;
        dArr3[0] = d24;
        double d26 = dArr6[1];
        double d27 = d24 + d26;
        dArr3[1] = d25 - ((d27 - d24) - d26);
        dArr3[0] = d27;
    }

    private static void resplit(double[] dArr) {
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = d10 + d11;
        double d13 = -((d12 - d10) - d11);
        if (d12 >= 8.0E298d || d12 <= -8.0E298d) {
            double d14 = (((9.313225746154785E-10d * d12) + d12) - d12) * 1.073741824E9d;
            dArr[0] = d14;
            dArr[1] = (d12 - d14) + d13;
        } else {
            double d15 = 1.073741824E9d * d12;
            double d16 = (d12 + d15) - d15;
            dArr[0] = d16;
            dArr[1] = (d12 - d16) + d13;
        }
    }

    public static double slowCos(double d10, double[] dArr) {
        double[] dArr2 = new double[2];
        double[] dArr3 = new double[2];
        double[] dArr4 = new double[2];
        split(d10, dArr2);
        double[] dArr5 = {0.0d, 0.0d};
        for (int length = FACT.length - 1; length >= 0; length--) {
            splitMult(dArr2, dArr5, dArr4);
            dArr5[0] = dArr4[0];
            dArr5[1] = dArr4[1];
            if ((length & 1) == 0) {
                split(FACT[length], dArr4);
                splitReciprocal(dArr4, dArr3);
                if ((length & 2) != 0) {
                    dArr3[0] = -dArr3[0];
                    dArr3[1] = -dArr3[1];
                }
                splitAdd(dArr5, dArr3, dArr4);
                dArr5[0] = dArr4[0];
                dArr5[1] = dArr4[1];
            }
        }
        if (dArr != null) {
            dArr[0] = dArr5[0];
            dArr[1] = dArr5[1];
        }
        return dArr5[0] + dArr5[1];
    }

    public static double[] slowLog(double d10) {
        double[] dArr = new double[2];
        double[] dArr2 = new double[2];
        split(d10, r1);
        double[] dArr3 = {dArr3[0] + 1.0d};
        resplit(dArr3);
        splitReciprocal(dArr3, dArr2);
        dArr3[0] = dArr3[0] - 2.0d;
        resplit(dArr3);
        splitMult(dArr3, dArr2, r3);
        dArr3[0] = r3[0];
        dArr3[1] = r3[1];
        splitMult(dArr3, dArr3, dArr);
        double[][] dArr4 = LN_SPLIT_COEF;
        double[] dArr5 = {dArr4[dArr4.length - 1][0], dArr4[dArr4.length - 1][1]};
        for (int length = dArr4.length - 2; length >= 0; length--) {
            splitMult(dArr5, dArr, dArr2);
            dArr5[0] = dArr2[0];
            dArr5[1] = dArr2[1];
            splitAdd(dArr5, LN_SPLIT_COEF[length], dArr2);
            dArr5[0] = dArr2[0];
            dArr5[1] = dArr2[1];
        }
        splitMult(dArr5, dArr3, dArr2);
        dArr5[0] = dArr2[0];
        dArr5[1] = dArr2[1];
        return dArr5;
    }

    public static double slowSin(double d10, double[] dArr) {
        double[] dArr2 = new double[2];
        double[] dArr3 = new double[2];
        double[] dArr4 = new double[2];
        split(d10, dArr2);
        double[] dArr5 = {0.0d, 0.0d};
        for (int length = FACT.length - 1; length >= 0; length--) {
            splitMult(dArr2, dArr5, dArr4);
            dArr5[0] = dArr4[0];
            dArr5[1] = dArr4[1];
            if ((length & 1) != 0) {
                split(FACT[length], dArr4);
                splitReciprocal(dArr4, dArr3);
                if ((length & 2) != 0) {
                    dArr3[0] = -dArr3[0];
                    dArr3[1] = -dArr3[1];
                }
                splitAdd(dArr5, dArr3, dArr4);
                dArr5[0] = dArr4[0];
                dArr5[1] = dArr4[1];
            }
        }
        if (dArr != null) {
            dArr[0] = dArr5[0];
            dArr[1] = dArr5[1];
        }
        return dArr5[0] + dArr5[1];
    }

    public static double slowexp(double d10, double[] dArr) {
        double[] dArr2 = new double[2];
        double[] dArr3 = new double[2];
        double[] dArr4 = new double[2];
        split(d10, dArr2);
        double[] dArr5 = {0.0d, 0.0d};
        for (int length = FACT.length - 1; length >= 0; length--) {
            splitMult(dArr2, dArr5, dArr4);
            dArr5[0] = dArr4[0];
            dArr5[1] = dArr4[1];
            split(FACT[length], dArr4);
            splitReciprocal(dArr4, dArr3);
            splitAdd(dArr5, dArr3, dArr4);
            dArr5[0] = dArr4[0];
            dArr5[1] = dArr4[1];
        }
        if (dArr != null) {
            dArr[0] = dArr5[0];
            dArr[1] = dArr5[1];
        }
        return dArr5[0] + dArr5[1];
    }

    private static void split(double d10, double[] dArr) {
        if (d10 >= 8.0E298d || d10 <= -8.0E298d) {
            double d11 = (((9.313225746154785E-10d * d10) + d10) - d10) * 1.073741824E9d;
            dArr[0] = d11;
            dArr[1] = d10 - d11;
        } else {
            double d12 = 1.073741824E9d * d10;
            double d13 = (d10 + d12) - d12;
            dArr[0] = d13;
            dArr[1] = d10 - d13;
        }
    }

    private static void splitAdd(double[] dArr, double[] dArr2, double[] dArr3) {
        dArr3[0] = dArr[0] + dArr2[0];
        dArr3[1] = dArr[1] + dArr2[1];
        resplit(dArr3);
    }

    private static void splitMult(double[] dArr, double[] dArr2, double[] dArr3) {
        dArr3[0] = dArr[0] * dArr2[0];
        double d10 = dArr[0];
        double d11 = dArr2[1];
        double d12 = dArr[1];
        dArr3[1] = (d10 * d11) + (dArr2[0] * d12) + (d12 * d11);
        resplit(dArr3);
    }

    public static void splitReciprocal(double[] dArr, double[] dArr2) {
        if (dArr[0] == 0.0d) {
            dArr[0] = dArr[1];
            dArr[1] = 0.0d;
        }
        dArr2[0] = 0.9999997615814209d / dArr[0];
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = ((2.384185791015625E-7d * d10) - (0.9999997615814209d * d11)) / ((d10 * d10) + (d10 * d11));
        dArr2[1] = d12;
        if (d12 != d12) {
            dArr2[1] = 0.0d;
        }
        resplit(dArr2);
        for (int i10 = 0; i10 < 2; i10++) {
            double d13 = dArr2[0];
            double d14 = dArr[0];
            double d15 = dArr[1];
            double d16 = dArr2[1];
            dArr2[1] = d16 + (((((1.0d - (d13 * d14)) - (d13 * d15)) - (d14 * d16)) - (d15 * d16)) * (d13 + d16));
        }
    }

    public static void printarray(PrintStream printStream, String str, int i10, double[] dArr) {
        printStream.println(str + "=");
        checkLen(i10, dArr.length);
        printStream.println(TABLE_START_DECL);
        for (double d10 : dArr) {
            printStream.printf("        %s%n", format(d10));
        }
        printStream.println(TABLE_END_DECL);
    }
}
