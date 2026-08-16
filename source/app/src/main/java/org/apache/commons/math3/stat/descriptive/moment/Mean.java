package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.stat.descriptive.WeightedEvaluation;
import org.apache.commons.math3.stat.descriptive.summary.Sum;
import org.apache.commons.math3.util.MathUtils;

public class Mean extends AbstractStorelessUnivariateStatistic implements Serializable, WeightedEvaluation {
    private static final long serialVersionUID = -1296043746617791564L;
    protected boolean incMoment;
    protected FirstMoment moment;

    public Mean() {
        this.incMoment = true;
        this.moment = new FirstMoment();
    }

    @Override
    public void clear() {
        if (this.incMoment) {
            this.moment.clear();
        }
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, i10, i11)) {
            return Double.NaN;
        }
        double d10 = i11;
        double evaluate = new Sum().evaluate(dArr, i10, i11) / d10;
        double d11 = 0.0d;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            d11 += dArr[i12] - evaluate;
        }
        return evaluate + (d11 / d10);
    }

    @Override
    public long getN() {
        return this.moment.getN();
    }

    @Override
    public double getResult() {
        return this.moment.f100341m1;
    }

    @Override
    public void increment(double d10) {
        if (this.incMoment) {
            this.moment.increment(d10);
        }
    }

    @Override
    public Mean copy() {
        Mean mean = new Mean();
        copy(this, mean);
        return mean;
    }

    public Mean(FirstMoment firstMoment) {
        this.moment = firstMoment;
        this.incMoment = false;
    }

    public static void copy(Mean mean, Mean mean2) throws NullArgumentException {
        MathUtils.checkNotNull(mean);
        MathUtils.checkNotNull(mean2);
        mean2.setData(mean.getDataRef());
        mean2.incMoment = mean.incMoment;
        mean2.moment = mean.moment.copy();
    }

    @Override
    public double evaluate(double[] dArr, double[] dArr2, int i10, int i11) throws MathIllegalArgumentException {
        if (!test(dArr, dArr2, i10, i11)) {
            return Double.NaN;
        }
        Sum sum = new Sum();
        double evaluate = sum.evaluate(dArr2, i10, i11);
        double evaluate2 = sum.evaluate(dArr, dArr2, i10, i11) / evaluate;
        double d10 = 0.0d;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            d10 += dArr2[i12] * (dArr[i12] - evaluate2);
        }
        return evaluate2 + (d10 / evaluate);
    }

    public Mean(Mean mean) throws NullArgumentException {
        copy(mean, this);
    }

    @Override
    public double evaluate(double[] dArr, double[] dArr2) throws MathIllegalArgumentException {
        return evaluate(dArr, dArr2, 0, dArr.length);
    }
}
