package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.polynomials.PolynomialSplineFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
public class BicubicSplineInterpolator implements BivariateGridInterpolator {
    private final boolean initializeDerivatives;

    public BicubicSplineInterpolator() {
        this(false);
    }

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

    public BicubicSplineInterpolator(boolean z10) {
        this.initializeDerivatives = z10;
    }

    @Override
    public BicubicSplineInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[][] dArr3) throws NoDataException, DimensionMismatchException, NonMonotonicSequenceException, NumberIsTooSmallException {
        if (dArr.length != 0 && dArr2.length != 0 && dArr3.length != 0) {
            if (dArr.length == dArr3.length) {
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                int length = dArr.length;
                int length2 = dArr2.length;
                int i10 = 0;
                double[][] dArr4 = (double[][]) Array.newInstance(Double.TYPE, length2, length);
                for (int i11 = 0; i11 < length; i11++) {
                    if (dArr3[i11].length != length2) {
                        throw new DimensionMismatchException(dArr3[i11].length, length2);
                    }
                    for (int i12 = 0; i12 < length2; i12++) {
                        dArr4[i12][i11] = dArr3[i11][i12];
                    }
                }
                SplineInterpolator splineInterpolator = new SplineInterpolator();
                PolynomialSplineFunction[] polynomialSplineFunctionArr = new PolynomialSplineFunction[length2];
                for (int i13 = 0; i13 < length2; i13++) {
                    polynomialSplineFunctionArr[i13] = splineInterpolator.interpolate(dArr, dArr4[i13]);
                }
                PolynomialSplineFunction[] polynomialSplineFunctionArr2 = new PolynomialSplineFunction[length];
                for (int i14 = 0; i14 < length; i14++) {
                    polynomialSplineFunctionArr2[i14] = splineInterpolator.interpolate(dArr2, dArr3[i14]);
                }
                double[][] dArr5 = (double[][]) Array.newInstance(Double.TYPE, length, length2);
                int i15 = 0;
                while (i15 < length2) {
                    UnivariateFunction derivative = polynomialSplineFunctionArr[i15].derivative();
                    int i16 = i10;
                    while (i16 < length) {
                        dArr5[i16][i15] = derivative.value(dArr[i16]);
                        i16++;
                        dArr5 = dArr5;
                    }
                    i15++;
                    i10 = 0;
                }
                double[][] dArr6 = dArr5;
                double[][] dArr7 = (double[][]) Array.newInstance(Double.TYPE, length, length2);
                for (int i17 = 0; i17 < length; i17++) {
                    UnivariateFunction derivative2 = polynomialSplineFunctionArr2[i17].derivative();
                    for (int i18 = 0; i18 < length2; i18++) {
                        dArr7[i17][i18] = derivative2.value(dArr2[i18]);
                    }
                }
                double[][] dArr8 = (double[][]) Array.newInstance(Double.TYPE, length, length2);
                for (int i19 = 0; i19 < length; i19++) {
                    int nextIndex = nextIndex(i19, length);
                    int previousIndex = previousIndex(i19);
                    for (int i20 = 0; i20 < length2; i20++) {
                        int nextIndex2 = nextIndex(i20, length2);
                        int previousIndex2 = previousIndex(i20);
                        double[] dArr9 = dArr8[i19];
                        double[] dArr10 = dArr3[nextIndex];
                        double d10 = dArr10[nextIndex2] - dArr10[previousIndex2];
                        double[] dArr11 = dArr3[previousIndex];
                        dArr9[i20] = ((d10 - dArr11[nextIndex2]) + dArr11[previousIndex2]) / ((dArr[nextIndex] - dArr[previousIndex]) * (dArr2[nextIndex2] - dArr2[previousIndex2]));
                    }
                }
                return new BicubicSplineInterpolatingFunction(dArr, dArr2, dArr3, dArr6, dArr7, dArr8, this.initializeDerivatives);
            }
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        throw new NoDataException();
    }
}
