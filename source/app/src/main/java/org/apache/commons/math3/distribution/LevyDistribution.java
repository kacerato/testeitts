package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Erf;
import org.apache.commons.math3.util.FastMath;

public class LevyDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20130314;

    private final double f100152c;
    private final double halfC;
    private final double mu;

    public LevyDistribution(double d10, double d11) {
        this(new Well19937c(), d10, d11);
    }

    @Override
    public double cumulativeProbability(double d10) {
        double d11 = this.mu;
        if (d10 < d11) {
            return Double.NaN;
        }
        return Erf.erfc(FastMath.sqrt(this.halfC / (d10 - d11)));
    }

    @Override
    public double density(double d10) {
        double d11 = this.mu;
        if (d10 < d11) {
            return Double.NaN;
        }
        double d12 = d10 - d11;
        double d13 = this.halfC / d12;
        return (FastMath.sqrt(d13 / 3.141592653589793d) * FastMath.exp(-d13)) / d12;
    }

    public double getLocation() {
        return this.mu;
    }

    @Override
    public double getNumericalMean() {
        return Double.POSITIVE_INFINITY;
    }

    @Override
    public double getNumericalVariance() {
        return Double.POSITIVE_INFINITY;
    }

    public double getScale() {
        return this.f100152c;
    }

    @Override
    public double getSupportLowerBound() {
        return this.mu;
    }

    @Override
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
    }

    @Override
    public double inverseCumulativeProbability(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        double erfcInv = Erf.erfcInv(d10);
        return this.mu + (this.halfC / (erfcInv * erfcInv));
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

    @Override
    public double logDensity(double d10) {
        double d11 = this.mu;
        if (d10 < d11) {
            return Double.NaN;
        }
        double d12 = d10 - d11;
        double d13 = this.halfC / d12;
        return ((FastMath.log(d13 / 3.141592653589793d) * 0.5d) - d13) - FastMath.log(d12);
    }

    public LevyDistribution(RandomGenerator randomGenerator, double d10, double d11) {
        super(randomGenerator);
        this.mu = d10;
        this.f100152c = d11;
        this.halfC = d11 * 0.5d;
    }
}
