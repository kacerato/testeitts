package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.TrivariateFunction;
import org.apache.commons.math3.exception.OutOfRangeException;

class TricubicSplineFunction implements TrivariateFunction {

    private static final short f100131N = 4;

    private final double[][][] f100132a = (double[][][]) Array.newInstance(Double.TYPE, 4, 4, 4);

    public TricubicSplineFunction(double[] dArr) {
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                for (int i12 = 0; i12 < 4; i12++) {
                    this.f100132a[i10][i11][i12] = dArr[(((i12 * 4) + i11) * 4) + i10];
                }
            }
        }
    }

    @Override
    public double value(double d10, double d11, double d12) throws OutOfRangeException {
        double d13 = 0.0d;
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        if (d11 < 0.0d || d11 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d11), 0, 1);
        }
        if (d12 < 0.0d || d12 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d12), 0, 1);
        }
        double d14 = d10 * d10;
        double[] dArr = {1.0d, d10, d14, d14 * d10};
        double d15 = d11 * d11;
        double[] dArr2 = {1.0d, d11, d15, d15 * d11};
        double d16 = d12 * d12;
        double[] dArr3 = {1.0d, d12, d16, d16 * d12};
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                for (int i12 = 0; i12 < 4; i12++) {
                    d13 += this.f100132a[i10][i11][i12] * dArr[i10] * dArr2[i11] * dArr3[i12];
                }
            }
        }
        return d13;
    }
}
