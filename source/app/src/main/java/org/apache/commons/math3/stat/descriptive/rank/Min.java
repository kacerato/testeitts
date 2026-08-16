package org.apache.commons.math3.stat.descriptive.rank;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathUtils;

public class Min extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = -2941995784909003131L;

    private long f100348n;
    private double value;

    public Min() {
        this.f100348n = 0L;
        this.value = Double.NaN;
    }

    @Override
    public void clear() {
        this.value = Double.NaN;
        this.f100348n = 0L;
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
                if (d10 >= d11) {
                    d10 = d11;
                }
            }
        }
        return d10;
    }

    @Override
    public long getN() {
        return this.f100348n;
    }

    @Override
    public double getResult() {
        return this.value;
    }

    @Override
    public void increment(double d10) {
        double d11 = this.value;
        if (d10 < d11 || Double.isNaN(d11)) {
            this.value = d10;
        }
        this.f100348n++;
    }

    @Override
    public Min copy() {
        Min min = new Min();
        copy(this, min);
        return min;
    }

    public Min(Min min) throws NullArgumentException {
        copy(min, this);
    }

    public static void copy(Min min, Min min2) throws NullArgumentException {
        MathUtils.checkNotNull(min);
        MathUtils.checkNotNull(min2);
        min2.setData(min.getDataRef());
        min2.f100348n = min.f100348n;
        min2.value = min.value;
    }
}
