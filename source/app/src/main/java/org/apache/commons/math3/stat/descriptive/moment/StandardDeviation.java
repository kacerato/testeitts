package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class StandardDeviation extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = 5728716329662425188L;
    private Variance variance;

    public StandardDeviation() {
        this.variance = null;
        this.variance = new Variance();
    }

    @Override
    public void clear() {
        this.variance.clear();
    }

    @Override
    public double evaluate(double[] dArr) throws MathIllegalArgumentException {
        return FastMath.sqrt(this.variance.evaluate(dArr));
    }

    @Override
    public long getN() {
        return this.variance.getN();
    }

    @Override
    public double getResult() {
        return FastMath.sqrt(this.variance.getResult());
    }

    @Override
    public void increment(double d10) {
        this.variance.increment(d10);
    }

    public boolean isBiasCorrected() {
        return this.variance.isBiasCorrected();
    }

    public void setBiasCorrected(boolean z10) {
        this.variance.setBiasCorrected(z10);
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return FastMath.sqrt(this.variance.evaluate(dArr, i10, i11));
    }

    @Override
    public StandardDeviation copy() {
        StandardDeviation standardDeviation = new StandardDeviation();
        copy(this, standardDeviation);
        return standardDeviation;
    }

    public double evaluate(double[] dArr, double d10, int i10, int i11) throws MathIllegalArgumentException {
        return FastMath.sqrt(this.variance.evaluate(dArr, d10, i10, i11));
    }

    public StandardDeviation(SecondMoment secondMoment) {
        this.variance = null;
        this.variance = new Variance(secondMoment);
    }

    public double evaluate(double[] dArr, double d10) throws MathIllegalArgumentException {
        return FastMath.sqrt(this.variance.evaluate(dArr, d10));
    }

    public static void copy(StandardDeviation standardDeviation, StandardDeviation standardDeviation2) throws NullArgumentException {
        MathUtils.checkNotNull(standardDeviation);
        MathUtils.checkNotNull(standardDeviation2);
        standardDeviation2.setData(standardDeviation.getDataRef());
        standardDeviation2.variance = standardDeviation.variance.copy();
    }

    public StandardDeviation(StandardDeviation standardDeviation) throws NullArgumentException {
        this.variance = null;
        copy(standardDeviation, this);
    }

    public StandardDeviation(boolean z10) {
        this.variance = null;
        this.variance = new Variance(z10);
    }

    public StandardDeviation(boolean z10, SecondMoment secondMoment) {
        this.variance = null;
        this.variance = new Variance(z10, secondMoment);
    }
}
