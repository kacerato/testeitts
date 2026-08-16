package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

public class GumbelDistribution extends AbstractRealDistribution {
    private static final double EULER = 0.5778636748954609d;
    private static final long serialVersionUID = 20141003;
    private final double beta;
    private final double mu;

    public GumbelDistribution(double d10, double d11) {
        this(new Well19937c(), d10, d11);
    }

    @Override
    public double cumulativeProbability(double d10) {
        return FastMath.exp(-FastMath.exp(-((d10 - this.mu) / this.beta)));
    }

    @Override
    public double density(double d10) {
        double d11 = -((d10 - this.mu) / this.beta);
        return FastMath.exp(d11 - FastMath.exp(d11)) / this.beta;
    }

    public double getLocation() {
        return this.mu;
    }

    @Override
    public double getNumericalMean() {
        return this.mu + (this.beta * EULER);
    }

    @Override
    public double getNumericalVariance() {
        double d10 = this.beta;
        return d10 * d10 * 1.6449340668482264d;
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
        return this.mu - (FastMath.log(-FastMath.log(d10)) * this.beta);
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

    public GumbelDistribution(RandomGenerator randomGenerator, double d10, double d11) {
        super(randomGenerator);
        if (d11 > 0.0d) {
            this.beta = d11;
            this.mu = d10;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SCALE, Double.valueOf(d11));
    }
}
