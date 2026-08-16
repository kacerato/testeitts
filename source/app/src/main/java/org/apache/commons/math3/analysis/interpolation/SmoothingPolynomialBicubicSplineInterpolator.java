package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.fitting.PolynomialFitter;
import org.apache.commons.math3.optim.SimpleVectorValueChecker;
import org.apache.commons.math3.optim.nonlinear.vector.jacobian.GaussNewtonOptimizer;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Precision;

@Deprecated
public class SmoothingPolynomialBicubicSplineInterpolator extends BicubicSplineInterpolator {
    private final int xDegree;
    private final PolynomialFitter xFitter;
    private final int yDegree;
    private final PolynomialFitter yFitter;

    public SmoothingPolynomialBicubicSplineInterpolator() {
        this(3);
    }

    public SmoothingPolynomialBicubicSplineInterpolator(int i10) throws NotPositiveException {
        this(i10, i10);
    }

    @Override
    public BicubicSplineInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[][] dArr3) throws NoDataException, NullArgumentException, DimensionMismatchException, NonMonotonicSequenceException {
        if (dArr.length != 0 && dArr2.length != 0 && dArr3.length != 0) {
            if (dArr.length == dArr3.length) {
                int length = dArr.length;
                int length2 = dArr2.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (dArr3[i10].length != length2) {
                        throw new DimensionMismatchException(dArr3[i10].length, length2);
                    }
                }
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[length2];
                for (int i11 = 0; i11 < length2; i11++) {
                    this.xFitter.clearObservations();
                    for (int i12 = 0; i12 < length; i12++) {
                        this.xFitter.addObservedPoint(1.0d, dArr[i12], dArr3[i12][i11]);
                    }
                    polynomialFunctionArr[i11] = new PolynomialFunction(this.xFitter.fit(new double[this.xDegree + 1]));
                }
                double[][] dArr4 = (double[][]) Array.newInstance(Double.TYPE, length, length2);
                for (int i13 = 0; i13 < length2; i13++) {
                    PolynomialFunction polynomialFunction = polynomialFunctionArr[i13];
                    for (int i14 = 0; i14 < length; i14++) {
                        dArr4[i14][i13] = polynomialFunction.value(dArr[i14]);
                    }
                }
                PolynomialFunction[] polynomialFunctionArr2 = new PolynomialFunction[length];
                for (int i15 = 0; i15 < length; i15++) {
                    this.yFitter.clearObservations();
                    for (int i16 = 0; i16 < length2; i16++) {
                        this.yFitter.addObservedPoint(1.0d, dArr2[i16], dArr4[i15][i16]);
                    }
                    polynomialFunctionArr2[i15] = new PolynomialFunction(this.yFitter.fit(new double[this.yDegree + 1]));
                }
                double[][] dArr5 = (double[][]) Array.newInstance(Double.TYPE, length, length2);
                for (int i17 = 0; i17 < length; i17++) {
                    PolynomialFunction polynomialFunction2 = polynomialFunctionArr2[i17];
                    for (int i18 = 0; i18 < length2; i18++) {
                        dArr5[i17][i18] = polynomialFunction2.value(dArr2[i18]);
                    }
                }
                return super.interpolate(dArr, dArr2, dArr5);
            }
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        throw new NoDataException();
    }

    public SmoothingPolynomialBicubicSplineInterpolator(int i10, int i11) throws NotPositiveException {
        if (i10 < 0) {
            throw new NotPositiveException(Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            this.xDegree = i10;
            this.yDegree = i11;
            SimpleVectorValueChecker simpleVectorValueChecker = new SimpleVectorValueChecker(Precision.EPSILON * 100.0d, Precision.SAFE_MIN * 100.0d);
            this.xFitter = new PolynomialFitter(new GaussNewtonOptimizer(false, simpleVectorValueChecker));
            this.yFitter = new PolynomialFitter(new GaussNewtonOptimizer(false, simpleVectorValueChecker));
            return;
        }
        throw new NotPositiveException(Integer.valueOf(i11));
    }
}
