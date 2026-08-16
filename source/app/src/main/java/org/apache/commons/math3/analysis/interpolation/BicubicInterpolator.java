package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

public class BicubicInterpolator implements BivariateGridInterpolator {
    @Override
    public BicubicInterpolatingFunction interpolate(final double[] dArr, final double[] dArr2, double[][] dArr3) throws NoDataException, DimensionMismatchException, NonMonotonicSequenceException, NumberIsTooSmallException {
        if (dArr.length != 0 && dArr2.length != 0 && dArr3.length != 0) {
            if (dArr.length == dArr3.length) {
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                int length = dArr.length;
                int length2 = dArr2.length;
                Class<Double> cls = Double.TYPE;
                double[][] dArr4 = (double[][]) Array.newInstance(cls, length, length2);
                double[][] dArr5 = (double[][]) Array.newInstance(cls, length, length2);
                double[][] dArr6 = (double[][]) Array.newInstance(cls, length, length2);
                int i10 = 1;
                while (i10 < length - 1) {
                    int i11 = i10 + 1;
                    int i12 = i10 - 1;
                    double d10 = dArr[i11] - dArr[i12];
                    int i13 = 1;
                    while (i13 < length2 - 1) {
                        int i14 = i13 + 1;
                        int i15 = i13 - 1;
                        double d11 = dArr2[i14] - dArr2[i15];
                        double[] dArr7 = dArr4[i10];
                        double[] dArr8 = dArr3[i11];
                        double d12 = dArr8[i13];
                        double[] dArr9 = dArr3[i12];
                        dArr7[i13] = (d12 - dArr9[i13]) / d10;
                        double[] dArr10 = dArr5[i10];
                        double[] dArr11 = dArr3[i10];
                        dArr10[i13] = (dArr11[i14] - dArr11[i15]) / d11;
                        dArr6[i10][i13] = (((dArr8[i14] - dArr8[i15]) - dArr9[i14]) + dArr9[i15]) / (d11 * d10);
                        i13 = i14;
                    }
                    i10 = i11;
                }
                return new BicubicInterpolatingFunction(dArr, dArr2, dArr3, dArr4, dArr5, dArr6) {
                    @Override
                    public boolean isValidPoint(double d13, double d14) {
                        double[] dArr12 = dArr;
                        if (d13 < dArr12[1] || d13 > dArr12[dArr12.length - 2]) {
                            return false;
                        }
                        double[] dArr13 = dArr2;
                        return d14 >= dArr13[1] && d14 <= dArr13[dArr13.length + (-2)];
                    }
                };
            }
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        throw new NoDataException();
    }
}
