package org.apache.commons.math3.analysis.polynomials;

import java.util.Arrays;
import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

public class PolynomialSplineFunction implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    private final double[] knots;

    private final int f100137n;
    private final PolynomialFunction[] polynomials;

    public PolynomialSplineFunction(double[] dArr, PolynomialFunction[] polynomialFunctionArr) throws NullArgumentException, NumberIsTooSmallException, DimensionMismatchException, NonMonotonicSequenceException {
        if (dArr == null || polynomialFunctionArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.NOT_ENOUGH_POINTS_IN_SPLINE_PARTITION, 2, Integer.valueOf(dArr.length), false);
        }
        if (dArr.length - 1 != polynomialFunctionArr.length) {
            throw new DimensionMismatchException(polynomialFunctionArr.length, dArr.length);
        }
        MathArrays.checkOrder(dArr);
        int length = dArr.length;
        int i10 = length - 1;
        this.f100137n = i10;
        double[] dArr2 = new double[length];
        this.knots = dArr2;
        System.arraycopy(dArr, 0, dArr2, 0, length);
        PolynomialFunction[] polynomialFunctionArr2 = new PolynomialFunction[i10];
        this.polynomials = polynomialFunctionArr2;
        System.arraycopy(polynomialFunctionArr, 0, polynomialFunctionArr2, 0, i10);
    }

    @Override
    public UnivariateFunction derivative() {
        return polynomialSplineDerivative();
    }

    public double[] getKnots() {
        int i10 = this.f100137n;
        double[] dArr = new double[i10 + 1];
        System.arraycopy(this.knots, 0, dArr, 0, i10 + 1);
        return dArr;
    }

    public int getN() {
        return this.f100137n;
    }

    public PolynomialFunction[] getPolynomials() {
        int i10 = this.f100137n;
        PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[i10];
        System.arraycopy(this.polynomials, 0, polynomialFunctionArr, 0, i10);
        return polynomialFunctionArr;
    }

    public boolean isValidPoint(double d10) {
        double[] dArr = this.knots;
        return d10 >= dArr[0] && d10 <= dArr[this.f100137n];
    }

    public PolynomialSplineFunction polynomialSplineDerivative() {
        PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[this.f100137n];
        for (int i10 = 0; i10 < this.f100137n; i10++) {
            polynomialFunctionArr[i10] = this.polynomials[i10].polynomialDerivative();
        }
        return new PolynomialSplineFunction(this.knots, polynomialFunctionArr);
    }

    @Override
    public double value(double d10) {
        double[] dArr = this.knots;
        if (d10 >= dArr[0] && d10 <= dArr[this.f100137n]) {
            int binarySearch = Arrays.binarySearch(dArr, d10);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            PolynomialFunction[] polynomialFunctionArr = this.polynomials;
            if (binarySearch >= polynomialFunctionArr.length) {
                binarySearch--;
            }
            return polynomialFunctionArr[binarySearch].value(d10 - this.knots[binarySearch]);
        }
        throw new OutOfRangeException(Double.valueOf(d10), Double.valueOf(this.knots[0]), Double.valueOf(this.knots[this.f100137n]));
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        double value = derivativeStructure.getValue();
        double[] dArr = this.knots;
        if (value >= dArr[0] && value <= dArr[this.f100137n]) {
            int binarySearch = Arrays.binarySearch(dArr, value);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            PolynomialFunction[] polynomialFunctionArr = this.polynomials;
            if (binarySearch >= polynomialFunctionArr.length) {
                binarySearch--;
            }
            return polynomialFunctionArr[binarySearch].value(derivativeStructure.subtract(this.knots[binarySearch]));
        }
        throw new OutOfRangeException(Double.valueOf(value), Double.valueOf(this.knots[0]), Double.valueOf(this.knots[this.f100137n]));
    }
}
