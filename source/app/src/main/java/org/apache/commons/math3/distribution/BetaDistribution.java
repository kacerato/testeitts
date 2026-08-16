package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class BetaDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = -1221965979403477668L;
    private final double alpha;
    private final double beta;
    private final double solverAbsoluteAccuracy;

    private double f100150z;

    public static final class ChengBetaSampler {
        private ChengBetaSampler() {
        }

        private static double algorithmBB(RandomGenerator randomGenerator, double d10, double d11, double d12) {
            double exp;
            double d13;
            double log;
            double d14 = d11 + d12;
            double sqrt = FastMath.sqrt((d14 - 2.0d) / (((2.0d * d11) * d12) - d14));
            double d15 = (1.0d / sqrt) + d11;
            do {
                double nextDouble = randomGenerator.nextDouble();
                double nextDouble2 = randomGenerator.nextDouble();
                double log2 = (FastMath.log(nextDouble) - FastMath.log1p(-nextDouble)) * sqrt;
                exp = FastMath.exp(log2) * d11;
                double d16 = nextDouble * nextDouble * nextDouble2;
                d13 = (log2 * d15) - 1.3862944d;
                double d17 = (d11 + d13) - exp;
                if (d17 + 2.609438d >= 5.0d * d16) {
                    break;
                }
                log = FastMath.log(d16);
                if (d17 >= log) {
                    break;
                }
            } while (d13 + ((FastMath.log(d14) - FastMath.log(d12 + exp)) * d14) < log);
            double min = FastMath.min(exp, Double.MAX_VALUE);
            return Precision.equals(d11, d10) ? min / (d12 + min) : d12 / (d12 + min);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0092 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static double algorithmBC(RandomGenerator randomGenerator, double d10, double d11, double d12) {
            double d13;
            double log;
            double exp;
            double d14 = d11 + d12;
            double d15 = 1.0d / d12;
            double d16 = (1.0d + d11) - d12;
            double d17 = (((0.0416667d * d12) + 0.0138889d) * d16) / ((d11 * d15) - 0.777778d);
            double d18 = (((0.25d / d16) + 0.5d) * d12) + 0.25d;
            while (true) {
                double nextDouble = randomGenerator.nextDouble();
                double nextDouble2 = randomGenerator.nextDouble();
                double d19 = nextDouble * nextDouble2;
                double d20 = nextDouble * d19;
                if (nextDouble < 0.5d) {
                    if (((nextDouble2 * 0.25d) + d20) - d19 >= d17) {
                        continue;
                    } else {
                        log = (FastMath.log(nextDouble) - FastMath.log1p(-nextDouble)) * d15;
                        exp = FastMath.exp(log) * d11;
                        if ((((FastMath.log(d14) - FastMath.log(d12 + exp)) + log) * d14) - 1.3862944d < FastMath.log(d20)) {
                            d13 = exp;
                            break;
                        }
                    }
                } else {
                    if (d20 <= 0.25d) {
                        d13 = FastMath.exp(d15 * (FastMath.log(nextDouble) - FastMath.log1p(-nextDouble))) * d11;
                        break;
                    }
                    if (d20 >= d18) {
                        continue;
                    } else {
                        log = (FastMath.log(nextDouble) - FastMath.log1p(-nextDouble)) * d15;
                        exp = FastMath.exp(log) * d11;
                        if ((((FastMath.log(d14) - FastMath.log(d12 + exp)) + log) * d14) - 1.3862944d < FastMath.log(d20)) {
                        }
                    }
                }
            }
            double min = FastMath.min(d13, Double.MAX_VALUE);
            return Precision.equals(d11, d10) ? min / (d12 + min) : d12 / (d12 + min);
        }

        public static double sample(RandomGenerator randomGenerator, double d10, double d11) {
            double min = FastMath.min(d10, d11);
            double max = FastMath.max(d10, d11);
            return min > 1.0d ? algorithmBB(randomGenerator, d10, min, max) : algorithmBC(randomGenerator, d10, max, min);
        }
    }

    public BetaDistribution(double d10, double d11) {
        this(d10, d11, 1.0E-9d);
    }

    private void recomputeZ() {
        if (Double.isNaN(this.f100150z)) {
            this.f100150z = (Gamma.logGamma(this.alpha) + Gamma.logGamma(this.beta)) - Gamma.logGamma(this.alpha + this.beta);
        }
    }

    @Override
    public double cumulativeProbability(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        if (d10 >= 1.0d) {
            return 1.0d;
        }
        return Beta.regularizedBeta(d10, this.alpha, this.beta);
    }

    @Override
    public double density(double d10) {
        double logDensity = logDensity(d10);
        if (logDensity == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(logDensity);
    }

    public double getAlpha() {
        return this.alpha;
    }

    public double getBeta() {
        return this.beta;
    }

    @Override
    public double getNumericalMean() {
        double alpha = getAlpha();
        return alpha / (getBeta() + alpha);
    }

    @Override
    public double getNumericalVariance() {
        double alpha = getAlpha();
        double beta = getBeta();
        double d10 = alpha + beta;
        return (alpha * beta) / ((d10 * d10) * (d10 + 1.0d));
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
        return 1.0d;
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
        recomputeZ();
        if (d10 < 0.0d || d10 > 1.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        if (d10 == 0.0d) {
            if (this.alpha >= 1.0d) {
                return Double.NEGATIVE_INFINITY;
            }
            throw new NumberIsTooSmallException(LocalizedFormats.CANNOT_COMPUTE_BETA_DENSITY_AT_0_FOR_SOME_ALPHA, Double.valueOf(this.alpha), 1, false);
        }
        if (d10 == 1.0d) {
            if (this.beta >= 1.0d) {
                return Double.NEGATIVE_INFINITY;
            }
            throw new NumberIsTooSmallException(LocalizedFormats.CANNOT_COMPUTE_BETA_DENSITY_AT_1_FOR_SOME_BETA, Double.valueOf(this.beta), 1, false);
        }
        return (((this.alpha - 1.0d) * FastMath.log(d10)) + ((this.beta - 1.0d) * FastMath.log1p(-d10))) - this.f100150z;
    }

    @Override
    public double sample() {
        return ChengBetaSampler.sample(this.random, this.alpha, this.beta);
    }

    public BetaDistribution(double d10, double d11, double d12) {
        this(new Well19937c(), d10, d11, d12);
    }

    public BetaDistribution(RandomGenerator randomGenerator, double d10, double d11) {
        this(randomGenerator, d10, d11, 1.0E-9d);
    }

    public BetaDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) {
        super(randomGenerator);
        this.alpha = d10;
        this.beta = d11;
        this.f100150z = Double.NaN;
        this.solverAbsoluteAccuracy = d12;
    }
}
