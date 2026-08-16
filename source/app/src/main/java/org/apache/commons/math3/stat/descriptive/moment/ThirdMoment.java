package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathUtils;

class ThirdMoment extends SecondMoment implements Serializable {
    private static final long serialVersionUID = -7818711964045118679L;

    protected double f100345m3;
    protected double nDevSq;

    public ThirdMoment() {
        this.f100345m3 = Double.NaN;
        this.nDevSq = Double.NaN;
    }

    @Override
    public void clear() {
        super.clear();
        this.f100345m3 = Double.NaN;
        this.nDevSq = Double.NaN;
    }

    @Override
    public double getResult() {
        return this.f100345m3;
    }

    @Override
    public void increment(double d10) {
        if (this.f100342n < 1) {
            this.f100341m1 = 0.0d;
            this.f100344m2 = 0.0d;
            this.f100345m3 = 0.0d;
        }
        double d11 = this.f100344m2;
        super.increment(d10);
        double d12 = this.nDev;
        double d13 = d12 * d12;
        this.nDevSq = d13;
        double d14 = this.f100342n;
        this.f100345m3 = (this.f100345m3 - ((d12 * 3.0d) * d11)) + ((d14 - 1.0d) * (d14 - 2.0d) * d13 * this.dev);
    }

    public ThirdMoment(ThirdMoment thirdMoment) throws NullArgumentException {
        copy(thirdMoment, this);
    }

    @Override
    public ThirdMoment copy() {
        ThirdMoment thirdMoment = new ThirdMoment();
        copy(this, thirdMoment);
        return thirdMoment;
    }

    public static void copy(ThirdMoment thirdMoment, ThirdMoment thirdMoment2) throws NullArgumentException {
        MathUtils.checkNotNull(thirdMoment);
        MathUtils.checkNotNull(thirdMoment2);
        SecondMoment.copy((SecondMoment) thirdMoment, (SecondMoment) thirdMoment2);
        thirdMoment2.f100345m3 = thirdMoment.f100345m3;
        thirdMoment2.nDevSq = thirdMoment.nDevSq;
    }
}
