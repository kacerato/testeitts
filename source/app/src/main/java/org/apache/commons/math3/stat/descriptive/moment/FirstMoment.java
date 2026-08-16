package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathUtils;

public class FirstMoment extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = 6112755307178490473L;
    protected double dev;

    protected double f100341m1;

    protected long f100342n;
    protected double nDev;

    public FirstMoment() {
        this.f100342n = 0L;
        this.f100341m1 = Double.NaN;
        this.dev = Double.NaN;
        this.nDev = Double.NaN;
    }

    @Override
    public void clear() {
        this.f100341m1 = Double.NaN;
        this.f100342n = 0L;
        this.dev = Double.NaN;
        this.nDev = Double.NaN;
    }

    @Override
    public long getN() {
        return this.f100342n;
    }

    @Override
    public double getResult() {
        return this.f100341m1;
    }

    @Override
    public void increment(double d10) {
        long j10 = this.f100342n;
        if (j10 == 0) {
            this.f100341m1 = 0.0d;
        }
        long j11 = j10 + 1;
        this.f100342n = j11;
        double d11 = this.f100341m1;
        double d12 = d10 - d11;
        this.dev = d12;
        double d13 = d12 / j11;
        this.nDev = d13;
        this.f100341m1 = d11 + d13;
    }

    @Override
    public FirstMoment copy() {
        FirstMoment firstMoment = new FirstMoment();
        copy(this, firstMoment);
        return firstMoment;
    }

    public static void copy(FirstMoment firstMoment, FirstMoment firstMoment2) throws NullArgumentException {
        MathUtils.checkNotNull(firstMoment);
        MathUtils.checkNotNull(firstMoment2);
        firstMoment2.setData(firstMoment.getDataRef());
        firstMoment2.f100342n = firstMoment.f100342n;
        firstMoment2.f100341m1 = firstMoment.f100341m1;
        firstMoment2.dev = firstMoment.dev;
        firstMoment2.nDev = firstMoment.nDev;
    }

    public FirstMoment(FirstMoment firstMoment) throws NullArgumentException {
        copy(firstMoment, this);
    }
}
