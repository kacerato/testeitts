package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathUtils;

public class SecondMoment extends FirstMoment implements Serializable {
    private static final long serialVersionUID = 3942403127395076445L;

    protected double f100344m2;

    public SecondMoment() {
        this.f100344m2 = Double.NaN;
    }

    @Override
    public void clear() {
        super.clear();
        this.f100344m2 = Double.NaN;
    }

    @Override
    public long getN() {
        return super.getN();
    }

    @Override
    public double getResult() {
        return this.f100344m2;
    }

    @Override
    public void increment(double d10) {
        if (this.f100342n < 1) {
            this.f100344m2 = 0.0d;
            this.f100341m1 = 0.0d;
        }
        super.increment(d10);
        this.f100344m2 += (this.f100342n - 1.0d) * this.dev * this.nDev;
    }

    public SecondMoment(SecondMoment secondMoment) throws NullArgumentException {
        super(secondMoment);
        this.f100344m2 = secondMoment.f100344m2;
    }

    @Override
    public SecondMoment copy() {
        SecondMoment secondMoment = new SecondMoment();
        copy(this, secondMoment);
        return secondMoment;
    }

    public static void copy(SecondMoment secondMoment, SecondMoment secondMoment2) throws NullArgumentException {
        MathUtils.checkNotNull(secondMoment);
        MathUtils.checkNotNull(secondMoment2);
        FirstMoment.copy(secondMoment, secondMoment2);
        secondMoment2.f100344m2 = secondMoment.f100344m2;
    }
}
