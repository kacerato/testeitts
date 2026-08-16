package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;

public class UniformRealDistribution extends AbstractRealDistribution {

    @Deprecated
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 20120109;
    private final double lower;
    private final double upper;

    public UniformRealDistribution() {
        this(0.0d, 1.0d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        double d11 = this.lower;
        if (d10 <= d11) {
            return 0.0d;
        }
        double d12 = this.upper;
        if (d10 >= d12) {
            return 1.0d;
        }
        return (d10 - d11) / (d12 - d11);
    }

    @Override
    public double density(double d10) {
        double d11 = this.lower;
        if (d10 < d11) {
            return 0.0d;
        }
        double d12 = this.upper;
        if (d10 > d12) {
            return 0.0d;
        }
        return 1.0d / (d12 - d11);
    }

    @Override
    public double getNumericalMean() {
        return (this.lower + this.upper) * 0.5d;
    }

    @Override
    public double getNumericalVariance() {
        double d10 = this.upper - this.lower;
        return (d10 * d10) / 12.0d;
    }

    @Override
    public double getSupportLowerBound() {
        return this.lower;
    }

    @Override
    public double getSupportUpperBound() {
        return this.upper;
    }

    @Override
    public double inverseCumulativeProbability(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        double d11 = this.upper;
        double d12 = this.lower;
        return (d10 * (d11 - d12)) + d12;
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public boolean isSupportLowerBoundInclusive() {
        return true;
    }

    @Override
    public boolean isSupportUpperBoundInclusive() {
        return true;
    }

    @Override
    public double sample() {
        double nextDouble = this.random.nextDouble();
        return (this.upper * nextDouble) + ((1.0d - nextDouble) * this.lower);
    }

    public UniformRealDistribution(double d10, double d11) throws NumberIsTooLargeException {
        this(new Well19937c(), d10, d11);
    }

    @Deprecated
    public UniformRealDistribution(double d10, double d11, double d12) throws NumberIsTooLargeException {
        this(new Well19937c(), d10, d11);
    }

    @Deprecated
    public UniformRealDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) {
        this(randomGenerator, d10, d11);
    }

    public UniformRealDistribution(RandomGenerator randomGenerator, double d10, double d11) throws NumberIsTooLargeException {
        super(randomGenerator);
        if (d10 < d11) {
            this.lower = d10;
            this.upper = d11;
            return;
        }
        throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Double.valueOf(d10), Double.valueOf(d11), false);
    }
}
