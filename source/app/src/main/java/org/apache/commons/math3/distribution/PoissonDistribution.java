package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;

public class PoissonDistribution extends AbstractIntegerDistribution {
    public static final double DEFAULT_EPSILON = 1.0E-12d;
    public static final int DEFAULT_MAX_ITERATIONS = 10000000;
    private static final long serialVersionUID = -3349935121172596109L;
    private final double epsilon;
    private final ExponentialDistribution exponential;
    private final int maxIterations;
    private final double mean;
    private final NormalDistribution normal;

    public PoissonDistribution(double d10) throws NotStrictlyPositiveException {
        this(d10, 1.0E-12d, DEFAULT_MAX_ITERATIONS);
    }

    private long nextPoisson(double d10) {
        double sample;
        double ceil;
        double d11;
        double d12;
        double d13;
        PoissonDistribution poissonDistribution = this;
        double d14 = 1.0d;
        if (d10 < 40.0d) {
            double exp = FastMath.exp(-d10);
            while (r4 < 1000.0d * d10) {
                d14 *= poissonDistribution.random.nextDouble();
                if (d14 < exp) {
                    break;
                }
                r4++;
            }
            return r4;
        }
        double floor = FastMath.floor(d10);
        double d15 = d10 - floor;
        double log = FastMath.log(floor);
        double factorialLog = CombinatoricsUtils.factorialLog((int) floor);
        r4 = d15 >= Double.MIN_VALUE ? poissonDistribution.nextPoisson(d15) : 0L;
        double sqrt = FastMath.sqrt(FastMath.log(((32.0d * floor) / 3.141592653589793d) + 1.0d) * floor);
        double d16 = sqrt / 2.0d;
        double d17 = floor * 2.0d;
        double d18 = d17 + sqrt;
        double d19 = 1.0d / (8.0d * floor);
        double sqrt2 = FastMath.sqrt(3.141592653589793d * d18) * FastMath.exp(d19);
        double d20 = d18 / sqrt;
        long j10 = r4;
        double exp2 = FastMath.exp(((-sqrt) * (sqrt + 1.0d)) / d18) * d20;
        double d21 = sqrt2 + exp2 + 1.0d;
        double d22 = sqrt2 / d21;
        double d23 = exp2 / d21;
        while (true) {
            double nextDouble = poissonDistribution.random.nextDouble();
            if (nextDouble <= d22) {
                double nextGaussian = poissonDistribution.random.nextGaussian();
                sample = (FastMath.sqrt(floor + d16) * nextGaussian) - 0.5d;
                if (sample <= sqrt && sample >= (-floor)) {
                    double floor2 = sample < 0.0d ? FastMath.floor(sample) : FastMath.ceil(sample);
                    double d24 = ((-poissonDistribution.exponential.sample()) - ((nextGaussian * nextGaussian) / 2.0d)) + d19;
                    d11 = d23;
                    d13 = d24;
                    ceil = floor2;
                    d12 = 1.0d;
                }
            } else {
                if (nextDouble > d22 + d23) {
                    break;
                }
                sample = sqrt + (poissonDistribution.exponential.sample() * d20);
                ceil = FastMath.ceil(sample);
                d11 = d23;
                d12 = 1.0d;
                d13 = (-poissonDistribution.exponential.sample()) - (((sample + 1.0d) * sqrt) / d18);
            }
            int i10 = sample < 0.0d ? 1 : 0;
            double d25 = ceil + d12;
            double d26 = sqrt;
            double d27 = (ceil * d25) / d17;
            double d28 = d22;
            if (d13 < (-d27) && i10 == 0) {
                break;
            }
            double d29 = ((((ceil * 2.0d) + 1.0d) / (6.0d * floor)) - 1.0d) * d27;
            double d30 = factorialLog;
            if (d13 < d29 - ((d27 * d27) / (((i10 * d25) + floor) * 3.0d))) {
                break;
            }
            if (d13 <= d29) {
                double d31 = ceil * log;
                double d32 = ceil + floor;
                if (d13 < (d31 - CombinatoricsUtils.factorialLog((int) d32)) + d30) {
                    floor = d32;
                    break;
                }
            }
            poissonDistribution = this;
            d23 = d11;
            d22 = d28;
            sqrt = d26;
            factorialLog = d30;
        }
        floor += ceil;
        return j10 + ((long) floor);
    }

    @Override
    public double cumulativeProbability(int i10) {
        if (i10 < 0) {
            return 0.0d;
        }
        if (i10 == Integer.MAX_VALUE) {
            return 1.0d;
        }
        return Gamma.regularizedGammaQ(i10 + 1.0d, this.mean, this.epsilon, this.maxIterations);
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
        return getMean();
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
        if (i10 < 0 || i10 == Integer.MAX_VALUE) {
            return Double.NEGATIVE_INFINITY;
        }
        if (i10 == 0) {
            return -this.mean;
        }
        double d10 = i10;
        return (((-SaddlePointExpansion.getStirlingError(d10)) - SaddlePointExpansion.getDeviancePart(d10, this.mean)) - (FastMath.log(6.283185307179586d) * 0.5d)) - (FastMath.log(d10) * 0.5d);
    }

    public double normalApproximateProbability(int i10) {
        return this.normal.cumulativeProbability(i10 + 0.5d);
    }

    @Override
    public double probability(int i10) {
        double logProbability = logProbability(i10);
        if (logProbability == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(logProbability);
    }

    @Override
    public int sample() {
        return (int) FastMath.min(nextPoisson(this.mean), 2147483647L);
    }

    public PoissonDistribution(double d10, double d11, int i10) throws NotStrictlyPositiveException {
        this(new Well19937c(), d10, d11, i10);
    }

    public PoissonDistribution(RandomGenerator randomGenerator, double d10, double d11, int i10) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d10 > 0.0d) {
            this.mean = d10;
            this.epsilon = d11;
            this.maxIterations = i10;
            this.normal = new NormalDistribution(randomGenerator, d10, FastMath.sqrt(d10), 1.0E-9d);
            this.exponential = new ExponentialDistribution(randomGenerator, 1.0d, 1.0E-9d);
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.MEAN, Double.valueOf(d10));
    }

    public PoissonDistribution(double d10, double d11) throws NotStrictlyPositiveException {
        this(d10, d11, DEFAULT_MAX_ITERATIONS);
    }

    public PoissonDistribution(double d10, int i10) {
        this(d10, 1.0E-12d, i10);
    }
}
