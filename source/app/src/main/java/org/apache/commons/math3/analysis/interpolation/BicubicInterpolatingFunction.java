package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

public class BicubicInterpolatingFunction implements BivariateFunction {
    private static final double[][] AINV = {new double[]{1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d}, new double[]{-3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d}, new double[]{9.0d, -9.0d, -9.0d, 9.0d, 6.0d, 3.0d, -6.0d, -3.0d, 6.0d, -6.0d, 3.0d, -3.0d, 4.0d, 2.0d, 2.0d, 1.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -3.0d, -3.0d, 3.0d, 3.0d, -4.0d, 4.0d, -2.0d, 2.0d, -2.0d, -2.0d, -1.0d, -1.0d}, new double[]{2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -4.0d, -2.0d, 4.0d, 2.0d, -3.0d, 3.0d, -3.0d, 3.0d, -2.0d, -1.0d, -2.0d, -1.0d}, new double[]{4.0d, -4.0d, -4.0d, 4.0d, 2.0d, 2.0d, -2.0d, -2.0d, 2.0d, -2.0d, 2.0d, -2.0d, 1.0d, 1.0d, 1.0d, 1.0d}};
    private static final int NUM_COEFF = 16;
    private final BicubicFunction[][] splines;
    private final double[] xval;
    private final double[] yval;

    public BicubicInterpolatingFunction(double[] dArr, double[] dArr2, double[][] dArr3, double[][] dArr4, double[][] dArr5, double[][] dArr6) throws DimensionMismatchException, NoDataException, NonMonotonicSequenceException {
        int i10 = 0;
        char c10 = 1;
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length == 0 || length2 == 0 || dArr3.length == 0 || dArr3[0].length == 0) {
            throw new NoDataException();
        }
        if (length != dArr3.length) {
            throw new DimensionMismatchException(length, dArr3.length);
        }
        if (length != dArr4.length) {
            throw new DimensionMismatchException(length, dArr4.length);
        }
        if (length != dArr5.length) {
            throw new DimensionMismatchException(length, dArr5.length);
        }
        if (length != dArr6.length) {
            throw new DimensionMismatchException(length, dArr6.length);
        }
        MathArrays.checkOrder(dArr);
        MathArrays.checkOrder(dArr2);
        this.xval = (double[]) dArr.clone();
        this.yval = (double[]) dArr2.clone();
        int i11 = length - 1;
        int i12 = length2 - 1;
        this.splines = (BicubicFunction[][]) Array.newInstance((Class<?>) BicubicFunction.class, i11, i12);
        int i13 = 0;
        while (i13 < i11) {
            if (dArr3[i13].length != length2) {
                throw new DimensionMismatchException(dArr3[i13].length, length2);
            }
            if (dArr4[i13].length != length2) {
                throw new DimensionMismatchException(dArr4[i13].length, length2);
            }
            if (dArr5[i13].length != length2) {
                throw new DimensionMismatchException(dArr5[i13].length, length2);
            }
            if (dArr6[i13].length != length2) {
                throw new DimensionMismatchException(dArr6[i13].length, length2);
            }
            int i14 = i13 + 1;
            double[] dArr7 = this.xval;
            double d10 = dArr7[i14] - dArr7[i13];
            int i15 = i10;
            while (i15 < i12) {
                int i16 = i15 + 1;
                double[] dArr8 = this.yval;
                double d11 = dArr8[i16] - dArr8[i15];
                double d12 = d10 * d11;
                double[] dArr9 = dArr3[i13];
                double d13 = dArr9[i15];
                double[] dArr10 = dArr3[i14];
                double d14 = dArr10[i15];
                double d15 = dArr9[i16];
                double d16 = dArr10[i16];
                double[] dArr11 = dArr4[i13];
                double d17 = dArr11[i15] * d10;
                double[] dArr12 = dArr4[i14];
                double d18 = dArr12[i15] * d10;
                double d19 = dArr11[i16] * d10;
                double d20 = dArr12[i16] * d10;
                double[] dArr13 = dArr5[i13];
                double d21 = dArr13[i15] * d11;
                double[] dArr14 = dArr5[i14];
                double d22 = dArr14[i15] * d11;
                double d23 = dArr13[i16] * d11;
                double d24 = dArr14[i16] * d11;
                double[] dArr15 = dArr6[i13];
                double d25 = dArr15[i15] * d12;
                double[] dArr16 = dArr6[i14];
                double d26 = dArr16[i15] * d12;
                double d27 = dArr15[i16] * d12;
                double d28 = dArr16[i16] * d12;
                double[] dArr17 = new double[16];
                dArr17[i10] = d13;
                dArr17[c10] = d14;
                dArr17[2] = d15;
                dArr17[3] = d16;
                dArr17[4] = d17;
                dArr17[5] = d18;
                dArr17[6] = d19;
                dArr17[7] = d20;
                dArr17[8] = d21;
                dArr17[9] = d22;
                dArr17[10] = d23;
                dArr17[11] = d24;
                dArr17[12] = d25;
                dArr17[13] = d26;
                dArr17[14] = d27;
                dArr17[15] = d28;
                this.splines[i13][i15] = new BicubicFunction(computeSplineCoefficients(dArr17));
                i15 = i16;
                i10 = 0;
                c10 = 1;
            }
            i13 = i14;
        }
    }

    private double[] computeSplineCoefficients(double[] dArr) {
        double[] dArr2 = new double[16];
        for (int i10 = 0; i10 < 16; i10++) {
            double[] dArr3 = AINV[i10];
            double d10 = 0.0d;
            for (int i11 = 0; i11 < 16; i11++) {
                d10 += dArr3[i11] * dArr[i11];
            }
            dArr2[i10] = d10;
        }
        return dArr2;
    }

    private int searchIndex(double d10, double[] dArr) {
        int binarySearch = Arrays.binarySearch(dArr, d10);
        if (binarySearch == -1 || binarySearch == (-dArr.length) - 1) {
            throw new OutOfRangeException(Double.valueOf(d10), Double.valueOf(dArr[0]), Double.valueOf(dArr[dArr.length - 1]));
        }
        if (binarySearch < 0) {
            return (-binarySearch) - 2;
        }
        int length = dArr.length;
        return binarySearch == length + (-1) ? length - 2 : binarySearch;
    }

    public boolean isValidPoint(double d10, double d11) {
        double[] dArr = this.xval;
        if (d10 >= dArr[0] && d10 <= dArr[dArr.length - 1]) {
            double[] dArr2 = this.yval;
            if (d11 >= dArr2[0] && d11 <= dArr2[dArr2.length - 1]) {
                return true;
            }
        }
        return false;
    }

    @Override
    public double value(double d10, double d11) throws OutOfRangeException {
        int searchIndex = searchIndex(d10, this.xval);
        int searchIndex2 = searchIndex(d11, this.yval);
        double[] dArr = this.xval;
        double d12 = dArr[searchIndex];
        double d13 = (d10 - d12) / (dArr[searchIndex + 1] - d12);
        double[] dArr2 = this.yval;
        double d14 = dArr2[searchIndex2];
        return this.splines[searchIndex][searchIndex2].value(d13, (d11 - d14) / (dArr2[searchIndex2 + 1] - d14));
    }
}
