package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.util.FastMath;

public class AgrestiCoullInterval implements BinomialConfidenceInterval {
    @Override
    public ConfidenceInterval createInterval(int i10, int i11, double d10) {
        IntervalUtils.checkParameters(i10, i11, d10);
        double inverseCumulativeProbability = new NormalDistribution().inverseCumulativeProbability(1.0d - ((1.0d - d10) / 2.0d));
        double pow = FastMath.pow(inverseCumulativeProbability, 2);
        double d11 = 1.0d / (i10 + pow);
        double d12 = (i11 + (pow * 0.5d)) * d11;
        double sqrt = inverseCumulativeProbability * FastMath.sqrt(d11 * d12 * (1.0d - d12));
        return new ConfidenceInterval(d12 - sqrt, d12 + sqrt, d10);
    }
}
