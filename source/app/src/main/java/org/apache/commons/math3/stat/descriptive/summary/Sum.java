package org.apache.commons.math3.stat.descriptive.summary;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathUtils;

public class Sum extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = -8231831954703408316L;

    private long f100351n;
    private double value;

    public Sum() {
        this.f100351n = 0L;
        this.value = 0.0d;
    }

    @Override
    public void clear() {
        this.value = 0.0d;
        this.f100351n = 0L;
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, i10, i11, true)) {
            return Double.NaN;
        }
        double d10 = 0.0d;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            d10 += dArr[i12];
        }
        return d10;
    }

    @Override
    public long getN() {
        return this.f100351n;
    }

    @Override
    public double getResult() {
        return this.value;
    }

    @Override
    public void increment(double d10) {
        this.value += d10;
        this.f100351n++;
    }

    @Override
    public Sum copy() {
        Sum sum = new Sum();
        copy(this, sum);
        return sum;
    }

    public double evaluate(double[] dArr, double[] dArr2, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, dArr2, i10, i11, true)) {
            return Double.NaN;
        }
        double d10 = 0.0d;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            d10 += dArr[i12] * dArr2[i12];
        }
        return d10;
    }

    public Sum(Sum sum) throws NullArgumentException {
        copy(sum, this);
    }

    public static void copy(Sum sum, Sum sum2) throws NullArgumentException {
        MathUtils.checkNotNull(sum);
        MathUtils.checkNotNull(sum2);
        sum2.setData(sum.getDataRef());
        sum2.f100351n = sum.f100351n;
        sum2.value = sum.value;
    }

    public double evaluate(double[] dArr, double[] dArr2) throws MathIllegalArgumentException {
        return evaluate(dArr, dArr2, 0, dArr.length);
    }
}
