package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.util.FastMath;

public class FDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = -8516354193418641566L;
    private final double denominatorDegreesOfFreedom;
    private final double numeratorDegreesOfFreedom;
    private double numericalVariance;
    private boolean numericalVarianceIsCalculated;
    private final double solverAbsoluteAccuracy;

    public FDistribution(double d10, double d11) throws NotStrictlyPositiveException {
        this(d10, d11, 1.0E-9d);
    }

    public double calculateNumericalVariance() {
        double denominatorDegreesOfFreedom = getDenominatorDegreesOfFreedom();
        if (denominatorDegreesOfFreedom <= 4.0d) {
            return Double.NaN;
        }
        double numeratorDegreesOfFreedom = getNumeratorDegreesOfFreedom();
        double d10 = denominatorDegreesOfFreedom - 2.0d;
        return (((denominatorDegreesOfFreedom * denominatorDegreesOfFreedom) * 2.0d) * ((numeratorDegreesOfFreedom + denominatorDegreesOfFreedom) - 2.0d)) / ((numeratorDegreesOfFreedom * (d10 * d10)) * (denominatorDegreesOfFreedom - 4.0d));
    }

    @Override
    public double cumulativeProbability(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        double d11 = this.numeratorDegreesOfFreedom;
        double d12 = this.denominatorDegreesOfFreedom;
        double d13 = d10 * d11;
        return Beta.regularizedBeta(d13 / (d12 + d13), d11 * 0.5d, d12 * 0.5d);
    }

    @Override
    public double density(double d10) {
        return FastMath.exp(logDensity(d10));
    }

    public double getDenominatorDegreesOfFreedom() {
        return this.denominatorDegreesOfFreedom;
    }

    public double getNumeratorDegreesOfFreedom() {
        return this.numeratorDegreesOfFreedom;
    }

    @Override
    public double getNumericalMean() {
        double denominatorDegreesOfFreedom = getDenominatorDegreesOfFreedom();
        if (denominatorDegreesOfFreedom > 2.0d) {
            return denominatorDegreesOfFreedom / (denominatorDegreesOfFreedom - 2.0d);
        }
        return Double.NaN;
    }

    @Override
    public double getNumericalVariance() {
        if (!this.numericalVarianceIsCalculated) {
            this.numericalVariance = calculateNumericalVariance();
            this.numericalVarianceIsCalculated = true;
        }
        return this.numericalVariance;
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
        return false;
    }

    @Override
    public boolean isSupportUpperBoundInclusive() {
        return false;
    }

    @Override
    public double logDensity(double d10) {
        double d11 = this.numeratorDegreesOfFreedom / 2.0d;
        double d12 = this.denominatorDegreesOfFreedom / 2.0d;
        double log = FastMath.log(d10);
        double log2 = FastMath.log(this.numeratorDegreesOfFreedom);
        double log3 = FastMath.log(this.denominatorDegreesOfFreedom);
        double log4 = FastMath.log((this.numeratorDegreesOfFreedom * d10) + this.denominatorDegreesOfFreedom);
        return ((((((log2 * d11) + (d11 * log)) - log) + (log3 * d12)) - (d11 * log4)) - (log4 * d12)) - Beta.logBeta(d11, d12);
    }

    public FDistribution(double d10, double d11, double d12) throws NotStrictlyPositiveException {
        this(new Well19937c(), d10, d11, d12);
    }

    public FDistribution(RandomGenerator randomGenerator, double d10, double d11) throws NotStrictlyPositiveException {
        this(randomGenerator, d10, d11, 1.0E-9d);
    }

    public FDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) throws NotStrictlyPositiveException {
        super(randomGenerator);
        this.numericalVariance = Double.NaN;
        this.numericalVarianceIsCalculated = false;
        if (d10 <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.DEGREES_OF_FREEDOM, Double.valueOf(d10));
        }
        if (d11 > 0.0d) {
            this.numeratorDegreesOfFreedom = d10;
            this.denominatorDegreesOfFreedom = d11;
            this.solverAbsoluteAccuracy = d12;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.DEGREES_OF_FREEDOM, Double.valueOf(d11));
    }
}
