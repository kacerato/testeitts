package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
public class TricubicSplineInterpolator implements TrivariateGridInterpolator {
    private int nextIndex(int i10, int i11) {
        int i12 = i10 + 1;
        return i12 < i11 ? i12 : i10;
    }

    private int previousIndex(int i10) {
        int i11 = i10 - 1;
        if (i11 >= 0) {
            return i11;
        }
        return 0;
    }

    @Override
    public TricubicSplineInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[] dArr3, double[][][] dArr4) throws NoDataException, NumberIsTooSmallException, DimensionMismatchException, NonMonotonicSequenceException {
        double[] dArr5 = dArr2;
        if (dArr.length != 0 && dArr5.length != 0 && dArr3.length != 0 && dArr4.length != 0) {
            if (dArr.length == dArr4.length) {
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                MathArrays.checkOrder(dArr3);
                int length = dArr.length;
                int length2 = dArr5.length;
                int length3 = dArr3.length;
                int i10 = 3;
                int i11 = 0;
                Class<Double> cls = Double.TYPE;
                double[][][] dArr6 = (double[][][]) Array.newInstance(cls, length3, length, length2);
                double[][][] dArr7 = (double[][][]) Array.newInstance(cls, length2, length3, length);
                int i12 = 0;
                while (i12 < length) {
                    if (dArr4[i12].length != length2) {
                        throw new DimensionMismatchException(dArr4[i12].length, length2);
                    }
                    for (int i13 = i11; i13 < length2; i13++) {
                        if (dArr4[i12][i13].length != length3) {
                            throw new DimensionMismatchException(dArr4[i12][i13].length, length3);
                        }
                        for (int i14 = 0; i14 < length3; i14++) {
                            double d10 = dArr4[i12][i13][i14];
                            dArr6[i14][i12][i13] = d10;
                            dArr7[i13][i14][i12] = d10;
                        }
                    }
                    i12++;
                    i11 = 0;
                }
                BicubicSplineInterpolator bicubicSplineInterpolator = new BicubicSplineInterpolator(true);
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr = new BicubicSplineInterpolatingFunction[length];
                for (int i15 = 0; i15 < length; i15++) {
                    bicubicSplineInterpolatingFunctionArr[i15] = bicubicSplineInterpolator.interpolate(dArr5, dArr3, dArr4[i15]);
                }
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr2 = new BicubicSplineInterpolatingFunction[length2];
                for (int i16 = 0; i16 < length2; i16++) {
                    bicubicSplineInterpolatingFunctionArr2[i16] = bicubicSplineInterpolator.interpolate(dArr3, dArr, dArr7[i16]);
                }
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr3 = new BicubicSplineInterpolatingFunction[length3];
                for (int i17 = 0; i17 < length3; i17++) {
                    bicubicSplineInterpolatingFunctionArr3[i17] = bicubicSplineInterpolator.interpolate(dArr, dArr5, dArr6[i17]);
                }
                Class<Double> cls2 = Double.TYPE;
                double[][][] dArr8 = (double[][][]) Array.newInstance(cls2, length, length2, length3);
                double[][][] dArr9 = (double[][][]) Array.newInstance(cls2, length, length2, length3);
                double[][][] dArr10 = (double[][][]) Array.newInstance(cls2, length, length2, length3);
                int i18 = 0;
                while (i18 < length3) {
                    BicubicSplineInterpolatingFunction bicubicSplineInterpolatingFunction = bicubicSplineInterpolatingFunctionArr3[i18];
                    int i19 = 0;
                    while (i19 < length) {
                        double[][][] dArr11 = dArr8;
                        double d11 = dArr[i19];
                        BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr4 = bicubicSplineInterpolatingFunctionArr3;
                        int i20 = 0;
                        while (i20 < length2) {
                            double d12 = dArr5[i20];
                            dArr11[i19][i20][i18] = bicubicSplineInterpolatingFunction.partialDerivativeX(d11, d12);
                            dArr9[i19][i20][i18] = bicubicSplineInterpolatingFunction.partialDerivativeY(d11, d12);
                            dArr10[i19][i20][i18] = bicubicSplineInterpolatingFunction.partialDerivativeXY(d11, d12);
                            i20++;
                            length = length;
                        }
                        i19++;
                        dArr8 = dArr11;
                        bicubicSplineInterpolatingFunctionArr3 = bicubicSplineInterpolatingFunctionArr4;
                    }
                    i18++;
                    i10 = 3;
                }
                int i21 = length;
                int i22 = i10;
                double[][][] dArr12 = dArr8;
                int[] iArr = new int[i22];
                iArr[2] = length3;
                iArr[1] = length2;
                iArr[0] = i21;
                Class<Double> cls3 = Double.TYPE;
                double[][][] dArr13 = (double[][][]) Array.newInstance(cls3, iArr);
                int[] iArr2 = new int[i22];
                iArr2[2] = length3;
                iArr2[1] = length2;
                iArr2[0] = i21;
                double[][][] dArr14 = (double[][][]) Array.newInstance(cls3, iArr2);
                int i23 = i21;
                int i24 = 0;
                while (i24 < i23) {
                    BicubicSplineInterpolatingFunction bicubicSplineInterpolatingFunction2 = bicubicSplineInterpolatingFunctionArr[i24];
                    int i25 = 0;
                    while (i25 < length2) {
                        BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr5 = bicubicSplineInterpolatingFunctionArr;
                        double d13 = dArr5[i25];
                        for (int i26 = 0; i26 < length3; i26++) {
                            double d14 = dArr3[i26];
                            dArr13[i24][i25][i26] = bicubicSplineInterpolatingFunction2.partialDerivativeY(d13, d14);
                            dArr14[i24][i25][i26] = bicubicSplineInterpolatingFunction2.partialDerivativeXY(d13, d14);
                        }
                        i25++;
                        dArr5 = dArr2;
                        bicubicSplineInterpolatingFunctionArr = bicubicSplineInterpolatingFunctionArr5;
                    }
                    i24++;
                    dArr5 = dArr2;
                }
                double[][][] dArr15 = (double[][][]) Array.newInstance(Double.TYPE, i23, length2, length3);
                for (int i27 = 0; i27 < length2; i27++) {
                    BicubicSplineInterpolatingFunction bicubicSplineInterpolatingFunction3 = bicubicSplineInterpolatingFunctionArr2[i27];
                    for (int i28 = 0; i28 < length3; i28++) {
                        double d15 = dArr3[i28];
                        int i29 = 0;
                        while (i29 < i23) {
                            dArr15[i29][i27][i28] = bicubicSplineInterpolatingFunction3.partialDerivativeXY(d15, dArr[i29]);
                            i29++;
                            bicubicSplineInterpolatingFunctionArr2 = bicubicSplineInterpolatingFunctionArr2;
                            dArr10 = dArr10;
                        }
                    }
                }
                double[][][] dArr16 = dArr10;
                int i30 = 0;
                double[][][] dArr17 = (double[][][]) Array.newInstance(Double.TYPE, i23, length2, length3);
                int i31 = 0;
                while (i31 < i23) {
                    int nextIndex = nextIndex(i31, i23);
                    int previousIndex = previousIndex(i31);
                    int i32 = i30;
                    while (i32 < length2) {
                        int nextIndex2 = nextIndex(i32, length2);
                        int previousIndex2 = previousIndex(i32);
                        while (i30 < length3) {
                            int nextIndex3 = nextIndex(i30, length3);
                            int previousIndex3 = previousIndex(i30);
                            double[] dArr18 = dArr17[i31][i32];
                            double[][] dArr19 = dArr4[nextIndex];
                            double[] dArr20 = dArr19[nextIndex2];
                            double d16 = dArr20[nextIndex3];
                            double[] dArr21 = dArr19[previousIndex2];
                            double d17 = d16 - dArr21[nextIndex3];
                            double[][] dArr22 = dArr4[previousIndex];
                            double[] dArr23 = dArr22[nextIndex2];
                            double d18 = d17 - dArr23[nextIndex3];
                            double[] dArr24 = dArr22[previousIndex2];
                            dArr18[i30] = (((((d18 + dArr24[nextIndex3]) - dArr20[previousIndex3]) + dArr21[previousIndex3]) + dArr23[previousIndex3]) - dArr24[previousIndex3]) / (((dArr[nextIndex] - dArr[previousIndex]) * (dArr2[nextIndex2] - dArr2[previousIndex2])) * (dArr3[nextIndex3] - dArr3[previousIndex3]));
                            i30++;
                            i23 = i23;
                        }
                        i32++;
                        i23 = i23;
                        i30 = 0;
                    }
                    i31++;
                    i23 = i23;
                    i30 = 0;
                }
                return new TricubicSplineInterpolatingFunction(dArr, dArr2, dArr3, dArr4, dArr12, dArr9, dArr13, dArr16, dArr15, dArr14, dArr17);
            }
            throw new DimensionMismatchException(dArr.length, dArr4.length);
        }
        throw new NoDataException();
    }
}
