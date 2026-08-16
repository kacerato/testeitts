package org.apache.commons.math3.stat.descriptive;

import java.io.Serializable;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class StatisticalSummaryValues implements Serializable, StatisticalSummary {
    private static final long serialVersionUID = -5108854841843722536L;
    private final double max;
    private final double mean;
    private final double min;

    private final long f100339n;
    private final double sum;
    private final double variance;

    public StatisticalSummaryValues(double d10, double d11, long j10, double d12, double d13, double d14) {
        this.mean = d10;
        this.variance = d11;
        this.f100339n = j10;
        this.max = d12;
        this.min = d13;
        this.sum = d14;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StatisticalSummaryValues)) {
            return false;
        }
        StatisticalSummaryValues statisticalSummaryValues = (StatisticalSummaryValues) obj;
        return Precision.equalsIncludingNaN(statisticalSummaryValues.getMax(), getMax()) && Precision.equalsIncludingNaN(statisticalSummaryValues.getMean(), getMean()) && Precision.equalsIncludingNaN(statisticalSummaryValues.getMin(), getMin()) && Precision.equalsIncludingNaN((float) statisticalSummaryValues.getN(), (float) getN()) && Precision.equalsIncludingNaN(statisticalSummaryValues.getSum(), getSum()) && Precision.equalsIncludingNaN(statisticalSummaryValues.getVariance(), getVariance());
    }

    @Override
    public double getMax() {
        return this.max;
    }

    @Override
    public double getMean() {
        return this.mean;
    }

    @Override
    public double getMin() {
        return this.min;
    }

    @Override
    public long getN() {
        return this.f100339n;
    }

    @Override
    public double getStandardDeviation() {
        return FastMath.sqrt(this.variance);
    }

    @Override
    public double getSum() {
        return this.sum;
    }

    @Override
    public double getVariance() {
        return this.variance;
    }

    public int hashCode() {
        return ((((((((((MathUtils.hash(getMax()) + 31) * 31) + MathUtils.hash(getMean())) * 31) + MathUtils.hash(getMin())) * 31) + MathUtils.hash(getN())) * 31) + MathUtils.hash(getSum())) * 31) + MathUtils.hash(getVariance());
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("StatisticalSummaryValues:");
        stringBuffer.append("\n");
        stringBuffer.append("n: ");
        stringBuffer.append(getN());
        stringBuffer.append("\n");
        stringBuffer.append("min: ");
        stringBuffer.append(getMin());
        stringBuffer.append("\n");
        stringBuffer.append("max: ");
        stringBuffer.append(getMax());
        stringBuffer.append("\n");
        stringBuffer.append("mean: ");
        stringBuffer.append(getMean());
        stringBuffer.append("\n");
        stringBuffer.append("std dev: ");
        stringBuffer.append(getStandardDeviation());
        stringBuffer.append("\n");
        stringBuffer.append("variance: ");
        stringBuffer.append(getVariance());
        stringBuffer.append("\n");
        stringBuffer.append("sum: ");
        stringBuffer.append(getSum());
        stringBuffer.append("\n");
        return stringBuffer.toString();
    }
}
