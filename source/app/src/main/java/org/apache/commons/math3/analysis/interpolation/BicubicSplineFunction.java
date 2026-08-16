package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.OutOfRangeException;

class BicubicSplineFunction implements BivariateFunction {

    private static final short f100127N = 4;

    private final double[][] f100128a;
    private final BivariateFunction partialDerivativeX;
    private final BivariateFunction partialDerivativeXX;
    private final BivariateFunction partialDerivativeXY;
    private final BivariateFunction partialDerivativeY;
    private final BivariateFunction partialDerivativeYY;

    public BicubicSplineFunction(double[] dArr) {
        this(dArr, false);
    }

    public double apply(double[] dArr, double[] dArr2, double[][] dArr3) {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                d10 += dArr3[i10][i11] * dArr[i10] * dArr2[i11];
            }
        }
        return d10;
    }

    public BivariateFunction partialDerivativeX() {
        return this.partialDerivativeX;
    }

    public BivariateFunction partialDerivativeXX() {
        return this.partialDerivativeXX;
    }

    public BivariateFunction partialDerivativeXY() {
        return this.partialDerivativeXY;
    }

    public BivariateFunction partialDerivativeY() {
        return this.partialDerivativeY;
    }

    public BivariateFunction partialDerivativeYY() {
        return this.partialDerivativeYY;
    }

    @Override
    public double value(double d10, double d11) {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        if (d11 < 0.0d || d11 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d11), 0, 1);
        }
        double d12 = d10 * d10;
        double[] dArr = {1.0d, d10, d12, d12 * d10};
        double d13 = d11 * d11;
        return apply(dArr, new double[]{1.0d, d11, d13, d13 * d11}, this.f100128a);
    }

    public BicubicSplineFunction(double[] dArr, boolean z10) {
        int i10 = 4;
        int i11 = 0;
        this.f100128a = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
        for (int i12 = 0; i12 < 4; i12++) {
            for (int i13 = 0; i13 < 4; i13++) {
                this.f100128a[i12][i13] = dArr[(i12 * 4) + i13];
            }
        }
        if (z10) {
            Class<Double> cls = Double.TYPE;
            final double[][] dArr2 = (double[][]) Array.newInstance(cls, 4, 4);
            final double[][] dArr3 = (double[][]) Array.newInstance(cls, 4, 4);
            final double[][] dArr4 = (double[][]) Array.newInstance(cls, 4, 4);
            final double[][] dArr5 = (double[][]) Array.newInstance(cls, 4, 4);
            final double[][] dArr6 = (double[][]) Array.newInstance(cls, 4, 4);
            int i14 = 0;
            while (i14 < i10) {
                int i15 = i11;
                while (i15 < i10) {
                    double d10 = this.f100128a[i14][i15];
                    double[] dArr7 = dArr2[i14];
                    dArr7[i15] = i14 * d10;
                    double[] dArr8 = dArr3[i14];
                    double d11 = i15;
                    dArr8[i15] = d10 * d11;
                    dArr4[i14][i15] = (i14 - 1) * dArr7[i15];
                    dArr5[i14][i15] = (i15 - 1) * dArr8[i15];
                    dArr6[i14][i15] = d11 * dArr7[i15];
                    i15++;
                    i10 = 4;
                }
                i14++;
                i10 = 4;
                i11 = 0;
            }
            this.partialDerivativeX = new BivariateFunction() {
                @Override
                public double value(double d12, double d13) {
                    double d14 = d13 * d13;
                    return BicubicSplineFunction.this.apply(new double[]{0.0d, 1.0d, d12, d12 * d12}, new double[]{1.0d, d13, d14, d14 * d13}, dArr2);
                }
            };
            this.partialDerivativeY = new BivariateFunction() {
                @Override
                public double value(double d12, double d13) {
                    double d14 = d12 * d12;
                    return BicubicSplineFunction.this.apply(new double[]{1.0d, d12, d14, d14 * d12}, new double[]{0.0d, 1.0d, d13, d13 * d13}, dArr3);
                }
            };
            this.partialDerivativeXX = new BivariateFunction() {
                @Override
                public double value(double d12, double d13) {
                    double[] dArr9 = {0.0d, 0.0d, 1.0d, d12};
                    double d14 = d13 * d13;
                    return BicubicSplineFunction.this.apply(dArr9, new double[]{1.0d, d13, d14, d14 * d13}, dArr4);
                }
            };
            this.partialDerivativeYY = new BivariateFunction() {
                @Override
                public double value(double d12, double d13) {
                    double d14 = d12 * d12;
                    return BicubicSplineFunction.this.apply(new double[]{1.0d, d12, d14, d14 * d12}, new double[]{0.0d, 0.0d, 1.0d, d13}, dArr5);
                }
            };
            this.partialDerivativeXY = new BivariateFunction() {
                @Override
                public double value(double d12, double d13) {
                    return BicubicSplineFunction.this.apply(new double[]{0.0d, 1.0d, d12, d12 * d12}, new double[]{0.0d, 1.0d, d13, d13 * d13}, dArr6);
                }
            };
            return;
        }
        this.partialDerivativeX = null;
        this.partialDerivativeY = null;
        this.partialDerivativeXX = null;
        this.partialDerivativeYY = null;
        this.partialDerivativeXY = null;
    }
}
