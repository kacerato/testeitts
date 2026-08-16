package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

public class GammaDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 20120524;
    private final double densityPrefactor1;
    private final double densityPrefactor2;
    private final double logDensityPrefactor1;
    private final double logDensityPrefactor2;
    private final double maxLogY;
    private final double minY;
    private final double scale;
    private final double shape;
    private final double shiftedShape;
    private final double solverAbsoluteAccuracy;

    public GammaDistribution(double d10, double d11) throws NotStrictlyPositiveException {
        this(d10, d11, 1.0E-9d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        return Gamma.regularizedGammaP(this.shape, d10 / this.scale);
    }

    @Override
    public double density(double d10) {
        if (d10 < 0.0d) {
            return 0.0d;
        }
        double d11 = d10 / this.scale;
        if (d11 > this.minY && FastMath.log(d11) < this.maxLogY) {
            return this.densityPrefactor1 * FastMath.exp(-d11) * FastMath.pow(d11, this.shape - 1.0d);
        }
        double d12 = this.shiftedShape;
        double d13 = (d11 - d12) / d12;
        return (this.densityPrefactor2 / d10) * FastMath.exp((((-d11) * 5.2421875d) / this.shiftedShape) + 4.7421875d + (this.shape * (FastMath.log1p(d13) - d13)));
    }

    @Deprecated
    public double getAlpha() {
        return this.shape;
    }

    @Deprecated
    public double getBeta() {
        return this.scale;
    }

    @Override
    public double getNumericalMean() {
        return this.shape * this.scale;
    }

    @Override
    public double getNumericalVariance() {
        double d10 = this.shape;
        double d11 = this.scale;
        return d10 * d11 * d11;
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
        if (d10 < 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        double d11 = d10 / this.scale;
        if (d11 > this.minY && FastMath.log(d11) < this.maxLogY) {
            return (this.logDensityPrefactor1 - d11) + (FastMath.log(d11) * (this.shape - 1.0d));
        }
        double d12 = this.shiftedShape;
        double d13 = (d11 - d12) / d12;
        return (this.logDensityPrefactor2 - FastMath.log(d10)) + (((-d11) * 5.2421875d) / this.shiftedShape) + 4.7421875d + (this.shape * (FastMath.log1p(d13) - d13));
    }

    @Override
    public double sample() {
        double d10 = this.shape;
        if (d10 < 1.0d) {
            while (true) {
                double nextDouble = this.random.nextDouble();
                double d11 = this.shape;
                double d12 = (d11 / 2.718281828459045d) + 1.0d;
                double d13 = nextDouble * d12;
                if (d13 <= 1.0d) {
                    double pow = FastMath.pow(d13, 1.0d / d11);
                    if (this.random.nextDouble() <= FastMath.exp(-pow)) {
                        return this.scale * pow;
                    }
                } else {
                    double log = FastMath.log((d12 - d13) / d11) * (-1.0d);
                    if (this.random.nextDouble() <= FastMath.pow(log, this.shape - 1.0d)) {
                        return this.scale * log;
                    }
                }
            }
        } else {
            double d14 = d10 - 0.3333333333333333d;
            double sqrt = 1.0d / (FastMath.sqrt(d14) * 3.0d);
            while (true) {
                double nextGaussian = this.random.nextGaussian();
                double d15 = (sqrt * nextGaussian) + 1.0d;
                double d16 = d15 * d15 * d15;
                if (d16 > 0.0d) {
                    double d17 = nextGaussian * nextGaussian;
                    double nextDouble2 = this.random.nextDouble();
                    if (nextDouble2 >= 1.0d - ((0.0331d * d17) * d17) && FastMath.log(nextDouble2) >= (d17 * 0.5d) + (((1.0d - d16) + FastMath.log(d16)) * d14)) {
                    }
                    return this.scale * d14 * d16;
                }
            }
        }
    }

    public GammaDistribution(double d10, double d11, double d12) throws NotStrictlyPositiveException {
        this(new Well19937c(), d10, d11, d12);
    }

    public GammaDistribution(RandomGenerator randomGenerator, double d10, double d11) throws NotStrictlyPositiveException {
        this(randomGenerator, d10, d11, 1.0E-9d);
    }

    public GammaDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d10 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.SHAPE, Double.valueOf(d10));
        }
        if (d11 > 0.0d) {
            this.shape = d10;
            this.scale = d11;
            this.solverAbsoluteAccuracy = d12;
            double d13 = d10 + 4.7421875d;
            double d14 = d13 + 0.5d;
            this.shiftedShape = d14;
            double d15 = 2.718281828459045d / (6.283185307179586d * d14);
            double sqrt = (FastMath.sqrt(d15) * d10) / Gamma.lanczos(d10);
            this.densityPrefactor2 = sqrt;
            double log = (FastMath.log(d10) + (FastMath.log(d15) * 0.5d)) - FastMath.log(Gamma.lanczos(d10));
            this.logDensityPrefactor2 = log;
            this.densityPrefactor1 = (sqrt / d11) * FastMath.pow(d14, -d10) * FastMath.exp(d13);
            this.logDensityPrefactor1 = ((log - FastMath.log(d11)) - (FastMath.log(d14) * d10)) + d10 + 4.7421875d;
            this.minY = d13 - FastMath.log(Double.MAX_VALUE);
            this.maxLogY = FastMath.log(Double.MAX_VALUE) / (d10 - 1.0d);
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SCALE, Double.valueOf(d11));
    }
}
