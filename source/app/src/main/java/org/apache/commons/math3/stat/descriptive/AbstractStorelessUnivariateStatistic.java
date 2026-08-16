package org.apache.commons.math3.stat.descriptive;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public abstract class AbstractStorelessUnivariateStatistic extends AbstractUnivariateStatistic implements StorelessUnivariateStatistic {
    @Override
    public abstract void clear();

    @Override
    public abstract StorelessUnivariateStatistic copy();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractStorelessUnivariateStatistic)) {
            return false;
        }
        AbstractStorelessUnivariateStatistic abstractStorelessUnivariateStatistic = (AbstractStorelessUnivariateStatistic) obj;
        return Precision.equalsIncludingNaN(abstractStorelessUnivariateStatistic.getResult(), getResult()) && Precision.equalsIncludingNaN((float) abstractStorelessUnivariateStatistic.getN(), (float) getN());
    }

    @Override
    public double evaluate(double[] dArr) throws MathIllegalArgumentException {
        if (dArr != null) {
            return evaluate(dArr, 0, dArr.length);
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    @Override
    public abstract double getResult();

    public int hashCode() {
        return ((MathUtils.hash(getResult()) + 31) * 31) + MathUtils.hash(getN());
    }

    @Override
    public abstract void increment(double d10);

    @Override
    public void incrementAll(double[] dArr) throws MathIllegalArgumentException {
        if (dArr != null) {
            incrementAll(dArr, 0, dArr.length);
            return;
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (test(dArr, i10, i11)) {
            clear();
            incrementAll(dArr, i10, i11);
        }
        return getResult();
    }

    @Override
    public void incrementAll(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (test(dArr, i10, i11)) {
            int i12 = i11 + i10;
            while (i10 < i12) {
                increment(dArr[i10]);
                i10++;
            }
        }
    }
}
