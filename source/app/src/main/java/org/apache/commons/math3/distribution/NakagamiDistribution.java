package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

public class NakagamiDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 20141003;
    private final double inverseAbsoluteAccuracy;
    private final double mu;
    private final double omega;

    public NakagamiDistribution(double d10, double d11) {
        this(d10, d11, 1.0E-9d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        double d11 = this.mu;
        return Gamma.regularizedGammaP(d11, ((d11 * d10) * d10) / this.omega);
    }

    @Override
    public double density(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        double d11 = this.mu;
        return ((FastMath.pow(d11, d11) * 2.0d) / (Gamma.gamma(this.mu) * FastMath.pow(this.omega, this.mu))) * FastMath.pow(d10, (this.mu * 2.0d) - 1.0d) * FastMath.exp((((-this.mu) * d10) * d10) / this.omega);
    }

    @Override
    public double getNumericalMean() {
        return (Gamma.gamma(this.mu + 0.5d) / Gamma.gamma(this.mu)) * FastMath.sqrt(this.omega / this.mu);
    }

    @Override
    public double getNumericalVariance() {
        double gamma = Gamma.gamma(this.mu + 0.5d) / Gamma.gamma(this.mu);
        return this.omega * (1.0d - (((1.0d / this.mu) * gamma) * gamma));
    }

    public double getScale() {
        return this.omega;
    }

    public double getShape() {
        return this.mu;
    }

    @Override
    public double getSolverAbsoluteAccuracy() {
        return this.inverseAbsoluteAccuracy;
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

    public NakagamiDistribution(double d10, double d11, double d12) {
        this(new Well19937c(), d10, d11, d12);
    }

    public NakagamiDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) {
        super(randomGenerator);
        if (d10 < 0.5d) {
            throw new NumberIsTooSmallException(Double.valueOf(d10), Double.valueOf(0.5d), true);
        }
        if (d11 > 0.0d) {
            this.mu = d10;
            this.omega = d11;
            this.inverseAbsoluteAccuracy = d12;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_SCALE, Double.valueOf(d11));
    }
}
