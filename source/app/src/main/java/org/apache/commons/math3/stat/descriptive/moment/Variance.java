package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.stat.descriptive.WeightedEvaluation;
import org.apache.commons.math3.util.MathUtils;

public class Variance extends AbstractStorelessUnivariateStatistic implements Serializable, WeightedEvaluation {
    private static final long serialVersionUID = -9111962718267217978L;
    protected boolean incMoment;
    private boolean isBiasCorrected;
    protected SecondMoment moment;

    public Variance() {
        this.moment = null;
        this.incMoment = true;
        this.isBiasCorrected = true;
        this.moment = new SecondMoment();
    }

    @Override
    public void clear() {
        if (this.incMoment) {
            this.moment.clear();
        }
    }

    @Override
    public double evaluate(double[] dArr) throws MathIllegalArgumentException {
        if (dArr != null) {
            return evaluate(dArr, 0, dArr.length);
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    @Override
    public long getN() {
        return this.moment.getN();
    }

    @Override
    public double getResult() {
        double d10;
        double d11;
        SecondMoment secondMoment = this.moment;
        long j10 = secondMoment.f100342n;
        if (j10 == 0) {
            return Double.NaN;
        }
        if (j10 == 1) {
            return 0.0d;
        }
        if (this.isBiasCorrected) {
            d10 = secondMoment.f100344m2;
            d11 = j10 - 1.0d;
        } else {
            d10 = secondMoment.f100344m2;
            d11 = j10;
        }
        return d10 / d11;
    }

    @Override
    public void increment(double d10) {
        if (this.incMoment) {
            this.moment.increment(d10);
        }
    }

    public boolean isBiasCorrected() {
        return this.isBiasCorrected;
    }

    public void setBiasCorrected(boolean z10) {
        this.isBiasCorrected = z10;
    }

    @Override
    public Variance copy() {
        Variance variance = new Variance();
        copy(this, variance);
        return variance;
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (test(dArr, i10, i11)) {
            clear();
            if (i11 == 1) {
                return 0.0d;
            }
            if (i11 > 1) {
                return evaluate(dArr, new Mean().evaluate(dArr, i10, i11), i10, i11);
            }
        }
        return Double.NaN;
    }

    public static void copy(Variance variance, Variance variance2) throws NullArgumentException {
        MathUtils.checkNotNull(variance);
        MathUtils.checkNotNull(variance2);
        variance2.setData(variance.getDataRef());
        variance2.moment = variance.moment.copy();
        variance2.isBiasCorrected = variance.isBiasCorrected;
        variance2.incMoment = variance.incMoment;
    }

    public Variance(SecondMoment secondMoment) {
        this.isBiasCorrected = true;
        this.incMoment = false;
        this.moment = secondMoment;
    }

    @Override
    public double evaluate(double[] dArr, double[] dArr2, int i10, int i11) throws MathIllegalArgumentException {
        if (test(dArr, dArr2, i10, i11)) {
            clear();
            if (i11 == 1) {
                return 0.0d;
            }
            if (i11 > 1) {
                return evaluate(dArr, dArr2, new Mean().evaluate(dArr, dArr2, i10, i11), i10, i11);
            }
        }
        return Double.NaN;
    }

    public Variance(boolean z10) {
        this.moment = null;
        this.incMoment = true;
        this.isBiasCorrected = true;
        this.moment = new SecondMoment();
        this.isBiasCorrected = z10;
    }

    @Override
    public double evaluate(double[] dArr, double[] dArr2) throws MathIllegalArgumentException {
        return evaluate(dArr, dArr2, 0, dArr.length);
    }

    public double evaluate(double[] dArr, double d10, int i10, int i11) throws MathIllegalArgumentException {
        double d11;
        if (test(dArr, i10, i11)) {
            double d12 = 0.0d;
            if (i11 == 1) {
                return 0.0d;
            }
            if (i11 > 1) {
                double d13 = 0.0d;
                for (int i12 = i10; i12 < i10 + i11; i12++) {
                    double d14 = dArr[i12] - d10;
                    d12 += d14 * d14;
                    d13 += d14;
                }
                double d15 = i11;
                if (this.isBiasCorrected) {
                    d11 = d12 - ((d13 * d13) / d15);
                    d15 -= 1.0d;
                } else {
                    d11 = d12 - ((d13 * d13) / d15);
                }
                return d11 / d15;
            }
        }
        return Double.NaN;
    }

    public Variance(boolean z10, SecondMoment secondMoment) {
        this.incMoment = false;
        this.moment = secondMoment;
        this.isBiasCorrected = z10;
    }

    public double evaluate(double[] dArr, double d10) throws MathIllegalArgumentException {
        return evaluate(dArr, d10, 0, dArr.length);
    }

    public double evaluate(double[] dArr, double[] dArr2, double d10, int i10, int i11) throws MathIllegalArgumentException {
        int i12;
        double d11;
        int i13 = i10;
        if (test(dArr, dArr2, i13, i11)) {
            double d12 = 0.0d;
            if (i11 == 1) {
                return 0.0d;
            }
            if (i11 > 1) {
                int i14 = i13;
                double d13 = 0.0d;
                double d14 = 0.0d;
                while (true) {
                    i12 = i13 + i11;
                    if (i14 >= i12) {
                        break;
                    }
                    double d15 = dArr[i14] - d10;
                    double d16 = dArr2[i14];
                    d13 += d15 * d15 * d16;
                    d14 += d16 * d15;
                    i14++;
                }
                while (i13 < i12) {
                    d12 += dArr2[i13];
                    i13++;
                }
                if (this.isBiasCorrected) {
                    d11 = d13 - ((d14 * d14) / d12);
                    d12 -= 1.0d;
                } else {
                    d11 = d13 - ((d14 * d14) / d12);
                }
                return d11 / d12;
            }
        }
        return Double.NaN;
    }

    public Variance(Variance variance) throws NullArgumentException {
        this.moment = null;
        this.incMoment = true;
        this.isBiasCorrected = true;
        copy(variance, this);
    }

    public double evaluate(double[] dArr, double[] dArr2, double d10) throws MathIllegalArgumentException {
        return evaluate(dArr, dArr2, d10, 0, dArr.length);
    }
}
