package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathUtils;

class FourthMoment extends ThirdMoment implements Serializable {
    private static final long serialVersionUID = 4763990447117157611L;

    private double f100343m4;

    public FourthMoment() {
        this.f100343m4 = Double.NaN;
    }

    @Override
    public void clear() {
        super.clear();
        this.f100343m4 = Double.NaN;
    }

    @Override
    public double getResult() {
        return this.f100343m4;
    }

    @Override
    public void increment(double d10) {
        if (this.f100342n < 1) {
            this.f100343m4 = 0.0d;
            this.f100345m3 = 0.0d;
            this.f100344m2 = 0.0d;
            this.f100341m1 = 0.0d;
        }
        double d11 = this.f100345m3;
        double d12 = this.f100344m2;
        super.increment(d10);
        double d13 = this.f100342n;
        double d14 = this.f100343m4 - ((this.nDev * 4.0d) * d11);
        double d15 = this.nDevSq;
        double d16 = d13 - 1.0d;
        this.f100343m4 = d14 + (6.0d * d15 * d12) + (((d13 * d13) - (3.0d * d16)) * d15 * d15 * d16 * d13);
    }

    public FourthMoment(FourthMoment fourthMoment) throws NullArgumentException {
        copy(fourthMoment, this);
    }

    @Override
    public FourthMoment copy() {
        FourthMoment fourthMoment = new FourthMoment();
        copy(this, fourthMoment);
        return fourthMoment;
    }

    public static void copy(FourthMoment fourthMoment, FourthMoment fourthMoment2) throws NullArgumentException {
        MathUtils.checkNotNull(fourthMoment);
        MathUtils.checkNotNull(fourthMoment2);
        ThirdMoment.copy((ThirdMoment) fourthMoment, (ThirdMoment) fourthMoment2);
        fourthMoment2.f100343m4 = fourthMoment.f100343m4;
    }
}
