package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Erf;
import org.apache.commons.math3.util.FastMath;

public class NormalDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final double SQRT2 = FastMath.sqrt(2.0d);
    private static final long serialVersionUID = 8589540077390120676L;
    private final double logStandardDeviationPlusHalfLog2Pi;
    private final double mean;
    private final double solverAbsoluteAccuracy;
    private final double standardDeviation;

    public NormalDistribution() {
        this(0.0d, 1.0d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        double d11 = d10 - this.mean;
        double abs = FastMath.abs(d11);
        double d12 = this.standardDeviation;
        if (abs > 40.0d * d12) {
            return d11 < 0.0d ? 0.0d : 1.0d;
        }
        return Erf.erfc((-d11) / (d12 * SQRT2)) * 0.5d;
    }

    @Override
    public double density(double d10) {
        return FastMath.exp(logDensity(d10));
    }

    public double getMean() {
        return this.mean;
    }

    @Override
    public double getNumericalMean() {
        return getMean();
    }

    @Override
    public double getNumericalVariance() {
        double standardDeviation = getStandardDeviation();
        return standardDeviation * standardDeviation;
    }

    @Override
    public double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    public double getStandardDeviation() {
        return this.standardDeviation;
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
        return this.mean + (this.standardDeviation * SQRT2 * Erf.erfInv((d10 * 2.0d) - 1.0d));
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
        double d11 = (d10 - this.mean) / this.standardDeviation;
        return (((-0.5d) * d11) * d11) - this.logStandardDeviationPlusHalfLog2Pi;
    }

    @Override
    public double probability(double d10, double d11) throws NumberIsTooLargeException {
        if (d10 > d11) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT, Double.valueOf(d10), Double.valueOf(d11), true);
        }
        double d12 = this.standardDeviation * SQRT2;
        double d13 = this.mean;
        return Erf.erf((d10 - d13) / d12, (d11 - d13) / d12) * 0.5d;
    }

    @Override
    public double sample() {
        return (this.standardDeviation * this.random.nextGaussian()) + this.mean;
    }

    public NormalDistribution(double d10, double d11) throws NotStrictlyPositiveException {
        this(d10, d11, 1.0E-9d);
    }

    public NormalDistribution(double d10, double d11, double d12) throws NotStrictlyPositiveException {
        this(new Well19937c(), d10, d11, d12);
    }

    public NormalDistribution(RandomGenerator randomGenerator, double d10, double d11) throws NotStrictlyPositiveException {
        this(randomGenerator, d10, d11, 1.0E-9d);
    }

    @Override
    @Deprecated
    public double cumulativeProbability(double d10, double d11) throws NumberIsTooLargeException {
        return probability(d10, d11);
    }

    public NormalDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d11 > 0.0d) {
            this.mean = d10;
            this.standardDeviation = d11;
            this.logStandardDeviationPlusHalfLog2Pi = FastMath.log(d11) + (FastMath.log(6.283185307179586d) * 0.5d);
            this.solverAbsoluteAccuracy = d12;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.STANDARD_DEVIATION, Double.valueOf(d11));
    }
}
