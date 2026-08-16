package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

public class WeibullDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 8589540077390120676L;
    private double numericalMean;
    private boolean numericalMeanIsCalculated;
    private double numericalVariance;
    private boolean numericalVarianceIsCalculated;
    private final double scale;
    private final double shape;
    private final double solverAbsoluteAccuracy;

    public WeibullDistribution(double d10, double d11) throws NotStrictlyPositiveException {
        this(d10, d11, 1.0E-9d);
    }

    public double calculateNumericalMean() {
        return getScale() * FastMath.exp(Gamma.logGamma((1.0d / getShape()) + 1.0d));
    }

    public double calculateNumericalVariance() {
        double shape = getShape();
        double scale = getScale();
        double numericalMean = getNumericalMean();
        return ((scale * scale) * FastMath.exp(Gamma.logGamma((2.0d / shape) + 1.0d))) - (numericalMean * numericalMean);
    }

    @Override
    public double cumulativeProbability(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        return 1.0d - FastMath.exp(-FastMath.pow(d10 / this.scale, this.shape));
    }

    @Override
    public double density(double d10) {
        if (d10 < 0.0d) {
            return 0.0d;
        }
        double d11 = d10 / this.scale;
        double pow = FastMath.pow(d11, this.shape - 1.0d);
        return (this.shape / this.scale) * pow * FastMath.exp(-(d11 * pow));
    }

    @Override
    public double getNumericalMean() {
        if (!this.numericalMeanIsCalculated) {
            this.numericalMean = calculateNumericalMean();
            this.numericalMeanIsCalculated = true;
        }
        return this.numericalMean;
    }

    @Override
    public double getNumericalVariance() {
        if (!this.numericalVarianceIsCalculated) {
            this.numericalVariance = calculateNumericalVariance();
            this.numericalVarianceIsCalculated = true;
        }
        return this.numericalVariance;
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
    public double inverseCumulativeProbability(double d10) {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), Double.valueOf(0.0d), Double.valueOf(1.0d));
        }
        if (d10 == 0.0d) {
            return 0.0d;
        }
        if (d10 == 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return this.scale * FastMath.pow(-FastMath.log1p(-d10), 1.0d / this.shape);
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
        if (d10 < 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        double d11 = d10 / this.scale;
        double log = FastMath.log(d11) * (this.shape - 1.0d);
        return (FastMath.log(this.shape / this.scale) + log) - (FastMath.exp(log) * d11);
    }

    public WeibullDistribution(double d10, double d11, double d12) {
        this(new Well19937c(), d10, d11, d12);
    }

    public WeibullDistribution(RandomGenerator randomGenerator, double d10, double d11) throws NotStrictlyPositiveException {
        this(randomGenerator, d10, d11, 1.0E-9d);
    }

    public WeibullDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) throws NotStrictlyPositiveException {
        super(randomGenerator);
        this.numericalMean = Double.NaN;
        this.numericalMeanIsCalculated = false;
        this.numericalVariance = Double.NaN;
        this.numericalVarianceIsCalculated = false;
        if (d10 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.SHAPE, Double.valueOf(d10));
        }
        if (d11 > 0.0d) {
            this.scale = d11;
            this.shape = d10;
            this.solverAbsoluteAccuracy = d12;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SCALE, Double.valueOf(d11));
    }
}
