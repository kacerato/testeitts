package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.FDistribution;

public class ClopperPearsonInterval implements BinomialConfidenceInterval {
    @Override
    public ConfidenceInterval createInterval(int i10, int i11, double d10) {
        double d11;
        double d12;
        IntervalUtils.checkParameters(i10, i11, d10);
        int i12 = i10 - i11;
        int i13 = i12 + 1;
        double d13 = 1.0d - ((1.0d - d10) / 2.0d);
        double inverseCumulativeProbability = new FDistribution(i13 * 2, i11 * 2).inverseCumulativeProbability(d13);
        if (i11 > 0) {
            double d14 = i11;
            d11 = d14 / ((i13 * inverseCumulativeProbability) + d14);
        } else {
            d11 = 0.0d;
        }
        int i14 = i11 + 1;
        double inverseCumulativeProbability2 = new FDistribution(i14 * 2, i12 * 2).inverseCumulativeProbability(d13);
        if (i11 > 0) {
            double d15 = i14 * inverseCumulativeProbability2;
            d12 = d15 / (i12 + d15);
        } else {
            d12 = 0.0d;
        }
        return new ConfidenceInterval(d11, d12, d10);
    }
}
