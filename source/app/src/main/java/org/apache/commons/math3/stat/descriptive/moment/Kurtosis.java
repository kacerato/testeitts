package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class Kurtosis extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = 2784465764798260919L;
    protected boolean incMoment;
    protected FourthMoment moment;

    public Kurtosis() {
        this.incMoment = true;
        this.moment = new FourthMoment();
    }

    @Override
    public void clear() {
        if (this.incMoment) {
            this.moment.clear();
        }
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, i10, i11) || i11 <= 3) {
            return Double.NaN;
        }
        Variance variance = new Variance();
        variance.incrementAll(dArr, i10, i11);
        double d10 = variance.moment.f100341m1;
        double sqrt = FastMath.sqrt(variance.getResult());
        double d11 = 0.0d;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            d11 += FastMath.pow(dArr[i12] - d10, 4.0d);
        }
        double d12 = i11;
        double d13 = (d12 + 1.0d) * d12;
        double d14 = d12 - 1.0d;
        double d15 = d12 - 2.0d;
        double d16 = d12 - 3.0d;
        return ((d13 / ((d14 * d15) * d16)) * (d11 / FastMath.pow(sqrt, 4.0d))) - ((FastMath.pow(d14, 2.0d) * 3.0d) / (d15 * d16));
    }

    @Override
    public long getN() {
        return this.moment.getN();
    }

    @Override
    public double getResult() {
        if (this.moment.getN() <= 3) {
            return Double.NaN;
        }
        FourthMoment fourthMoment = this.moment;
        double d10 = fourthMoment.f100344m2;
        long j10 = fourthMoment.f100342n;
        double d11 = d10 / (j10 - 1);
        if (j10 <= 3 || d11 < 1.0E-19d) {
            return 0.0d;
        }
        double d12 = j10;
        double result = (d12 + 1.0d) * d12 * fourthMoment.getResult();
        double d13 = this.moment.f100344m2;
        double d14 = d12 - 1.0d;
        return (result - (((d13 * 3.0d) * d13) * d14)) / ((((d14 * (d12 - 2.0d)) * (d12 - 3.0d)) * d11) * d11);
    }

    @Override
    public void increment(double d10) {
        if (this.incMoment) {
            this.moment.increment(d10);
        }
    }

    @Override
    public Kurtosis copy() {
        Kurtosis kurtosis = new Kurtosis();
        copy(this, kurtosis);
        return kurtosis;
    }

    public Kurtosis(FourthMoment fourthMoment) {
        this.incMoment = false;
        this.moment = fourthMoment;
    }

    public static void copy(Kurtosis kurtosis, Kurtosis kurtosis2) throws NullArgumentException {
        MathUtils.checkNotNull(kurtosis);
        MathUtils.checkNotNull(kurtosis2);
        kurtosis2.setData(kurtosis.getDataRef());
        kurtosis2.moment = kurtosis.moment.copy();
        kurtosis2.incMoment = kurtosis.incMoment;
    }

    public Kurtosis(Kurtosis kurtosis) throws NullArgumentException {
        copy(kurtosis, this);
    }
}
