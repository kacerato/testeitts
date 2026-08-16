package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

public class TricubicInterpolator implements TrivariateGridInterpolator {
    @Override
    public TricubicInterpolatingFunction interpolate(final double[] dArr, final double[] dArr2, final double[] dArr3, double[][][] dArr4) throws NoDataException, NumberIsTooSmallException, DimensionMismatchException, NonMonotonicSequenceException {
        double[] dArr5 = dArr;
        double[] dArr6 = dArr2;
        if (dArr5.length != 0 && dArr6.length != 0 && dArr3.length != 0 && dArr4.length != 0) {
            if (dArr5.length == dArr4.length) {
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                MathArrays.checkOrder(dArr3);
                int length = dArr5.length;
                int length2 = dArr6.length;
                int length3 = dArr3.length;
                int i10 = 1;
                Class<Double> cls = Double.TYPE;
                double[][][] dArr7 = (double[][][]) Array.newInstance(cls, length, length2, length3);
                double[][][] dArr8 = (double[][][]) Array.newInstance(cls, length, length2, length3);
                double[][][] dArr9 = (double[][][]) Array.newInstance(cls, length, length2, length3);
                double[][][] dArr10 = (double[][][]) Array.newInstance(cls, length, length2, length3);
                double[][][] dArr11 = (double[][][]) Array.newInstance(cls, length, length2, length3);
                double[][][] dArr12 = (double[][][]) Array.newInstance(cls, length, length2, length3);
                double[][][] dArr13 = (double[][][]) Array.newInstance(cls, length, length2, length3);
                int i11 = 1;
                while (i11 < length - 1) {
                    if (dArr6.length == dArr4[i11].length) {
                        int i12 = i11 + 1;
                        int i13 = i11 - 1;
                        double d10 = dArr5[i12] - dArr5[i13];
                        int i14 = length;
                        int i15 = i10;
                        while (i15 < length2 - 1) {
                            if (dArr3.length == dArr4[i11][i15].length) {
                                int i16 = i15 + 1;
                                int i17 = i15 - 1;
                                double d11 = dArr6[i16] - dArr6[i17];
                                double d12 = d10 * d11;
                                int i18 = length2;
                                int i19 = 1;
                                while (i19 < length3 - 1) {
                                    int i20 = i19 + 1;
                                    int i21 = i19 - 1;
                                    double d13 = dArr3[i20] - dArr3[i21];
                                    double[] dArr14 = dArr7[i11][i15];
                                    double[][] dArr15 = dArr4[i12];
                                    double[] dArr16 = dArr15[i15];
                                    double d14 = dArr16[i19];
                                    double[][] dArr17 = dArr4[i13];
                                    double[] dArr18 = dArr17[i15];
                                    dArr14[i19] = (d14 - dArr18[i19]) / d10;
                                    double[] dArr19 = dArr8[i11][i15];
                                    double[][] dArr20 = dArr4[i11];
                                    double[] dArr21 = dArr20[i16];
                                    double d15 = dArr21[i19];
                                    double[] dArr22 = dArr20[i17];
                                    dArr19[i19] = (d15 - dArr22[i19]) / d11;
                                    double[] dArr23 = dArr9[i11][i15];
                                    double[] dArr24 = dArr20[i15];
                                    dArr23[i19] = (dArr24[i20] - dArr24[i21]) / d13;
                                    double[] dArr25 = dArr10[i11][i15];
                                    double[] dArr26 = dArr15[i16];
                                    double d16 = dArr26[i19];
                                    double[] dArr27 = dArr15[i17];
                                    double d17 = d16 - dArr27[i19];
                                    double[] dArr28 = dArr17[i16];
                                    double d18 = d17 - dArr28[i19];
                                    double[] dArr29 = dArr17[i17];
                                    dArr25[i19] = (d18 + dArr29[i19]) / d12;
                                    dArr11[i11][i15][i19] = (((dArr16[i20] - dArr16[i21]) - dArr18[i20]) + dArr18[i21]) / (d10 * d13);
                                    dArr12[i11][i15][i19] = (((dArr21[i20] - dArr21[i21]) - dArr22[i20]) + dArr22[i21]) / (d11 * d13);
                                    dArr13[i11][i15][i19] = (((((((dArr26[i20] - dArr27[i20]) - dArr28[i20]) + dArr29[i20]) - dArr26[i21]) + dArr27[i21]) + dArr28[i21]) - dArr29[i21]) / (d13 * d12);
                                    i19 = i20;
                                }
                                dArr6 = dArr2;
                                i15 = i16;
                                i10 = 1;
                                length2 = i18;
                            } else {
                                throw new DimensionMismatchException(dArr3.length, dArr4[i11][i15].length);
                            }
                        }
                        dArr5 = dArr;
                        dArr6 = dArr2;
                        i11 = i12;
                        length = i14;
                    } else {
                        throw new DimensionMismatchException(dArr2.length, dArr4[i11].length);
                    }
                }
                return new TricubicInterpolatingFunction(dArr, dArr2, dArr3, dArr4, dArr7, dArr8, dArr9, dArr10, dArr11, dArr12, dArr13) {
                    @Override
                    public boolean isValidPoint(double d19, double d20, double d21) {
                        double[] dArr30 = dArr;
                        if (d19 < dArr30[1] || d19 > dArr30[dArr30.length - 2]) {
                            return false;
                        }
                        double[] dArr31 = dArr2;
                        if (d20 < dArr31[1] || d20 > dArr31[dArr31.length - 2]) {
                            return false;
                        }
                        double[] dArr32 = dArr3;
                        return d21 >= dArr32[1] && d21 <= dArr32[dArr32.length + (-2)];
                    }
                };
            }
            throw new DimensionMismatchException(dArr.length, dArr4.length);
        }
        throw new NoDataException();
    }
}
