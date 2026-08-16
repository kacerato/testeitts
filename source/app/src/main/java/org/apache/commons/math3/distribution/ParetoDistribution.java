package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

public class ParetoDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 20130424;
    private final double scale;
    private final double shape;
    private final double solverAbsoluteAccuracy;

    public ParetoDistribution() {
        this(1.0d, 1.0d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        double d11 = this.scale;
        if (d10 <= d11) {
            return 0.0d;
        }
        return 1.0d - FastMath.pow(d11 / d10, this.shape);
    }

    @Override
    public double density(double d10) {
        double d11 = this.scale;
        if (d10 < d11) {
            return 0.0d;
        }
        return (FastMath.pow(d11, this.shape) / FastMath.pow(d10, this.shape + 1.0d)) * this.shape;
    }

    @Override
    public double getNumericalMean() {
        double d10 = this.shape;
        if (d10 <= 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return (this.scale * d10) / (d10 - 1.0d);
    }

    @Override
    public double getNumericalVariance() {
        double d10 = this.shape;
        if (d10 <= 2.0d) {
            return Double.POSITIVE_INFINITY;
        }
        double d11 = d10 - 1.0d;
        double d12 = this.scale;
        return (((d12 * d12) * d10) / (d11 * d11)) / (d10 - 2.0d);
    }

    public double getScale() {
        return this.scale;
    }

    public double getShape() {
        return this.shape;
    }

    @Override
    public double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    @Override
    public double getSupportLowerBound() {
        return this.scale;
    }

    @Override
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
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
        return false;
    }

    @Override
    public double logDensity(double d10) {
        double d11 = this.scale;
        if (d10 < d11) {
            return Double.NEGATIVE_INFINITY;
        }
        double log = FastMath.log(d11) * this.shape;
        double log2 = FastMath.log(d10);
        double d12 = this.shape;
        return (log - (log2 * (1.0d + d12))) + FastMath.log(d12);
    }

    @Override
    public double sample() {
        return this.scale / FastMath.pow(this.random.nextDouble(), 1.0d / this.shape);
    }

    public ParetoDistribution(double d10, double d11) throws NotStrictlyPositiveException {
        this(d10, d11, 1.0E-9d);
    }

    public ParetoDistribution(double d10, double d11, double d12) throws NotStrictlyPositiveException {
        this(new Well19937c(), d10, d11, d12);
    }

    @Override
    @Deprecated
    public double cumulativeProbability(double d10, double d11) throws NumberIsTooLargeException {
        return probability(d10, d11);
    }

    public ParetoDistribution(RandomGenerator randomGenerator, double d10, double d11) throws NotStrictlyPositiveException {
        this(randomGenerator, d10, d11, 1.0E-9d);
    }

    public ParetoDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d10 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.SCALE, Double.valueOf(d10));
        }
        if (d11 > 0.0d) {
            this.scale = d10;
            this.shape = d11;
            this.solverAbsoluteAccuracy = d12;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SHAPE, Double.valueOf(d11));
    }
}
