package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
public class BicubicSplineInterpolatingFunction implements BivariateFunction {
    private static final double[][] AINV = {new double[]{1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d}, new double[]{-3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d}, new double[]{9.0d, -9.0d, -9.0d, 9.0d, 6.0d, 3.0d, -6.0d, -3.0d, 6.0d, -6.0d, 3.0d, -3.0d, 4.0d, 2.0d, 2.0d, 1.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -3.0d, -3.0d, 3.0d, 3.0d, -4.0d, 4.0d, -2.0d, 2.0d, -2.0d, -2.0d, -1.0d, -1.0d}, new double[]{2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -4.0d, -2.0d, 4.0d, 2.0d, -3.0d, 3.0d, -3.0d, 3.0d, -2.0d, -1.0d, -2.0d, -1.0d}, new double[]{4.0d, -4.0d, -4.0d, 4.0d, 2.0d, 2.0d, -2.0d, -2.0d, 2.0d, -2.0d, 2.0d, -2.0d, 1.0d, 1.0d, 1.0d, 1.0d}};
    private static final int NUM_COEFF = 16;
    private final BivariateFunction[][][] partialDerivatives;
    private final BicubicSplineFunction[][] splines;
    private final double[] xval;
    private final double[] yval;

    public BicubicSplineInterpolatingFunction(double[] dArr, double[] dArr2, double[][] dArr3, double[][] dArr4, double[][] dArr5, double[][] dArr6) throws DimensionMismatchException, NoDataException, NonMonotonicSequenceException {
        this(dArr, dArr2, dArr3, dArr4, dArr5, dArr6, false);
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

    private double partialDerivative(int i10, double d10, double d11) throws OutOfRangeException {
        int searchIndex = searchIndex(d10, this.xval);
        int searchIndex2 = searchIndex(d11, this.yval);
        double[] dArr = this.xval;
        double d12 = dArr[searchIndex];
        double d13 = (d10 - d12) / (dArr[searchIndex + 1] - d12);
        double[] dArr2 = this.yval;
        double d14 = dArr2[searchIndex2];
        return this.partialDerivatives[i10][searchIndex][searchIndex2].value(d13, (d11 - d14) / (dArr2[searchIndex2 + 1] - d14));
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

    public double partialDerivativeX(double d10, double d11) throws OutOfRangeException {
        return partialDerivative(0, d10, d11);
    }

    public double partialDerivativeXX(double d10, double d11) throws OutOfRangeException {
        return partialDerivative(2, d10, d11);
    }

    public double partialDerivativeXY(double d10, double d11) throws OutOfRangeException {
        return partialDerivative(4, d10, d11);
    }

    public double partialDerivativeY(double d10, double d11) throws OutOfRangeException {
        return partialDerivative(1, d10, d11);
    }

    public double partialDerivativeYY(double d10, double d11) throws OutOfRangeException {
        return partialDerivative(3, d10, d11);
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

    public BicubicSplineInterpolatingFunction(double[] dArr, double[] dArr2, double[][] dArr3, double[][] dArr4, double[][] dArr5, double[][] dArr6, boolean z10) throws DimensionMismatchException, NoDataException, NonMonotonicSequenceException {
        int i10 = 0;
        char c10 = 1;
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length != 0 && length2 != 0 && dArr3.length != 0 && dArr3[0].length != 0) {
            if (length == dArr3.length) {
                if (length == dArr4.length) {
                    if (length == dArr5.length) {
                        if (length == dArr6.length) {
                            MathArrays.checkOrder(dArr);
                            MathArrays.checkOrder(dArr2);
                            this.xval = (double[]) dArr.clone();
                            this.yval = (double[]) dArr2.clone();
                            int i11 = length - 1;
                            int i12 = length2 - 1;
                            this.splines = (BicubicSplineFunction[][]) Array.newInstance((Class<?>) BicubicSplineFunction.class, i11, i12);
                            int i13 = 0;
                            while (i13 < i11) {
                                if (dArr3[i13].length == length2) {
                                    if (dArr4[i13].length == length2) {
                                        if (dArr5[i13].length == length2) {
                                            if (dArr6[i13].length != length2) {
                                                throw new DimensionMismatchException(dArr6[i13].length, length2);
                                            }
                                            int i14 = i13 + 1;
                                            int i15 = i10;
                                            while (i15 < i12) {
                                                int i16 = i15 + 1;
                                                double[] dArr7 = dArr3[i13];
                                                double d10 = dArr7[i15];
                                                double[] dArr8 = dArr3[i14];
                                                double d11 = dArr8[i15];
                                                double d12 = dArr7[i16];
                                                double d13 = dArr8[i16];
                                                double[] dArr9 = dArr4[i13];
                                                double d14 = dArr9[i15];
                                                double[] dArr10 = dArr4[i14];
                                                double d15 = dArr10[i15];
                                                double d16 = dArr9[i16];
                                                double d17 = dArr10[i16];
                                                double[] dArr11 = dArr5[i13];
                                                double d18 = dArr11[i15];
                                                double[] dArr12 = dArr5[i14];
                                                double d19 = dArr12[i15];
                                                double d20 = dArr11[i16];
                                                double d21 = dArr12[i16];
                                                double[] dArr13 = dArr6[i13];
                                                double d22 = dArr13[i15];
                                                double[] dArr14 = dArr6[i14];
                                                double d23 = dArr14[i15];
                                                double d24 = dArr13[i16];
                                                double d25 = dArr14[i16];
                                                double[] dArr15 = new double[16];
                                                dArr15[i10] = d10;
                                                dArr15[c10] = d11;
                                                dArr15[2] = d12;
                                                dArr15[3] = d13;
                                                dArr15[4] = d14;
                                                dArr15[5] = d15;
                                                dArr15[6] = d16;
                                                dArr15[7] = d17;
                                                dArr15[8] = d18;
                                                dArr15[9] = d19;
                                                dArr15[10] = d20;
                                                dArr15[11] = d21;
                                                dArr15[12] = d22;
                                                dArr15[13] = d23;
                                                dArr15[14] = d24;
                                                dArr15[15] = d25;
                                                this.splines[i13][i15] = new BicubicSplineFunction(computeSplineCoefficients(dArr15), z10);
                                                i15 = i16;
                                                i10 = 0;
                                                c10 = 1;
                                            }
                                            i13 = i14;
                                        } else {
                                            throw new DimensionMismatchException(dArr5[i13].length, length2);
                                        }
                                    } else {
                                        throw new DimensionMismatchException(dArr4[i13].length, length2);
                                    }
                                } else {
                                    throw new DimensionMismatchException(dArr3[i13].length, length2);
                                }
                            }
                            if (!z10) {
                                this.partialDerivatives = null;
                                return;
                            }
                            this.partialDerivatives = (BivariateFunction[][][]) Array.newInstance((Class<?>) BivariateFunction.class, 5, i11, i12);
                            for (int i17 = 0; i17 < i11; i17++) {
                                for (int i18 = 0; i18 < i12; i18++) {
                                    BicubicSplineFunction bicubicSplineFunction = this.splines[i17][i18];
                                    this.partialDerivatives[0][i17][i18] = bicubicSplineFunction.partialDerivativeX();
                                    this.partialDerivatives[1][i17][i18] = bicubicSplineFunction.partialDerivativeY();
                                    this.partialDerivatives[2][i17][i18] = bicubicSplineFunction.partialDerivativeXX();
                                    this.partialDerivatives[3][i17][i18] = bicubicSplineFunction.partialDerivativeYY();
                                    this.partialDerivatives[4][i17][i18] = bicubicSplineFunction.partialDerivativeXY();
                                }
                            }
                            return;
                        }
                        throw new DimensionMismatchException(length, dArr6.length);
                    }
                    throw new DimensionMismatchException(length, dArr5.length);
                }
                throw new DimensionMismatchException(length, dArr4.length);
            }
            throw new DimensionMismatchException(length, dArr3.length);
        }
        throw new NoDataException();
    }
}
