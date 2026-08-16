package org.apache.commons.math3.stat.descriptive;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.exception.NullArgumentException;

public class AggregateSummaryStatistics implements StatisticalSummary, Serializable {
    private static final long serialVersionUID = -8207112444016386906L;
    private final SummaryStatistics statistics;
    private final SummaryStatistics statisticsPrototype;

    public static class AggregatingSummaryStatistics extends SummaryStatistics {
        private static final long serialVersionUID = 1;
        private final SummaryStatistics aggregateStatistics;

        public AggregatingSummaryStatistics(SummaryStatistics summaryStatistics) {
            this.aggregateStatistics = summaryStatistics;
        }

        @Override
        public void addValue(double d10) {
            super.addValue(d10);
            synchronized (this.aggregateStatistics) {
                this.aggregateStatistics.addValue(d10);
            }
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AggregatingSummaryStatistics)) {
                return false;
            }
            AggregatingSummaryStatistics aggregatingSummaryStatistics = (AggregatingSummaryStatistics) obj;
            return super.equals(aggregatingSummaryStatistics) && this.aggregateStatistics.equals(aggregatingSummaryStatistics.aggregateStatistics);
        }

        @Override
        public int hashCode() {
            return super.hashCode() + 123 + this.aggregateStatistics.hashCode();
        }
    }

    public AggregateSummaryStatistics() {
        this(new SummaryStatistics());
    }

    public static StatisticalSummaryValues aggregate(Collection<? extends StatisticalSummary> collection) {
        double d10;
        double d11;
        if (collection == null) {
            return null;
        }
        Iterator<? extends StatisticalSummary> it = collection.iterator();
        if (!it.hasNext()) {
            return null;
        }
        StatisticalSummary next = it.next();
        long n10 = next.getN();
        double min = next.getMin();
        double sum = next.getSum();
        double max = next.getMax();
        double variance = next.getVariance() * (n10 - 1.0d);
        double d12 = min;
        double d13 = sum;
        double d14 = max;
        double mean = next.getMean();
        while (it.hasNext()) {
            StatisticalSummary next2 = it.next();
            if (next2.getMin() < d12 || Double.isNaN(d12)) {
                d12 = next2.getMin();
            }
            if (next2.getMax() > d14 || Double.isNaN(d14)) {
                d14 = next2.getMax();
            }
            d13 += next2.getSum();
            double d15 = n10;
            double n11 = next2.getN();
            long j10 = (long) (d15 + n11);
            double mean2 = next2.getMean() - mean;
            double d16 = j10;
            mean = d13 / d16;
            variance = variance + (next2.getVariance() * (n11 - 1.0d)) + ((((mean2 * mean2) * d15) * n11) / d16);
            n10 = j10;
        }
        if (n10 == 0) {
            d11 = Double.NaN;
        } else {
            if (n10 != 1) {
                d10 = variance / (n10 - 1);
                return new StatisticalSummaryValues(mean, d10, n10, d14, d12, d13);
            }
            d11 = 0.0d;
        }
        d10 = d11;
        return new StatisticalSummaryValues(mean, d10, n10, d14, d12, d13);
    }

    public SummaryStatistics createContributingStatistics() {
        AggregatingSummaryStatistics aggregatingSummaryStatistics = new AggregatingSummaryStatistics(this.statistics);
        SummaryStatistics.copy(this.statisticsPrototype, aggregatingSummaryStatistics);
        return aggregatingSummaryStatistics;
    }

    public double getGeometricMean() {
        double geometricMean;
        synchronized (this.statistics) {
            geometricMean = this.statistics.getGeometricMean();
        }
        return geometricMean;
    }

    @Override
    public double getMax() {
        double max;
        synchronized (this.statistics) {
            max = this.statistics.getMax();
        }
        return max;
    }

    @Override
    public double getMean() {
        double mean;
        synchronized (this.statistics) {
            mean = this.statistics.getMean();
        }
        return mean;
    }

    @Override
    public double getMin() {
        double min;
        synchronized (this.statistics) {
            min = this.statistics.getMin();
        }
        return min;
    }

    @Override
    public long getN() {
        long n10;
        synchronized (this.statistics) {
            n10 = this.statistics.getN();
        }
        return n10;
    }

    public double getSecondMoment() {
        double secondMoment;
        synchronized (this.statistics) {
            secondMoment = this.statistics.getSecondMoment();
        }
        return secondMoment;
    }

    @Override
    public double getStandardDeviation() {
        double standardDeviation;
        synchronized (this.statistics) {
            standardDeviation = this.statistics.getStandardDeviation();
        }
        return standardDeviation;
    }

    @Override
    public double getSum() {
        double sum;
        synchronized (this.statistics) {
            sum = this.statistics.getSum();
        }
        return sum;
    }

    public double getSumOfLogs() {
        double sumOfLogs;
        synchronized (this.statistics) {
            sumOfLogs = this.statistics.getSumOfLogs();
        }
        return sumOfLogs;
    }

    public StatisticalSummary getSummary() {
        StatisticalSummaryValues statisticalSummaryValues;
        synchronized (this.statistics) {
            statisticalSummaryValues = new StatisticalSummaryValues(getMean(), getVariance(), getN(), getMax(), getMin(), getSum());
        }
        return statisticalSummaryValues;
    }

    public double getSumsq() {
        double sumsq;
        synchronized (this.statistics) {
            sumsq = this.statistics.getSumsq();
        }
        return sumsq;
    }

    @Override
    public double getVariance() {
        double variance;
        synchronized (this.statistics) {
            variance = this.statistics.getVariance();
        }
        return variance;
    }

    public AggregateSummaryStatistics(SummaryStatistics summaryStatistics) throws NullArgumentException {
        this(summaryStatistics, summaryStatistics == null ? null : new SummaryStatistics(summaryStatistics));
    }

    public AggregateSummaryStatistics(SummaryStatistics summaryStatistics, SummaryStatistics summaryStatistics2) {
        this.statisticsPrototype = summaryStatistics == null ? new SummaryStatistics() : summaryStatistics;
        this.statistics = summaryStatistics2 == null ? new SummaryStatistics() : summaryStatistics2;
    }
}
