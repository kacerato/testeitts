package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Erf;
import org.apache.commons.math3.util.FastMath;

public class LogNormalDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 20120112;
    private final double logShapePlusHalfLog2Pi;
    private final double scale;
    private final double shape;
    private final double solverAbsoluteAccuracy;
    private static final double SQRT2PI = FastMath.sqrt(6.283185307179586d);
    private static final double SQRT2 = FastMath.sqrt(2.0d);

    public LogNormalDistribution() {
        this(0.0d, 1.0d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        double log = FastMath.log(d10) - this.scale;
        double abs = FastMath.abs(log);
        double d11 = this.shape;
        if (abs > 40.0d * d11) {
            return log < 0.0d ? 0.0d : 1.0d;
        }
        return (Erf.erf(log / (d11 * SQRT2)) * 0.5d) + 0.5d;
    }

    @Override
    public double density(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        double log = (FastMath.log(d10) - this.scale) / this.shape;
        return FastMath.exp(((-0.5d) * log) * log) / ((this.shape * SQRT2PI) * d10);
    }

    @Override
    public double getNumericalMean() {
        double d10 = this.shape;
        return FastMath.exp(this.scale + ((d10 * d10) / 2.0d));
    }

    @Override
    public double getNumericalVariance() {
        double d10 = this.shape;
        double d11 = d10 * d10;
        return FastMath.expm1(d11) * FastMath.exp((this.scale * 2.0d) + d11);
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
        return 0.0d;
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
        if (d10 <= 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        double log = FastMath.log(d10);
        double d11 = (log - this.scale) / this.shape;
        return (((-0.5d) * d11) * d11) - (this.logShapePlusHalfLog2Pi + log);
    }

    @Override
    public double probability(double d10, double d11) throws NumberIsTooLargeException {
        if (d10 > d11) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT, Double.valueOf(d10), Double.valueOf(d11), true);
        }
        if (d10 <= 0.0d || d11 <= 0.0d) {
            return super.probability(d10, d11);
        }
        double d12 = this.shape * SQRT2;
        return Erf.erf((FastMath.log(d10) - this.scale) / d12, (FastMath.log(d11) - this.scale) / d12) * 0.5d;
    }

    @Override
    public double sample() {
        return FastMath.exp(this.scale + (this.shape * this.random.nextGaussian()));
    }

    public LogNormalDistribution(double d10, double d11) throws NotStrictlyPositiveException {
        this(d10, d11, 1.0E-9d);
    }

    public LogNormalDistribution(double d10, double d11, double d12) throws NotStrictlyPositiveException {
        this(new Well19937c(), d10, d11, d12);
    }

    public LogNormalDistribution(RandomGenerator randomGenerator, double d10, double d11) throws NotStrictlyPositiveException {
        this(randomGenerator, d10, d11, 1.0E-9d);
    }

    @Override
    @Deprecated
    public double cumulativeProbability(double d10, double d11) throws NumberIsTooLargeException {
        return probability(d10, d11);
    }

    public LogNormalDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d11 > 0.0d) {
            this.scale = d10;
            this.shape = d11;
            this.logShapePlusHalfLog2Pi = FastMath.log(d11) + (FastMath.log(6.283185307179586d) * 0.5d);
            this.solverAbsoluteAccuracy = d12;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SHAPE, Double.valueOf(d11));
    }
}
