package org.apache.commons.math3.stat.descriptive;

import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathUtils;

public class SynchronizedSummaryStatistics extends SummaryStatistics {
    private static final long serialVersionUID = 1909861009042253704L;

    public SynchronizedSummaryStatistics() {
    }

    @Override
    public synchronized void addValue(double d10) {
        super.addValue(d10);
    }

    @Override
    public synchronized void clear() {
        super.clear();
    }

    @Override
    public synchronized boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public synchronized StorelessUnivariateStatistic getGeoMeanImpl() {
        return super.getGeoMeanImpl();
    }

    @Override
    public synchronized double getGeometricMean() {
        return super.getGeometricMean();
    }

    @Override
    public synchronized double getMax() {
        return super.getMax();
    }

    @Override
    public synchronized StorelessUnivariateStatistic getMaxImpl() {
        return super.getMaxImpl();
    }

    @Override
    public synchronized double getMean() {
        return super.getMean();
    }

    @Override
    public synchronized StorelessUnivariateStatistic getMeanImpl() {
        return super.getMeanImpl();
    }

    @Override
    public synchronized double getMin() {
        return super.getMin();
    }

    @Override
    public synchronized StorelessUnivariateStatistic getMinImpl() {
        return super.getMinImpl();
    }

    @Override
    public synchronized long getN() {
        return super.getN();
    }

    @Override
    public synchronized double getPopulationVariance() {
        return super.getPopulationVariance();
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
    public synchronized double getSum() {
        return super.getSum();
    }

    @Override
    public synchronized StorelessUnivariateStatistic getSumImpl() {
        return super.getSumImpl();
    }

    @Override
    public synchronized StorelessUnivariateStatistic getSumLogImpl() {
        return super.getSumLogImpl();
    }

    @Override
    public synchronized StatisticalSummary getSummary() {
        return super.getSummary();
    }

    @Override
    public synchronized double getSumsq() {
        return super.getSumsq();
    }

    @Override
    public synchronized StorelessUnivariateStatistic getSumsqImpl() {
        return super.getSumsqImpl();
    }

    @Override
    public synchronized double getVariance() {
        return super.getVariance();
    }

    @Override
    public synchronized StorelessUnivariateStatistic getVarianceImpl() {
        return super.getVarianceImpl();
    }

    @Override
    public synchronized int hashCode() {
        return super.hashCode();
    }

    @Override
    public synchronized void setGeoMeanImpl(StorelessUnivariateStatistic storelessUnivariateStatistic) throws MathIllegalStateException {
        super.setGeoMeanImpl(storelessUnivariateStatistic);
    }

    @Override
    public synchronized void setMaxImpl(StorelessUnivariateStatistic storelessUnivariateStatistic) throws MathIllegalStateException {
        super.setMaxImpl(storelessUnivariateStatistic);
    }

    @Override
    public synchronized void setMeanImpl(StorelessUnivariateStatistic storelessUnivariateStatistic) throws MathIllegalStateException {
        super.setMeanImpl(storelessUnivariateStatistic);
    }

    @Override
    public synchronized void setMinImpl(StorelessUnivariateStatistic storelessUnivariateStatistic) throws MathIllegalStateException {
        super.setMinImpl(storelessUnivariateStatistic);
    }

    @Override
    public synchronized void setSumImpl(StorelessUnivariateStatistic storelessUnivariateStatistic) throws MathIllegalStateException {
        super.setSumImpl(storelessUnivariateStatistic);
    }

    @Override
    public synchronized void setSumLogImpl(StorelessUnivariateStatistic storelessUnivariateStatistic) throws MathIllegalStateException {
        super.setSumLogImpl(storelessUnivariateStatistic);
    }

    @Override
    public synchronized void setSumsqImpl(StorelessUnivariateStatistic storelessUnivariateStatistic) throws MathIllegalStateException {
        super.setSumsqImpl(storelessUnivariateStatistic);
    }

    @Override
    public synchronized void setVarianceImpl(StorelessUnivariateStatistic storelessUnivariateStatistic) throws MathIllegalStateException {
        super.setVarianceImpl(storelessUnivariateStatistic);
    }

    @Override
    public synchronized String toString() {
        return super.toString();
    }

    public SynchronizedSummaryStatistics(SynchronizedSummaryStatistics synchronizedSummaryStatistics) throws NullArgumentException {
        copy(synchronizedSummaryStatistics, this);
    }

    @Override
    public synchronized SynchronizedSummaryStatistics copy() {
        SynchronizedSummaryStatistics synchronizedSummaryStatistics;
        synchronizedSummaryStatistics = new SynchronizedSummaryStatistics();
        copy(this, synchronizedSummaryStatistics);
        return synchronizedSummaryStatistics;
    }

    public static void copy(SynchronizedSummaryStatistics synchronizedSummaryStatistics, SynchronizedSummaryStatistics synchronizedSummaryStatistics2) throws NullArgumentException {
        MathUtils.checkNotNull(synchronizedSummaryStatistics);
        MathUtils.checkNotNull(synchronizedSummaryStatistics2);
        synchronized (synchronizedSummaryStatistics) {
            synchronized (synchronizedSummaryStatistics2) {
                SummaryStatistics.copy(synchronizedSummaryStatistics, synchronizedSummaryStatistics2);
            }
        }
    }
}
