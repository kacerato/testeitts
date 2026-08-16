package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

public class CauchyDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 8589540077390120676L;
    private final double median;
    private final double scale;
    private final double solverAbsoluteAccuracy;

    public CauchyDistribution() {
        this(0.0d, 1.0d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        return (FastMath.atan((d10 - this.median) / this.scale) / 3.141592653589793d) + 0.5d;
    }

    @Override
    public double density(double d10) {
        double d11 = d10 - this.median;
        double d12 = this.scale;
        return (d12 / ((d11 * d11) + (d12 * d12))) * 0.3183098861837907d;
    }

    public double getMedian() {
        return this.median;
    }

    @Override
    public double getNumericalMean() {
        return Double.NaN;
    }

    @Override
    public double getNumericalVariance() {
        return Double.NaN;
    }

    public double getScale() {
        return this.scale;
    }

    @Override
    public double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
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
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        if (d10 == 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        if (d10 == 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return this.median + (this.scale * FastMath.tan((d10 - 0.5d) * 3.141592653589793d));
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

    public CauchyDistribution(double d10, double d11) {
        this(d10, d11, 1.0E-9d);
    }

    public CauchyDistribution(double d10, double d11, double d12) {
        this(new Well19937c(), d10, d11, d12);
    }

    public CauchyDistribution(RandomGenerator randomGenerator, double d10, double d11) {
        this(randomGenerator, d10, d11, 1.0E-9d);
    }

    public CauchyDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) {
        super(randomGenerator);
        if (d11 > 0.0d) {
            this.scale = d11;
            this.median = d10;
            this.solverAbsoluteAccuracy = d12;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SCALE, Double.valueOf(d11));
    }
}
