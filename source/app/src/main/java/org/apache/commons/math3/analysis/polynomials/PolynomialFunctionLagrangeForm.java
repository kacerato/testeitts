package org.apache.commons.math3.analysis.polynomials;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class PolynomialFunctionLagrangeForm implements UnivariateFunction {
    private double[] coefficients;
    private boolean coefficientsComputed;

    private final double[] f100133x;

    private final double[] f100134y;

    public PolynomialFunctionLagrangeForm(double[] dArr, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        double[] dArr3 = new double[dArr.length];
        this.f100133x = dArr3;
        double[] dArr4 = new double[dArr2.length];
        this.f100134y = dArr4;
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr4, 0, dArr2.length);
        this.coefficientsComputed = false;
        if (verifyInterpolationArray(dArr, dArr2, false)) {
            return;
        }
        MathArrays.sortInPlace(dArr3, dArr4);
        verifyInterpolationArray(dArr3, dArr4, true);
    }

    public static double evaluate(double[] dArr, double[] dArr2, double d10) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        if (verifyInterpolationArray(dArr, dArr2, false)) {
            return evaluateInternal(dArr, dArr2, d10);
        }
        double[] dArr3 = new double[dArr.length];
        double[] dArr4 = new double[dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr4, 0, dArr2.length);
        MathArrays.sortInPlace(dArr3, dArr4);
        verifyInterpolationArray(dArr3, dArr4, true);
        return evaluateInternal(dArr3, dArr4, d10);
    }

    private static double evaluateInternal(double[] dArr, double[] dArr2, double d10) {
        double d11;
        int length = dArr.length;
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        double d12 = Double.POSITIVE_INFINITY;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            dArr3[i11] = dArr2[i11];
            dArr4[i11] = dArr2[i11];
            double abs = FastMath.abs(d10 - dArr[i11]);
            if (abs < d12) {
                i10 = i11;
                d12 = abs;
            }
        }
        double d13 = dArr2[i10];
        for (int i12 = 1; i12 < length; i12++) {
            int i13 = 0;
            while (true) {
                if (i13 >= length - i12) {
                    break;
                }
                double d14 = dArr[i13];
                double d15 = d14 - d10;
                double d16 = dArr[i12 + i13];
                double d17 = d16 - d10;
                double d18 = d14 - d16;
                int i14 = i13 + 1;
                double d19 = (dArr3[i14] - dArr4[i13]) / d18;
                dArr3[i13] = d15 * d19;
                dArr4[i13] = d17 * d19;
                i13 = i14;
            }
            if (i10 < (r10 + 1) * 0.5d) {
                d11 = dArr3[i10];
            } else {
                i10--;
                d11 = dArr4[i10];
            }
            d13 += d11;
        }
        return d13;
    }

    public static boolean verifyInterpolationArray(double[] dArr, double[] dArr2, boolean z10) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length >= 2) {
            return MathArrays.checkOrder(dArr, MathArrays.OrderDirection.INCREASING, true, z10);
        }
        throw new NumberIsTooSmallException(LocalizedFormats.WRONG_NUMBER_OF_POINTS, 2, Integer.valueOf(dArr.length), true);
    }

    public void computeCoefficients() {
        int degree = degree();
        int i10 = degree + 1;
        this.coefficients = new double[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            this.coefficients[i12] = 0.0d;
        }
        double[] dArr = new double[degree + 2];
        dArr[0] = 1.0d;
        int i13 = 0;
        while (i13 < i10) {
            for (int i14 = i13; i14 > 0; i14--) {
                dArr[i14] = dArr[i14 - 1] - (dArr[i14] * this.f100133x[i13]);
            }
            dArr[0] = dArr[0] * (-this.f100133x[i13]);
            i13++;
            dArr[i13] = 1.0d;
        }
        double[] dArr2 = new double[i10];
        int i15 = 0;
        while (i15 < i10) {
            double d10 = 1.0d;
            for (int i16 = i11; i16 < i10; i16++) {
                if (i15 != i16) {
                    double[] dArr3 = this.f100133x;
                    d10 *= dArr3[i15] - dArr3[i16];
                }
            }
            double d11 = this.f100134y[i15] / d10;
            double d12 = dArr[i10];
            dArr2[degree] = d12;
            double[] dArr4 = this.coefficients;
            dArr4[degree] = dArr4[degree] + (d12 * d11);
            for (int i17 = degree - 1; i17 >= 0; i17--) {
                int i18 = i17 + 1;
                double d13 = dArr[i18] + (dArr2[i18] * this.f100133x[i15]);
                dArr2[i17] = d13;
                double[] dArr5 = this.coefficients;
                dArr5[i17] = dArr5[i17] + (d13 * d11);
            }
            i15++;
            i11 = 0;
        }
        this.coefficientsComputed = true;
    }

    public int degree() {
        return this.f100133x.length - 1;
    }

    public double[] getCoefficients() {
        if (!this.coefficientsComputed) {
            computeCoefficients();
        }
        double[] dArr = this.coefficients;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getInterpolatingPoints() {
        double[] dArr = this.f100133x;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getInterpolatingValues() {
        double[] dArr = this.f100134y;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    @Override
    public double value(double d10) {
        return evaluateInternal(this.f100133x, this.f100134y, d10);
    }
}
