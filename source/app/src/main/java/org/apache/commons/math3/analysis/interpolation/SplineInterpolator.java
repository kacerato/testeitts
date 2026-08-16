package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.analysis.polynomials.PolynomialSplineFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

public class SplineInterpolator implements UnivariateInterpolator {
    @Override
    public PolynomialSplineFunction interpolate(double[] dArr, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        if (dArr.length == dArr2.length) {
            if (dArr.length >= 3) {
                int length = dArr.length;
                int i10 = length - 1;
                MathArrays.checkOrder(dArr);
                double[] dArr3 = new double[i10];
                int i11 = 0;
                while (i11 < i10) {
                    int i12 = i11 + 1;
                    dArr3[i11] = dArr[i12] - dArr[i11];
                    i11 = i12;
                }
                double[] dArr4 = new double[i10];
                double[] dArr5 = new double[length];
                dArr4[0] = 0.0d;
                dArr5[0] = 0.0d;
                int i13 = 1;
                while (i13 < i10) {
                    int i14 = i13 + 1;
                    int i15 = i13 - 1;
                    double d10 = ((dArr[i14] - dArr[i15]) * 2.0d) - (dArr3[i15] * dArr4[i15]);
                    dArr4[i13] = dArr3[i13] / d10;
                    double d11 = dArr2[i14];
                    double d12 = dArr3[i15];
                    double d13 = (d11 * d12) - (dArr2[i13] * (dArr[i14] - dArr[i15]));
                    double d14 = dArr2[i15];
                    double d15 = dArr3[i13];
                    dArr5[i13] = ((((d13 + (d14 * d15)) * 3.0d) / (d15 * d12)) - (d12 * dArr5[i15])) / d10;
                    i13 = i14;
                }
                double[] dArr6 = new double[i10];
                double[] dArr7 = new double[length];
                double[] dArr8 = new double[i10];
                dArr5[i10] = 0.0d;
                dArr7[i10] = 0.0d;
                for (int i16 = length - 2; i16 >= 0; i16--) {
                    int i17 = i16 + 1;
                    double d16 = dArr5[i16] - (dArr4[i16] * dArr7[i17]);
                    dArr7[i16] = d16;
                    double d17 = dArr2[i17] - dArr2[i16];
                    double d18 = dArr3[i16];
                    dArr6[i16] = (d17 / d18) - ((d18 * (dArr7[i17] + (d16 * 2.0d))) / 3.0d);
                    dArr8[i16] = (dArr7[i17] - dArr7[i16]) / (dArr3[i16] * 3.0d);
                }
                PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[i10];
                for (int i18 = 0; i18 < i10; i18++) {
                    polynomialFunctionArr[i18] = new PolynomialFunction(new double[]{dArr2[i18], dArr6[i18], dArr7[i18], dArr8[i18]});
                }
                return new PolynomialSplineFunction(dArr, polynomialFunctionArr);
            }
            throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(dArr.length), 3, true);
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }
}
