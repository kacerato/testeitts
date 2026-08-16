package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.util.FastMath;

public class NormalApproximationInterval implements BinomialConfidenceInterval {
    @Override
    public ConfidenceInterval createInterval(int i10, int i11, double d10) {
        IntervalUtils.checkParameters(i10, i11, d10);
        double d11 = i10;
        double d12 = i11 / d11;
        double inverseCumulativeProbability = new NormalDistribution().inverseCumulativeProbability(1.0d - ((1.0d - d10) / 2.0d)) * FastMath.sqrt((1.0d / d11) * d12 * (1.0d - d12));
        return new ConfidenceInterval(d12 - inverseCumulativeProbability, d12 + inverseCumulativeProbability, d10);
    }
}
