package org.apache.commons.math3.stat.descriptive.rank;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathUtils;

public class Max extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = -5593383832225844641L;

    private long f100347n;
    private double value;

    public Max() {
        this.f100347n = 0L;
        this.value = Double.NaN;
    }

    @Override
    public void clear() {
        this.value = Double.NaN;
        this.f100347n = 0L;
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, i10, i11)) {
            return Double.NaN;
        }
        double d10 = dArr[i10];
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            if (!Double.isNaN(dArr[i12])) {
                double d11 = dArr[i12];
                if (d10 <= d11) {
                    d10 = d11;
                }
            }
        }
        return d10;
    }

    @Override
    public long getN() {
        return this.f100347n;
    }

    @Override
    public double getResult() {
        return this.value;
    }

    @Override
    public void increment(double d10) {
        double d11 = this.value;
        if (d10 > d11 || Double.isNaN(d11)) {
            this.value = d10;
        }
        this.f100347n++;
    }

    @Override
    public Max copy() {
        Max max = new Max();
        copy(this, max);
        return max;
    }

    public Max(Max max) throws NullArgumentException {
        copy(max, this);
    }

    public static void copy(Max max, Max max2) throws NullArgumentException {
        MathUtils.checkNotNull(max);
        MathUtils.checkNotNull(max2);
        max2.setData(max.getDataRef());
        max2.f100347n = max.f100347n;
        max2.value = max.value;
    }
}
