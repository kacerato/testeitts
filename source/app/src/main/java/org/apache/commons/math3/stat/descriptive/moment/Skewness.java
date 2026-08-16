package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class Skewness extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = 7101857578996691352L;
    protected boolean incMoment;
    protected ThirdMoment moment;

    public Skewness() {
        this.moment = null;
        this.incMoment = true;
        this.moment = new ThirdMoment();
    }

    @Override
    public void clear() {
        if (this.incMoment) {
            this.moment.clear();
        }
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        int i12;
        int i13 = i10;
        if (!test(dArr, i10, i11) || i11 <= 2) {
            return Double.NaN;
        }
        double evaluate = new Mean().evaluate(dArr, i13, i11);
        double d10 = 0.0d;
        int i14 = i13;
        double d11 = 0.0d;
        double d12 = 0.0d;
        while (true) {
            i12 = i13 + i11;
            if (i14 >= i12) {
                break;
            }
            double d13 = dArr[i14] - evaluate;
            d11 += d13 * d13;
            d12 += d13;
            i14++;
        }
        double d14 = i11;
        double d15 = (d11 - ((d12 * d12) / d14)) / (i11 - 1);
        while (i13 < i12) {
            double d16 = dArr[i13] - evaluate;
            d10 += d16 * d16 * d16;
            i13++;
        }
        return (d14 / ((d14 - 1.0d) * (d14 - 2.0d))) * (d10 / (d15 * FastMath.sqrt(d15)));
    }

    @Override
    public long getN() {
        return this.moment.getN();
    }

    @Override
    public double getResult() {
        ThirdMoment thirdMoment = this.moment;
        if (thirdMoment.f100342n < 3) {
            return Double.NaN;
        }
        double d10 = thirdMoment.f100344m2 / (r1 - 1);
        if (d10 < 1.0E-19d) {
            return 0.0d;
        }
        double n10 = thirdMoment.getN();
        return (this.moment.f100345m3 * n10) / ((((n10 - 1.0d) * (n10 - 2.0d)) * FastMath.sqrt(d10)) * d10);
    }

    @Override
    public void increment(double d10) {
        if (this.incMoment) {
            this.moment.increment(d10);
        }
    }

    @Override
    public Skewness copy() {
        Skewness skewness = new Skewness();
        copy(this, skewness);
        return skewness;
    }

    public Skewness(ThirdMoment thirdMoment) {
        this.incMoment = false;
        this.moment = thirdMoment;
    }

    public static void copy(Skewness skewness, Skewness skewness2) throws NullArgumentException {
        MathUtils.checkNotNull(skewness);
        MathUtils.checkNotNull(skewness2);
        skewness2.setData(skewness.getDataRef());
        skewness2.moment = new ThirdMoment(skewness.moment.copy());
        skewness2.incMoment = skewness.incMoment;
    }

    public Skewness(Skewness skewness) throws NullArgumentException {
        this.moment = null;
        copy(skewness, this);
    }
}
