package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.analysis.polynomials.PolynomialSplineFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Precision;

public class AkimaSplineInterpolator implements UnivariateInterpolator {
    private static final int MINIMUM_NUMBER_POINTS = 5;

    private double differentiateThreePoint(double[] dArr, double[] dArr2, int i10, int i11, int i12, int i13) {
        double d10 = dArr2[i11];
        double d11 = dArr2[i12];
        double d12 = dArr2[i13];
        double d13 = dArr[i10];
        double d14 = dArr[i11];
        double d15 = d13 - d14;
        double d16 = dArr[i12] - d14;
        double d17 = dArr[i13] - d14;
        double d18 = d11 - d10;
        double d19 = ((d12 - d10) - ((d17 / d16) * d18)) / ((d17 * d17) - (d17 * d16));
        return (d19 * 2.0d * d15) + ((d18 - ((d19 * d16) * d16)) / d16);
    }

    private PolynomialSplineFunction interpolateHermiteSorted(double[] dArr, double[] dArr2, double[] dArr3) {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length != dArr3.length) {
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        if (dArr.length < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(dArr.length), 2, true);
        }
        int length = dArr.length - 1;
        PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[length];
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            double d10 = dArr[i11] - dArr[i10];
            double d11 = dArr2[i10];
            double d12 = dArr2[i11];
            double d13 = dArr3[i10];
            double d14 = dArr3[i11];
            polynomialFunctionArr[i10] = new PolynomialFunction(new double[]{d11, d13, (((((d12 - d11) * 3.0d) / d10) - (d13 * 2.0d)) - d14) / d10, (((((d11 - d12) * 2.0d) / d10) + d13) + d14) / (d10 * d10)});
            i10 = i11;
        }
        return new PolynomialSplineFunction(dArr, polynomialFunctionArr);
    }

    @Override
    public PolynomialSplineFunction interpolate(double[] dArr, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        if (dArr != null && dArr2 != null) {
            if (dArr.length == dArr2.length) {
                if (dArr.length >= 5) {
                    MathArrays.checkOrder(dArr);
                    int length = dArr.length - 1;
                    double[] dArr3 = new double[length];
                    double[] dArr4 = new double[length];
                    int i10 = 0;
                    while (i10 < length) {
                        int i11 = i10 + 1;
                        dArr3[i10] = (dArr2[i11] - dArr2[i10]) / (dArr[i11] - dArr[i10]);
                        i10 = i11;
                    }
                    for (int i12 = 1; i12 < length; i12++) {
                        dArr4[i12] = FastMath.abs(dArr3[i12] - dArr3[i12 - 1]);
                    }
                    int length2 = dArr.length;
                    double[] dArr5 = new double[length2];
                    int i13 = 2;
                    while (i13 < length2 - 2) {
                        int i14 = i13 + 1;
                        double d10 = dArr4[i14];
                        int i15 = i13 - 1;
                        double d11 = dArr4[i15];
                        if (Precision.equals(d10, 0.0d) && Precision.equals(d11, 0.0d)) {
                            double d12 = dArr[i13];
                            double d13 = dArr[i14];
                            double d14 = dArr[i15];
                            dArr5[i13] = (((d13 - d12) * dArr3[i15]) + ((d12 - d14) * dArr3[i13])) / (d13 - d14);
                        } else {
                            dArr5[i13] = ((dArr3[i15] * d10) + (dArr3[i13] * d11)) / (d10 + d11);
                        }
                        i13 = i14;
                    }
                    dArr5[0] = differentiateThreePoint(dArr, dArr2, 0, 0, 1, 2);
                    dArr5[1] = differentiateThreePoint(dArr, dArr2, 1, 0, 1, 2);
                    dArr5[dArr.length - 2] = differentiateThreePoint(dArr, dArr2, dArr.length - 2, dArr.length - 3, dArr.length - 2, dArr.length - 1);
                    dArr5[dArr.length - 1] = differentiateThreePoint(dArr, dArr2, dArr.length - 1, dArr.length - 3, dArr.length - 2, dArr.length - 1);
                    return interpolateHermiteSorted(dArr, dArr2, dArr5);
                }
                throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(dArr.length), 5, true);
            }
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        throw new NullArgumentException();
    }
}
