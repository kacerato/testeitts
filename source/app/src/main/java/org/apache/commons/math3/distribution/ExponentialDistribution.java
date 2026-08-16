package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.ResizableDoubleArray;

public class ExponentialDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final double[] EXPONENTIAL_SA_QI;
    private static final long serialVersionUID = 2401296428283614780L;
    private final double logMean;
    private final double mean;
    private final double solverAbsoluteAccuracy;

    static {
        double log = FastMath.log(2.0d);
        ResizableDoubleArray resizableDoubleArray = new ResizableDoubleArray(20);
        double d10 = 0.0d;
        int i10 = 1;
        while (d10 < 1.0d) {
            d10 += FastMath.pow(log, i10) / CombinatoricsUtils.factorial(i10);
            resizableDoubleArray.addElement(d10);
            i10++;
        }
        EXPONENTIAL_SA_QI = resizableDoubleArray.getElements();
    }

    public ExponentialDistribution(double d10) {
        this(d10, 1.0E-9d);
    }

    @Override
    public double cumulativeProbability(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        return 1.0d - FastMath.exp((-d10) / this.mean);
    }

    @Override
    public double density(double d10) {
        double logDensity = logDensity(d10);
        if (logDensity == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(logDensity);
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
        double mean = getMean();
        return mean * mean;
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
    public double inverseCumulativeProbability(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), Double.valueOf(0.0d), Double.valueOf(1.0d));
        }
        if (d10 == 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return FastMath.log(1.0d - d10) * (-this.mean);
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
        return ((-d10) / this.mean) - this.logMean;
    }

    @Override
    public double sample() {
        double[] dArr;
        double nextDouble = this.random.nextDouble();
        double d10 = 0.0d;
        while (nextDouble < 0.5d) {
            d10 += EXPONENTIAL_SA_QI[0];
            nextDouble *= 2.0d;
        }
        double d11 = nextDouble + (nextDouble - 1.0d);
        if (d11 <= EXPONENTIAL_SA_QI[0]) {
            return this.mean * (d10 + d11);
        }
        double nextDouble2 = this.random.nextDouble();
        int i10 = 0;
        do {
            i10++;
            double nextDouble3 = this.random.nextDouble();
            if (nextDouble3 < nextDouble2) {
                nextDouble2 = nextDouble3;
            }
            dArr = EXPONENTIAL_SA_QI;
        } while (d11 > dArr[i10]);
        return this.mean * (d10 + (nextDouble2 * dArr[0]));
    }

    public ExponentialDistribution(double d10, double d11) {
        this(new Well19937c(), d10, d11);
    }

    public ExponentialDistribution(RandomGenerator randomGenerator, double d10) throws NotStrictlyPositiveException {
        this(randomGenerator, d10, 1.0E-9d);
    }

    public ExponentialDistribution(RandomGenerator randomGenerator, double d10, double d11) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d10 > 0.0d) {
            this.mean = d10;
            this.logMean = FastMath.log(d10);
            this.solverAbsoluteAccuracy = d11;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.MEAN, Double.valueOf(d10));
    }
}
