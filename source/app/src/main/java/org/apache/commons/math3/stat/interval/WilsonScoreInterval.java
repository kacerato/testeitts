package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.util.FastMath;

public class WilsonScoreInterval implements BinomialConfidenceInterval {
    @Override
    public ConfidenceInterval createInterval(int i10, int i11, double d10) {
        IntervalUtils.checkParameters(i10, i11, d10);
        double inverseCumulativeProbability = new NormalDistribution().inverseCumulativeProbability(1.0d - ((1.0d - d10) / 2.0d));
        double pow = FastMath.pow(inverseCumulativeProbability, 2);
        double d11 = i10;
        double d12 = i11 / d11;
        double d13 = 1.0d / d11;
        double d14 = 1.0d / ((d13 * pow) + 1.0d);
        double d15 = ((1.0d / (i10 * 2)) * pow) + d12;
        double sqrt = inverseCumulativeProbability * FastMath.sqrt((d13 * d12 * (1.0d - d12)) + ((1.0d / (FastMath.pow(d11, 2) * 4.0d)) * pow));
        return new ConfidenceInterval((d15 - sqrt) * d14, d14 * (d15 + sqrt), d10);
    }
}
