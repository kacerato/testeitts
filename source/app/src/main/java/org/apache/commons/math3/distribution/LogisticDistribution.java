package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

public class LogisticDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20141003;
    private final double mu;

    private final double f100153s;

    public LogisticDistribution(double d10, double d11) {
        this(new Well19937c(), d10, d11);
    }

    @Override
    public double cumulativeProbability(double d10) {
        return 1.0d / (FastMath.exp(-((1.0d / this.f100153s) * (d10 - this.mu))) + 1.0d);
    }

    @Override
    public double density(double d10) {
        double exp = FastMath.exp(-((d10 - this.mu) / this.f100153s));
        double d11 = (1.0d / this.f100153s) * exp;
        double d12 = exp + 1.0d;
        return d11 / (d12 * d12);
    }

    public double getLocation() {
        return this.mu;
    }

    @Override
    public double getNumericalMean() {
        return this.mu;
    }

    @Override
    public double getNumericalVariance() {
        double d10 = this.f100153s;
        return (1.0d / (d10 * d10)) * 3.289868133696453d;
    }

    public double getScale() {
        return this.f100153s;
    }

    @Override
    public double getSupportLowerBound() {
        return Double.NEGATIVE_INFINITY;
    }

    @Override
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
    }

    @Override
    public double inverseCumulativeProbability(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), Double.valueOf(0.0d), Double.valueOf(1.0d));
        }
        if (d10 == 0.0d) {
            return 0.0d;
        }
        if (d10 == 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return (this.f100153s * Math.log(d10 / (1.0d - d10))) + this.mu;
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public boolean isSupportLowerBoundInclusive() {
        return false;
    }

    @Override
    public boolean isSupportUpperBoundInclusive() {
        return false;
    }

    public LogisticDistribution(RandomGenerator randomGenerator, double d10, double d11) {
        super(randomGenerator);
        if (d11 > 0.0d) {
            this.mu = d10;
            this.f100153s = d11;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_SCALE, Double.valueOf(d11));
    }
}
