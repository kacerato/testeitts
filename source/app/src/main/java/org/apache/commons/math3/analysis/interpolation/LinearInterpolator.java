package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.analysis.polynomials.PolynomialSplineFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

public class LinearInterpolator implements UnivariateInterpolator {
    @Override
    public PolynomialSplineFunction interpolate(double[] dArr, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        if (dArr.length == dArr2.length) {
            if (dArr.length >= 2) {
                int length = dArr.length - 1;
                MathArrays.checkOrder(dArr);
                double[] dArr3 = new double[length];
                int i10 = 0;
                while (i10 < length) {
                    int i11 = i10 + 1;
                    dArr3[i10] = (dArr2[i11] - dArr2[i10]) / (dArr[i11] - dArr[i10]);
                    i10 = i11;
                }
                PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[length];
                for (int i12 = 0; i12 < length; i12++) {
                    polynomialFunctionArr[i12] = new PolynomialFunction(new double[]{dArr2[i12], dArr3[i12]});
                }
                return new PolynomialSplineFunction(dArr, polynomialFunctionArr);
            }
            throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(dArr.length), 2, true);
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }
}
