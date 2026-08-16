package org.apache.commons.math3.stat.descriptive.summary;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathUtils;

public class SumOfSquares extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = 1460986908574398008L;

    private long f100353n;
    private double value;

    public SumOfSquares() {
        this.f100353n = 0L;
        this.value = 0.0d;
    }

    @Override
    public void clear() {
        this.value = 0.0d;
        this.f100353n = 0L;
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, i10, i11, true)) {
            return Double.NaN;
        }
        double d10 = 0.0d;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            double d11 = dArr[i12];
            d10 += d11 * d11;
        }
        return d10;
    }

    @Override
    public long getN() {
        return this.f100353n;
    }

    @Override
    public double getResult() {
        return this.value;
    }

    @Override
    public void increment(double d10) {
        this.value += d10 * d10;
        this.f100353n++;
    }

    @Override
    public SumOfSquares copy() {
        SumOfSquares sumOfSquares = new SumOfSquares();
        copy(this, sumOfSquares);
        return sumOfSquares;
    }

    public SumOfSquares(SumOfSquares sumOfSquares) throws NullArgumentException {
        copy(sumOfSquares, this);
    }

    public static void copy(SumOfSquares sumOfSquares, SumOfSquares sumOfSquares2) throws NullArgumentException {
        MathUtils.checkNotNull(sumOfSquares);
        MathUtils.checkNotNull(sumOfSquares2);
        sumOfSquares2.setData(sumOfSquares.getDataRef());
        sumOfSquares2.f100353n = sumOfSquares.f100353n;
        sumOfSquares2.value = sumOfSquares.value;
    }
}
