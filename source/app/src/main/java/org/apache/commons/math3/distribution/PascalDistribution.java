package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;

public class PascalDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = 6751309484392813623L;
    private final double log1mProbabilityOfSuccess;
    private final double logProbabilityOfSuccess;
    private final int numberOfSuccesses;
    private final double probabilityOfSuccess;

    public PascalDistribution(int i10, double d10) throws NotStrictlyPositiveException, OutOfRangeException {
        this(new Well19937c(), i10, d10);
    }

    @Override
    public double cumulativeProbability(int i10) {
        if (i10 < 0) {
            return 0.0d;
        }
        return Beta.regularizedBeta(this.probabilityOfSuccess, this.numberOfSuccesses, 1.0d + i10);
    }

    public int getNumberOfSuccesses() {
        return this.numberOfSuccesses;
    }

    @Override
    public double getNumericalMean() {
        double probabilityOfSuccess = getProbabilityOfSuccess();
        return (getNumberOfSuccesses() * (1.0d - probabilityOfSuccess)) / probabilityOfSuccess;
    }

    @Override
    public double getNumericalVariance() {
        double probabilityOfSuccess = getProbabilityOfSuccess();
        return (getNumberOfSuccesses() * (1.0d - probabilityOfSuccess)) / (probabilityOfSuccess * probabilityOfSuccess);
    }

    public double getProbabilityOfSuccess() {
        return this.probabilityOfSuccess;
    }

    @Override
    public int getSupportLowerBound() {
        return 0;
    }

    @Override
    public int getSupportUpperBound() {
        return Integer.MAX_VALUE;
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public double logProbability(int i10) {
        if (i10 < 0) {
            return Double.NEGATIVE_INFINITY;
        }
        return CombinatoricsUtils.binomialCoefficientLog((i10 + r0) - 1, this.numberOfSuccesses - 1) + (this.logProbabilityOfSuccess * this.numberOfSuccesses) + (this.log1mProbabilityOfSuccess * i10);
    }

    @Override
    public double probability(int i10) {
        if (i10 < 0) {
            return 0.0d;
        }
        return CombinatoricsUtils.binomialCoefficientDouble((i10 + r0) - 1, this.numberOfSuccesses - 1) * FastMath.pow(this.probabilityOfSuccess, this.numberOfSuccesses) * FastMath.pow(1.0d - this.probabilityOfSuccess, i10);
    }

    public PascalDistribution(RandomGenerator randomGenerator, int i10, double d10) throws NotStrictlyPositiveException, OutOfRangeException {
        super(randomGenerator);
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SUCCESSES, Integer.valueOf(i10));
        }
        if (d10 >= 0.0d && d10 <= 1.0d) {
            this.numberOfSuccesses = i10;
            this.probabilityOfSuccess = d10;
            this.logProbabilityOfSuccess = FastMath.log(d10);
            this.log1mProbabilityOfSuccess = FastMath.log1p(-d10);
            return;
        }
        throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
    }
}
