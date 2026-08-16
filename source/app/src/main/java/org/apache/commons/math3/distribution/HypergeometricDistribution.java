package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

public class HypergeometricDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = -436928820673516179L;
    private final int numberOfSuccesses;
    private double numericalVariance;
    private boolean numericalVarianceIsCalculated;
    private final int populationSize;
    private final int sampleSize;

    public HypergeometricDistribution(int i10, int i11, int i12) throws NotPositiveException, NotStrictlyPositiveException, NumberIsTooLargeException {
        this(new Well19937c(), i10, i11, i12);
    }

    private int[] getDomain(int i10, int i11, int i12) {
        return new int[]{getLowerDomain(i10, i11, i12), getUpperDomain(i11, i12)};
    }

    private int getLowerDomain(int i10, int i11, int i12) {
        return FastMath.max(0, i11 - (i10 - i12));
    }

    private int getUpperDomain(int i10, int i11) {
        return FastMath.min(i11, i10);
    }

    private double innerCumulativeProbability(int i10, int i11, int i12) {
        double probability = probability(i10);
        while (i10 != i11) {
            i10 += i12;
            probability += probability(i10);
        }
        return probability;
    }

    public double calculateNumericalVariance() {
        double populationSize = getPopulationSize();
        double numberOfSuccesses = getNumberOfSuccesses();
        double sampleSize = getSampleSize();
        return (((sampleSize * numberOfSuccesses) * (populationSize - sampleSize)) * (populationSize - numberOfSuccesses)) / ((populationSize * populationSize) * (populationSize - 1.0d));
    }

    @Override
    public double cumulativeProbability(int i10) {
        int[] domain = getDomain(this.populationSize, this.numberOfSuccesses, this.sampleSize);
        int i11 = domain[0];
        if (i10 < i11) {
            return 0.0d;
        }
        if (i10 >= domain[1]) {
            return 1.0d;
        }
        return innerCumulativeProbability(i11, i10, 1);
    }

    public int getNumberOfSuccesses() {
        return this.numberOfSuccesses;
    }

    @Override
    public double getNumericalMean() {
        return getSampleSize() * (getNumberOfSuccesses() / getPopulationSize());
    }

    @Override
    public double getNumericalVariance() {
        if (!this.numericalVarianceIsCalculated) {
            this.numericalVariance = calculateNumericalVariance();
            this.numericalVarianceIsCalculated = true;
        }
        return this.numericalVariance;
    }

    public int getPopulationSize() {
        return this.populationSize;
    }

    public int getSampleSize() {
        return this.sampleSize;
    }

    @Override
    public int getSupportLowerBound() {
        return FastMath.max(0, (getSampleSize() + getNumberOfSuccesses()) - getPopulationSize());
    }

    @Override
    public int getSupportUpperBound() {
        return FastMath.min(getNumberOfSuccesses(), getSampleSize());
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public double logProbability(int i10) {
        int[] domain = getDomain(this.populationSize, this.numberOfSuccesses, this.sampleSize);
        if (i10 < domain[0] || i10 > domain[1]) {
            return Double.NEGATIVE_INFINITY;
        }
        int i11 = this.sampleSize;
        int i12 = this.populationSize;
        double d10 = i11 / i12;
        double d11 = (i12 - i11) / i12;
        return (SaddlePointExpansion.logBinomialProbability(i10, this.numberOfSuccesses, d10, d11) + SaddlePointExpansion.logBinomialProbability(this.sampleSize - i10, this.populationSize - this.numberOfSuccesses, d10, d11)) - SaddlePointExpansion.logBinomialProbability(this.sampleSize, this.populationSize, d10, d11);
    }

    @Override
    public double probability(int i10) {
        double logProbability = logProbability(i10);
        if (logProbability == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(logProbability);
    }

    public double upperCumulativeProbability(int i10) {
        int[] domain = getDomain(this.populationSize, this.numberOfSuccesses, this.sampleSize);
        if (i10 <= domain[0]) {
            return 1.0d;
        }
        int i11 = domain[1];
        if (i10 > i11) {
            return 0.0d;
        }
        return innerCumulativeProbability(i11, i10, -1);
    }

    public HypergeometricDistribution(RandomGenerator randomGenerator, int i10, int i11, int i12) throws NotPositiveException, NotStrictlyPositiveException, NumberIsTooLargeException {
        super(randomGenerator);
        this.numericalVariance = Double.NaN;
        this.numericalVarianceIsCalculated = false;
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.POPULATION_SIZE, Integer.valueOf(i10));
        }
        if (i11 < 0) {
            throw new NotPositiveException(LocalizedFormats.NUMBER_OF_SUCCESSES, Integer.valueOf(i11));
        }
        if (i12 < 0) {
            throw new NotPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i12));
        }
        if (i11 > i10) {
            throw new NumberIsTooLargeException(LocalizedFormats.NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE, Integer.valueOf(i11), Integer.valueOf(i10), true);
        }
        if (i12 <= i10) {
            this.numberOfSuccesses = i11;
            this.populationSize = i10;
            this.sampleSize = i12;
            return;
        }
        throw new NumberIsTooLargeException(LocalizedFormats.SAMPLE_SIZE_LARGER_THAN_POPULATION_SIZE, Integer.valueOf(i12), Integer.valueOf(i10), true);
    }
}
