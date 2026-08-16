package org.apache.commons.math3.distribution;

import java.io.Serializable;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.UnivariateSolverUtils;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomDataImpl;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;

public abstract class AbstractRealDistribution implements RealDistribution, Serializable {
    public static final double SOLVER_DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private static final long serialVersionUID = -38038050983108802L;
    protected final RandomGenerator random;

    @Deprecated
    protected RandomDataImpl randomData;
    private double solverAbsoluteAccuracy;

    @Deprecated
    public AbstractRealDistribution() {
        this.randomData = new RandomDataImpl();
        this.solverAbsoluteAccuracy = 1.0E-6d;
        this.random = null;
    }

    @Override
    @Deprecated
    public double cumulativeProbability(double d10, double d11) throws NumberIsTooLargeException {
        return probability(d10, d11);
    }

    public double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a2  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public double inverseCumulativeProbability(final double d10) throws OutOfRangeException {
        double d11;
        boolean z10 = false;
        if (d10 >= 0.0d) {
            double d12 = 1.0d;
            if (d10 <= 1.0d) {
                double supportLowerBound = getSupportLowerBound();
                if (d10 == 0.0d) {
                    return supportLowerBound;
                }
                double supportUpperBound = getSupportUpperBound();
                if (d10 == 1.0d) {
                    return supportUpperBound;
                }
                double numericalMean = getNumericalMean();
                double sqrt = FastMath.sqrt(getNumericalVariance());
                if (!Double.isInfinite(numericalMean) && !Double.isNaN(numericalMean) && !Double.isInfinite(sqrt) && !Double.isNaN(sqrt)) {
                    z10 = true;
                }
                if (supportLowerBound == Double.NEGATIVE_INFINITY) {
                    if (z10) {
                        supportLowerBound = numericalMean - (FastMath.sqrt((1.0d - d10) / d10) * sqrt);
                    } else {
                        supportLowerBound = -1.0d;
                        while (cumulativeProbability(supportLowerBound) >= d10) {
                            supportLowerBound *= 2.0d;
                        }
                    }
                }
                if (supportUpperBound == Double.POSITIVE_INFINITY) {
                    if (!z10) {
                        while (cumulativeProbability(d12) < d10) {
                            d12 *= 2.0d;
                        }
                        d11 = d12;
                        double solve = UnivariateSolverUtils.solve(new UnivariateFunction() {
                            @Override
                            public double value(double d13) {
                                return AbstractRealDistribution.this.cumulativeProbability(d13) - d10;
                            }
                        }, supportLowerBound, d11, getSolverAbsoluteAccuracy());
                        if (!isSupportConnected()) {
                            double solverAbsoluteAccuracy = getSolverAbsoluteAccuracy();
                            double d13 = solve - solverAbsoluteAccuracy;
                            if (d13 >= getSupportLowerBound()) {
                                double cumulativeProbability = cumulativeProbability(solve);
                                if (cumulativeProbability(d13) == cumulativeProbability) {
                                    while (solve - supportLowerBound > solverAbsoluteAccuracy) {
                                        double d14 = (supportLowerBound + solve) * 0.5d;
                                        if (cumulativeProbability(d14) < cumulativeProbability) {
                                            supportLowerBound = d14;
                                        } else {
                                            solve = d14;
                                        }
                                    }
                                }
                            }
                        }
                        return solve;
                    }
                    supportUpperBound = numericalMean + (sqrt * FastMath.sqrt(d10 / (1.0d - d10)));
                }
                d11 = supportUpperBound;
                double solve2 = UnivariateSolverUtils.solve(new UnivariateFunction() {
                    @Override
                    public double value(double d132) {
                        return AbstractRealDistribution.this.cumulativeProbability(d132) - d10;
                    }
                }, supportLowerBound, d11, getSolverAbsoluteAccuracy());
                if (!isSupportConnected()) {
                }
                return solve2;
            }
        }
        throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
    }

    public double logDensity(double d10) {
        return FastMath.log(density(d10));
    }

    @Override
    public double probability(double d10) {
        return 0.0d;
    }

    @Override
    public void reseedRandomGenerator(long j10) {
        this.random.setSeed(j10);
        this.randomData.reSeed(j10);
    }

    @Override
    public double sample() {
        return inverseCumulativeProbability(this.random.nextDouble());
    }

    public double probability(double d10, double d11) {
        if (d10 <= d11) {
            return cumulativeProbability(d11) - cumulativeProbability(d10);
        }
        throw new NumberIsTooLargeException(LocalizedFormats.LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT, Double.valueOf(d10), Double.valueOf(d11), true);
    }

    @Override
    public double[] sample(int i10) {
        if (i10 > 0) {
            double[] dArr = new double[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                dArr[i11] = sample();
            }
            return dArr;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i10));
    }

    public AbstractRealDistribution(RandomGenerator randomGenerator) {
        this.randomData = new RandomDataImpl();
        this.solverAbsoluteAccuracy = 1.0E-6d;
        this.random = randomGenerator;
    }
}
