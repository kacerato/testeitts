package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

public class TDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = -5852615386664158222L;
    private final double degreesOfFreedom;
    private final double factor;
    private final double solverAbsoluteAccuracy;

    public TDistribution(double d10) throws NotStrictlyPositiveException {
        this(d10, 1.0E-9d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        if (d10 == 0.0d) {
            return 0.5d;
        }
        double d11 = this.degreesOfFreedom;
        double regularizedBeta = Beta.regularizedBeta(d11 / ((d10 * d10) + d11), d11 * 0.5d, 0.5d);
        return d10 < 0.0d ? 0.5d * regularizedBeta : 1.0d - (regularizedBeta * 0.5d);
    }

    @Override
    public double density(double d10) {
        return FastMath.exp(logDensity(d10));
    }

    public double getDegreesOfFreedom() {
        return this.degreesOfFreedom;
    }

    @Override
    public double getNumericalMean() {
        return getDegreesOfFreedom() > 1.0d ? 0.0d : Double.NaN;
    }

    @Override
    public double getNumericalVariance() {
        double degreesOfFreedom = getDegreesOfFreedom();
        return degreesOfFreedom > 2.0d ? degreesOfFreedom / (degreesOfFreedom - 2.0d) : (degreesOfFreedom <= 1.0d || degreesOfFreedom > 2.0d) ? Double.NaN : Double.POSITIVE_INFINITY;
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
        double d11 = this.degreesOfFreedom;
        return this.factor - (((d11 + 1.0d) / 2.0d) * FastMath.log(((d10 * d10) / d11) + 1.0d));
    }

    public TDistribution(double d10, double d11) throws NotStrictlyPositiveException {
        this(new Well19937c(), d10, d11);
    }

    public TDistribution(RandomGenerator randomGenerator, double d10) throws NotStrictlyPositiveException {
        this(randomGenerator, d10, 1.0E-9d);
    }

    public TDistribution(RandomGenerator randomGenerator, double d10, double d11) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d10 > 0.0d) {
            this.degreesOfFreedom = d10;
            this.solverAbsoluteAccuracy = d11;
            this.factor = (Gamma.logGamma((1.0d + d10) / 2.0d) - ((FastMath.log(3.141592653589793d) + FastMath.log(d10)) * 0.5d)) - Gamma.logGamma(d10 / 2.0d);
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.DEGREES_OF_FREEDOM, Double.valueOf(d10));
    }
}
