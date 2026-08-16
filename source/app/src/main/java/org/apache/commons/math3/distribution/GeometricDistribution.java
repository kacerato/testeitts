package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

public class GeometricDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = 20130507;
    private final double log1mProbabilityOfSuccess;
    private final double logProbabilityOfSuccess;
    private final double probabilityOfSuccess;

    public GeometricDistribution(double d10) {
        this(new Well19937c(), d10);
    }

    @Override
    public double cumulativeProbability(int i10) {
        if (i10 < 0) {
            return 0.0d;
        }
        return -FastMath.expm1(this.log1mProbabilityOfSuccess * (i10 + 1));
    }

    @Override
    public double getNumericalMean() {
        double d10 = this.probabilityOfSuccess;
        return (1.0d - d10) / d10;
    }

    @Override
    public double getNumericalVariance() {
        double d10 = this.probabilityOfSuccess;
        return (1.0d - d10) / (d10 * d10);
    }

    public double getProbabilityOfSuccess() {
        return this.probabilityOfSuccess;
    }

    @Override
    public int getSupportLowerBound() {
        return 0;
    }

    @Override
    public int getSupportUpperBound() {
        return Integer.MAX_VALUE;
    }

    @Override
    public int inverseCumulativeProbability(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        if (d10 == 1.0d) {
            return Integer.MAX_VALUE;
        }
        if (d10 == 0.0d) {
            return 0;
        }
        return Math.max(0, (int) Math.ceil((FastMath.log1p(-d10) / this.log1mProbabilityOfSuccess) - 1.0d));
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public double logProbability(int i10) {
        if (i10 < 0) {
            return Double.NEGATIVE_INFINITY;
        }
        return (i10 * this.log1mProbabilityOfSuccess) + this.logProbabilityOfSuccess;
    }

    @Override
    public double probability(int i10) {
        if (i10 < 0) {
            return 0.0d;
        }
        return FastMath.exp(this.log1mProbabilityOfSuccess * i10) * this.probabilityOfSuccess;
    }

    public GeometricDistribution(RandomGenerator randomGenerator, double d10) {
        super(randomGenerator);
        if (d10 > 0.0d && d10 <= 1.0d) {
            this.probabilityOfSuccess = d10;
            this.logProbabilityOfSuccess = FastMath.log(d10);
            this.log1mProbabilityOfSuccess = FastMath.log1p(-d10);
            return;
        }
        throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_LEFT, Double.valueOf(d10), 0, 1);
    }
}
