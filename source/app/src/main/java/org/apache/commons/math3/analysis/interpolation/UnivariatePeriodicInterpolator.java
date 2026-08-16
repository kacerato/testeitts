package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class UnivariatePeriodicInterpolator implements UnivariateInterpolator {
    public static final int DEFAULT_EXTEND = 5;
    private final int extend;
    private final UnivariateInterpolator interpolator;
    private final double period;

    public UnivariatePeriodicInterpolator(UnivariateInterpolator univariateInterpolator, double d10, int i10) {
        this.interpolator = univariateInterpolator;
        this.period = d10;
        this.extend = i10;
    }

    @Override
    public UnivariateFunction interpolate(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NonMonotonicSequenceException {
        if (dArr.length < this.extend) {
            throw new NumberIsTooSmallException(Integer.valueOf(dArr.length), Integer.valueOf(this.extend), true);
        }
        MathArrays.checkOrder(dArr);
        int i10 = 0;
        final double d10 = dArr[0];
        int length = dArr.length + (this.extend * 2);
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        for (int i11 = 0; i11 < dArr.length; i11++) {
            int i12 = i11 + this.extend;
            dArr3[i12] = MathUtils.reduce(dArr[i11], this.period, d10);
            dArr4[i12] = dArr2[i11];
        }
        while (true) {
            int i13 = this.extend;
            if (i10 >= i13) {
                MathArrays.sortInPlace(dArr3, dArr4);
                final UnivariateFunction interpolate = this.interpolator.interpolate(dArr3, dArr4);
                return new UnivariateFunction() {
                    @Override
                    public double value(double d11) throws MathIllegalArgumentException {
                        return interpolate.value(MathUtils.reduce(d11, UnivariatePeriodicInterpolator.this.period, d10));
                    }
                };
            }
            int length2 = (dArr.length - i13) + i10;
            double reduce = MathUtils.reduce(dArr[length2], this.period, d10);
            double d11 = this.period;
            dArr3[i10] = reduce - d11;
            dArr4[i10] = dArr2[length2];
            int i14 = (length - this.extend) + i10;
            dArr3[i14] = MathUtils.reduce(dArr[i10], d11, d10) + this.period;
            dArr4[i14] = dArr2[i10];
            i10++;
        }
    }

    public UnivariatePeriodicInterpolator(UnivariateInterpolator univariateInterpolator, double d10) {
        this(univariateInterpolator, d10, 5);
    }
}
