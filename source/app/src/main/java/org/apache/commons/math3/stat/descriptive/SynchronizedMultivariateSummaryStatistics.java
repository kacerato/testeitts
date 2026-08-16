package org.apache.commons.math3.stat.descriptive;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.linear.RealMatrix;

public class SynchronizedMultivariateSummaryStatistics extends MultivariateSummaryStatistics {
    private static final long serialVersionUID = 7099834153347155363L;

    public SynchronizedMultivariateSummaryStatistics(int i10, boolean z10) {
        super(i10, z10);
    }

    @Override
    public synchronized void addValue(double[] dArr) throws DimensionMismatchException {
        super.addValue(dArr);
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
    public synchronized RealMatrix getCovariance() {
        return super.getCovariance();
    }

    @Override
    public synchronized int getDimension() {
        return super.getDimension();
    }

    @Override
    public synchronized StorelessUnivariateStatistic[] getGeoMeanImpl() {
        return super.getGeoMeanImpl();
    }

    @Override
    public synchronized double[] getGeometricMean() {
        return super.getGeometricMean();
    }

    @Override
    public synchronized double[] getMax() {
        return super.getMax();
    }

    @Override
    public synchronized StorelessUnivariateStatistic[] getMaxImpl() {
        return super.getMaxImpl();
    }

    @Override
    public synchronized double[] getMean() {
        return super.getMean();
    }

    @Override
    public synchronized StorelessUnivariateStatistic[] getMeanImpl() {
        return super.getMeanImpl();
    }

    @Override
    public synchronized double[] getMin() {
        return super.getMin();
    }

    @Override
    public synchronized StorelessUnivariateStatistic[] getMinImpl() {
        return super.getMinImpl();
    }

    @Override
    public synchronized long getN() {
        return super.getN();
    }

    @Override
    public synchronized double[] getStandardDeviation() {
        return super.getStandardDeviation();
    }

    @Override
    public synchronized double[] getSum() {
        return super.getSum();
    }

    @Override
    public synchronized StorelessUnivariateStatistic[] getSumImpl() {
        return super.getSumImpl();
    }

    @Override
    public synchronized double[] getSumLog() {
        return super.getSumLog();
    }

    @Override
    public synchronized StorelessUnivariateStatistic[] getSumLogImpl() {
        return super.getSumLogImpl();
    }

    @Override
    public synchronized double[] getSumSq() {
        return super.getSumSq();
    }

    @Override
    public synchronized StorelessUnivariateStatistic[] getSumsqImpl() {
        return super.getSumsqImpl();
    }

    @Override
    public synchronized int hashCode() {
        return super.hashCode();
    }

    @Override
    public synchronized void setGeoMeanImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws DimensionMismatchException, MathIllegalStateException {
        super.setGeoMeanImpl(storelessUnivariateStatisticArr);
    }

    @Override
    public synchronized void setMaxImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws DimensionMismatchException, MathIllegalStateException {
        super.setMaxImpl(storelessUnivariateStatisticArr);
    }

    @Override
    public synchronized void setMeanImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws DimensionMismatchException, MathIllegalStateException {
        super.setMeanImpl(storelessUnivariateStatisticArr);
    }

    @Override
    public synchronized void setMinImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws DimensionMismatchException, MathIllegalStateException {
        super.setMinImpl(storelessUnivariateStatisticArr);
    }

    @Override
    public synchronized void setSumImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws DimensionMismatchException, MathIllegalStateException {
        super.setSumImpl(storelessUnivariateStatisticArr);
    }

    @Override
    public synchronized void setSumLogImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws DimensionMismatchException, MathIllegalStateException {
        super.setSumLogImpl(storelessUnivariateStatisticArr);
    }

    @Override
    public synchronized void setSumsqImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws DimensionMismatchException, MathIllegalStateException {
        super.setSumsqImpl(storelessUnivariateStatisticArr);
    }

    @Override
    public synchronized String toString() {
        return super.toString();
    }
}
