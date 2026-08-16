package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class MultivariateFunctionPenaltyAdapter implements MultivariateFunction {
    private final MultivariateFunction bounded;
    private final double[] lower;
    private final double offset;
    private final double[] scale;
    private final double[] upper;

    public MultivariateFunctionPenaltyAdapter(MultivariateFunction multivariateFunction, double[] dArr, double[] dArr2, double d10, double[] dArr3) {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        MathUtils.checkNotNull(dArr3);
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length != dArr3.length) {
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            if (dArr2[i10] < dArr[i10]) {
                throw new NumberIsTooSmallException(Double.valueOf(dArr2[i10]), Double.valueOf(dArr[i10]), true);
            }
        }
        this.bounded = multivariateFunction;
        this.lower = (double[]) dArr.clone();
        this.upper = (double[]) dArr2.clone();
        this.offset = d10;
        this.scale = (double[]) dArr3.clone();
    }

    @Override
    public double value(double[] dArr) {
        double d10;
        int i10 = 0;
        while (i10 < this.scale.length) {
            double d11 = dArr[i10];
            if (d11 < this.lower[i10] || d11 > this.upper[i10]) {
                double d12 = 0.0d;
                while (true) {
                    double[] dArr2 = this.scale;
                    if (i10 >= dArr2.length) {
                        return this.offset + d12;
                    }
                    double d13 = dArr[i10];
                    double d14 = this.lower[i10];
                    if (d13 < d14) {
                        d10 = dArr2[i10] * (d14 - d13);
                    } else {
                        double d15 = this.upper[i10];
                        d10 = d13 > d15 ? dArr2[i10] * (d13 - d15) : 0.0d;
                    }
                    d12 += FastMath.sqrt(d10);
                    i10++;
                }
            } else {
                i10++;
            }
        }
        return this.bounded.value(dArr);
    }
}
