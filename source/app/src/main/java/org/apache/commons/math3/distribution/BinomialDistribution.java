package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.util.FastMath;

public class BinomialDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = 6751309484392813623L;
    private final int numberOfTrials;
    private final double probabilityOfSuccess;

    public BinomialDistribution(int i10, double d10) {
        this(new Well19937c(), i10, d10);
    }

    @Override
    public double cumulativeProbability(int i10) {
        if (i10 < 0) {
            return 0.0d;
        }
        if (i10 >= this.numberOfTrials) {
            return 1.0d;
        }
        return 1.0d - Beta.regularizedBeta(this.probabilityOfSuccess, i10 + 1.0d, r0 - i10);
    }

    public int getNumberOfTrials() {
        return this.numberOfTrials;
    }

    @Override
    public double getNumericalMean() {
        return this.numberOfTrials * this.probabilityOfSuccess;
    }

    @Override
    public double getNumericalVariance() {
        double d10 = this.probabilityOfSuccess;
        return this.numberOfTrials * d10 * (1.0d - d10);
    }

    public double getProbabilityOfSuccess() {
        return this.probabilityOfSuccess;
    }

    @Override
    public int getSupportLowerBound() {
        if (this.probabilityOfSuccess < 1.0d) {
            return 0;
        }
        return this.numberOfTrials;
    }

    @Override
    public int getSupportUpperBound() {
        if (this.probabilityOfSuccess > 0.0d) {
            return this.numberOfTrials;
        }
        return 0;
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public double logProbability(int i10) {
        int i11 = this.numberOfTrials;
        if (i11 == 0) {
            return i10 == 0 ? 0.0d : Double.NEGATIVE_INFINITY;
        }
        if (i10 < 0 || i10 > i11) {
            return Double.NEGATIVE_INFINITY;
        }
        double d10 = this.probabilityOfSuccess;
        return SaddlePointExpansion.logBinomialProbability(i10, i11, d10, 1.0d - d10);
    }

    @Override
    public double probability(int i10) {
        double logProbability = logProbability(i10);
        if (logProbability == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(logProbability);
    }

    public BinomialDistribution(RandomGenerator randomGenerator, int i10, double d10) {
        super(randomGenerator);
        if (i10 < 0) {
            throw new NotPositiveException(LocalizedFormats.NUMBER_OF_TRIALS, Integer.valueOf(i10));
        }
        if (d10 >= 0.0d && d10 <= 1.0d) {
            this.probabilityOfSuccess = d10;
            this.numberOfTrials = i10;
            return;
        }
        throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
    }
}
