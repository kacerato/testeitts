package org.apache.commons.math3.analysis.polynomials;

import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathUtils;

public class PolynomialFunctionNewtonForm implements UnivariateDifferentiableFunction {

    private final double[] f100135a;

    private final double[] f100136c;
    private double[] coefficients;
    private boolean coefficientsComputed;

    public PolynomialFunctionNewtonForm(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        verifyInputArray(dArr, dArr2);
        double[] dArr3 = new double[dArr.length];
        this.f100135a = dArr3;
        double[] dArr4 = new double[dArr2.length];
        this.f100136c = dArr4;
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr4, 0, dArr2.length);
        this.coefficientsComputed = false;
    }

    public static double evaluate(double[] dArr, double[] dArr2, double d10) throws NullArgumentException, DimensionMismatchException, NoDataException {
        verifyInputArray(dArr, dArr2);
        int length = dArr2.length;
        double d11 = dArr[length];
        for (int i10 = length - 1; i10 >= 0; i10--) {
            d11 = dArr[i10] + ((d10 - dArr2[i10]) * d11);
        }
        return d11;
    }

    public static void verifyInputArray(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException(LocalizedFormats.EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY);
        }
        if (dArr.length != dArr2.length + 1) {
            throw new DimensionMismatchException(LocalizedFormats.ARRAY_SIZES_SHOULD_HAVE_DIFFERENCE_1, dArr.length, dArr2.length);
        }
    }

    public void computeCoefficients() {
        int degree = degree();
        this.coefficients = new double[degree + 1];
        for (int i10 = 0; i10 <= degree; i10++) {
            this.coefficients[i10] = 0.0d;
        }
        this.coefficients[0] = this.f100135a[degree];
        for (int i11 = degree - 1; i11 >= 0; i11--) {
            for (int i12 = degree - i11; i12 > 0; i12--) {
                double[] dArr = this.coefficients;
                dArr[i12] = dArr[i12 - 1] - (this.f100136c[i11] * dArr[i12]);
            }
            double[] dArr2 = this.coefficients;
            dArr2[0] = this.f100135a[i11] - (this.f100136c[i11] * dArr2[0]);
        }
        this.coefficientsComputed = true;
    }

    public int degree() {
        return this.f100136c.length;
    }

    public double[] getCenters() {
        double[] dArr = this.f100136c;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
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

    public double[] getNewtonCoefficients() {
        double[] dArr = this.f100135a;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    @Override
    public double value(double d10) {
        return evaluate(this.f100135a, this.f100136c, d10);
    }

    @Override
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        verifyInputArray(this.f100135a, this.f100136c);
        int length = this.f100136c.length;
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(derivativeStructure.getFreeParameters(), derivativeStructure.getOrder(), this.f100135a[length]);
        for (int i10 = length - 1; i10 >= 0; i10--) {
            derivativeStructure2 = derivativeStructure.subtract(this.f100136c[i10]).multiply(derivativeStructure2).add(this.f100135a[i10]);
        }
        return derivativeStructure2;
    }
}
