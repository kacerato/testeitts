package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

public class ZipfDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = -140627372283420404L;
    private final double exponent;
    private final int numberOfElements;
    private double numericalMean;
    private boolean numericalMeanIsCalculated;
    private double numericalVariance;
    private boolean numericalVarianceIsCalculated;
    private transient ZipfRejectionInversionSampler sampler;

    public static final class ZipfRejectionInversionSampler {
        private final double exponent;
        private final double hIntegralNumberOfElements;
        private final int numberOfElements;
        private final double hIntegralX1 = hIntegral(1.5d) - 1.0d;

        private final double f100157s = 2.0d - hIntegralInverse(hIntegral(2.5d) - h(2.0d));

        public ZipfRejectionInversionSampler(int i10, double d10) {
            this.exponent = d10;
            this.numberOfElements = i10;
            this.hIntegralNumberOfElements = hIntegral(i10 + 0.5d);
        }

        private double h(double d10) {
            return FastMath.exp((-this.exponent) * FastMath.log(d10));
        }

        private double hIntegral(double d10) {
            double log = FastMath.log(d10);
            return helper2((1.0d - this.exponent) * log) * log;
        }

        private double hIntegralInverse(double d10) {
            double d11 = (1.0d - this.exponent) * d10;
            if (d11 < -1.0d) {
                d11 = -1.0d;
            }
            return FastMath.exp(helper1(d11) * d10);
        }

        public static double helper1(double d10) {
            return FastMath.abs(d10) > 1.0E-8d ? FastMath.log1p(d10) / d10 : 1.0d - (d10 * (0.5d - ((0.3333333333333333d - (0.25d * d10)) * d10)));
        }

        public static double helper2(double d10) {
            return FastMath.abs(d10) > 1.0E-8d ? FastMath.expm1(d10) / d10 : (0.5d * d10 * ((0.3333333333333333d * d10 * ((d10 * 0.25d) + 1.0d)) + 1.0d)) + 1.0d;
        }

        public int sample(RandomGenerator randomGenerator) {
            double nextDouble;
            int i10;
            double d10;
            do {
                nextDouble = this.hIntegralNumberOfElements + (randomGenerator.nextDouble() * (this.hIntegralX1 - this.hIntegralNumberOfElements));
                double hIntegralInverse = hIntegralInverse(nextDouble);
                i10 = (int) (hIntegralInverse + 0.5d);
                int i11 = 1;
                if (i10 < 1 || i10 > (i11 = this.numberOfElements)) {
                    i10 = i11;
                }
                d10 = i10;
                if (d10 - hIntegralInverse <= this.f100157s) {
                    break;
                }
            } while (nextDouble < hIntegral(0.5d + d10) - h(d10));
            return i10;
        }
    }

    public ZipfDistribution(int i10, double d10) {
        this(new Well19937c(), i10, d10);
    }

    private double generalizedHarmonic(int i10, double d10) {
        double d11 = 0.0d;
        while (i10 > 0) {
            d11 += 1.0d / FastMath.pow(i10, d10);
            i10--;
        }
        return d11;
    }

    public double calculateNumericalMean() {
        int numberOfElements = getNumberOfElements();
        double exponent = getExponent();
        return generalizedHarmonic(numberOfElements, exponent - 1.0d) / generalizedHarmonic(numberOfElements, exponent);
    }

    public double calculateNumericalVariance() {
        int numberOfElements = getNumberOfElements();
        double exponent = getExponent();
        double generalizedHarmonic = generalizedHarmonic(numberOfElements, exponent - 2.0d);
        double generalizedHarmonic2 = generalizedHarmonic(numberOfElements, exponent - 1.0d);
        double generalizedHarmonic3 = generalizedHarmonic(numberOfElements, exponent);
        return (generalizedHarmonic / generalizedHarmonic3) - ((generalizedHarmonic2 * generalizedHarmonic2) / (generalizedHarmonic3 * generalizedHarmonic3));
    }

    @Override
    public double cumulativeProbability(int i10) {
        if (i10 <= 0) {
            return 0.0d;
        }
        if (i10 >= this.numberOfElements) {
            return 1.0d;
        }
        return generalizedHarmonic(i10, this.exponent) / generalizedHarmonic(this.numberOfElements, this.exponent);
    }

    public double getExponent() {
        return this.exponent;
    }

    public int getNumberOfElements() {
        return this.numberOfElements;
    }

    @Override
    public double getNumericalMean() {
        if (!this.numericalMeanIsCalculated) {
            this.numericalMean = calculateNumericalMean();
            this.numericalMeanIsCalculated = true;
        }
        return this.numericalMean;
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
    public int getSupportLowerBound() {
        return 1;
    }

    @Override
    public int getSupportUpperBound() {
        return getNumberOfElements();
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public double logProbability(int i10) {
        if (i10 <= 0 || i10 > this.numberOfElements) {
            return Double.NEGATIVE_INFINITY;
        }
        double d10 = -FastMath.log(i10);
        double d11 = this.exponent;
        return (d10 * d11) - FastMath.log(generalizedHarmonic(this.numberOfElements, d11));
    }

    @Override
    public double probability(int i10) {
        if (i10 <= 0 || i10 > this.numberOfElements) {
            return 0.0d;
        }
        return (1.0d / FastMath.pow(i10, this.exponent)) / generalizedHarmonic(this.numberOfElements, this.exponent);
    }

    @Override
    public int sample() {
        if (this.sampler == null) {
            this.sampler = new ZipfRejectionInversionSampler(this.numberOfElements, this.exponent);
        }
        return this.sampler.sample(this.random);
    }

    public ZipfDistribution(RandomGenerator randomGenerator, int i10, double d10) throws NotStrictlyPositiveException {
        super(randomGenerator);
        this.numericalMean = Double.NaN;
        this.numericalMeanIsCalculated = false;
        this.numericalVariance = Double.NaN;
        this.numericalVarianceIsCalculated = false;
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.DIMENSION, Integer.valueOf(i10));
        }
        if (d10 > 0.0d) {
            this.numberOfElements = i10;
            this.exponent = d10;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.EXPONENT, Double.valueOf(d10));
    }
}
