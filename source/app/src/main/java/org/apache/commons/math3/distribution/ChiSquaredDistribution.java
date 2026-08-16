package org.apache.commons.math3.distribution;

import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;

public class ChiSquaredDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = -8352658048349159782L;
    private final GammaDistribution gamma;
    private final double solverAbsoluteAccuracy;

    public ChiSquaredDistribution(double d10) {
        this(d10, 1.0E-9d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        return this.gamma.cumulativeProbability(d10);
    }

    @Override
    public double density(double d10) {
        return this.gamma.density(d10);
    }

    public double getDegreesOfFreedom() {
        return this.gamma.getShape() * 2.0d;
    }

    @Override
    public double getNumericalMean() {
        return getDegreesOfFreedom();
    }

    @Override
    public double getNumericalVariance() {
        return getDegreesOfFreedom() * 2.0d;
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
        return this.gamma.logDensity(d10);
    }

    public ChiSquaredDistribution(double d10, double d11) {
        this(new Well19937c(), d10, d11);
    }

    public ChiSquaredDistribution(RandomGenerator randomGenerator, double d10) {
        this(randomGenerator, d10, 1.0E-9d);
    }

    public ChiSquaredDistribution(RandomGenerator randomGenerator, double d10, double d11) {
        super(randomGenerator);
        this.gamma = new GammaDistribution(d10 / 2.0d, 2.0d);
        this.solverAbsoluteAccuracy = d11;
    }
}
