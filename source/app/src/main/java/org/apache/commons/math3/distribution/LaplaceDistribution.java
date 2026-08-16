package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

public class LaplaceDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20141003;
    private final double beta;
    private final double mu;

    public LaplaceDistribution(double d10, double d11) {
        this(new Well19937c(), d10, d11);
    }

    @Override
    public double cumulativeProbability(double d10) {
        double d11 = this.mu;
        return d10 <= d11 ? FastMath.exp((d10 - d11) / this.beta) / 2.0d : 1.0d - (FastMath.exp((d11 - d10) / this.beta) / 2.0d);
    }

    @Override
    public double density(double d10) {
        return FastMath.exp((-FastMath.abs(d10 - this.mu)) / this.beta) / (this.beta * 2.0d);
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
        double d10 = this.beta;
        return 2.0d * d10 * d10;
    }

    public double getScale() {
        return this.beta;
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
            return Double.NEGATIVE_INFINITY;
        }
        if (d10 == 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        double d11 = d10 * 2.0d;
        return this.mu + (this.beta * (d10 > 0.5d ? -Math.log(2.0d - d11) : Math.log(d11)));
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

    public LaplaceDistribution(RandomGenerator randomGenerator, double d10, double d11) {
        super(randomGenerator);
        if (d11 > 0.0d) {
            this.mu = d10;
            this.beta = d11;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_SCALE, Double.valueOf(d11));
    }
}
