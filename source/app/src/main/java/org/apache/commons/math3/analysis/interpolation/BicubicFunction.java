package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

class BicubicFunction implements BivariateFunction {

    private static final short f100125N = 4;

    private final double[][] f100126a = (double[][]) Array.newInstance(Double.TYPE, 4, 4);

    public BicubicFunction(double[] dArr) {
        for (int i10 = 0; i10 < 4; i10++) {
            double[] dArr2 = this.f100126a[i10];
            for (int i11 = 0; i11 < 4; i11++) {
                dArr2[i11] = dArr[(i11 * 4) + i10];
            }
        }
    }

    private double apply(double[] dArr, double[] dArr2, double[][] dArr3) {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < 4; i10++) {
            d10 += MathArrays.linearCombination(dArr3[i10], dArr2) * dArr[i10];
        }
        return d10;
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
        return apply(dArr, new double[]{1.0d, d11, d13, d13 * d11}, this.f100126a);
    }
}
