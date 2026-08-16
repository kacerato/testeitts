package org.apache.commons.math3.stat.descriptive;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathUtils;

public class SynchronizedDescriptiveStatistics extends DescriptiveStatistics {
    private static final long serialVersionUID = 1;

    public SynchronizedDescriptiveStatistics() {
        this(-1);
    }

    @Override
    public synchronized void addValue(double d10) {
        super.addValue(d10);
    }

    @Override
    public synchronized double apply(UnivariateStatistic univariateStatistic) {
        return super.apply(univariateStatistic);
    }

    @Override
    public synchronized void clear() {
        super.clear();
    }

    @Override
    public synchronized double getElement(int i10) {
        return super.getElement(i10);
    }

    @Override
    public synchronized long getN() {
        return super.getN();
    }

    @Override
    public synchronized double getQuadraticMean() {
        return super.getQuadraticMean();
    }

    @Override
    public synchronized double getStandardDeviation() {
        return super.getStandardDeviation();
    }

    @Override
    public synchronized double[] getValues() {
        return super.getValues();
    }

    @Override
    public synchronized int getWindowSize() {
        return super.getWindowSize();
    }

    @Override
    public synchronized void setWindowSize(int i10) throws MathIllegalArgumentException {
        super.setWindowSize(i10);
    }

    @Override
    public synchronized String toString() {
        return super.toString();
    }

    public SynchronizedDescriptiveStatistics(int i10) throws MathIllegalArgumentException {
        super(i10);
    }

    @Override
    public synchronized SynchronizedDescriptiveStatistics copy() {
        SynchronizedDescriptiveStatistics synchronizedDescriptiveStatistics;
        synchronizedDescriptiveStatistics = new SynchronizedDescriptiveStatistics();
        copy(this, synchronizedDescriptiveStatistics);
        return synchronizedDescriptiveStatistics;
    }

    public SynchronizedDescriptiveStatistics(SynchronizedDescriptiveStatistics synchronizedDescriptiveStatistics) throws NullArgumentException {
        copy(synchronizedDescriptiveStatistics, this);
    }

    public static void copy(SynchronizedDescriptiveStatistics synchronizedDescriptiveStatistics, SynchronizedDescriptiveStatistics synchronizedDescriptiveStatistics2) throws NullArgumentException {
        MathUtils.checkNotNull(synchronizedDescriptiveStatistics);
        MathUtils.checkNotNull(synchronizedDescriptiveStatistics2);
        synchronized (synchronizedDescriptiveStatistics) {
            synchronized (synchronizedDescriptiveStatistics2) {
                DescriptiveStatistics.copy(synchronizedDescriptiveStatistics, synchronizedDescriptiveStatistics2);
            }
        }
    }
}
