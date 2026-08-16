package org.apache.commons.math3.stat.descriptive.summary;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class SumOfLogs extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = -370076995648386763L;

    private int f100352n;
    private double value;

    public SumOfLogs() {
        this.value = 0.0d;
        this.f100352n = 0;
    }

    @Override
    public void clear() {
        this.value = 0.0d;
        this.f100352n = 0;
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, i10, i11, true)) {
            return Double.NaN;
        }
        double d10 = 0.0d;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            d10 += FastMath.log(dArr[i12]);
        }
        return d10;
    }

    @Override
    public long getN() {
        return this.f100352n;
    }

    @Override
    public double getResult() {
        return this.value;
    }

    @Override
    public void increment(double d10) {
        this.value += FastMath.log(d10);
        this.f100352n++;
    }

    @Override
    public SumOfLogs copy() {
        SumOfLogs sumOfLogs = new SumOfLogs();
        copy(this, sumOfLogs);
        return sumOfLogs;
    }

    public SumOfLogs(SumOfLogs sumOfLogs) throws NullArgumentException {
        copy(sumOfLogs, this);
    }

    public static void copy(SumOfLogs sumOfLogs, SumOfLogs sumOfLogs2) throws NullArgumentException {
        MathUtils.checkNotNull(sumOfLogs);
        MathUtils.checkNotNull(sumOfLogs2);
        sumOfLogs2.setData(sumOfLogs.getDataRef());
        sumOfLogs2.f100352n = sumOfLogs.f100352n;
        sumOfLogs2.value = sumOfLogs.value;
    }
}
