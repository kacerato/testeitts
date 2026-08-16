package org.apache.commons.math3.distribution;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomDataImpl;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;

public abstract class AbstractIntegerDistribution implements IntegerDistribution, Serializable {
    private static final long serialVersionUID = -1146319659338487221L;
    protected final RandomGenerator random;

    @Deprecated
    protected final RandomDataImpl randomData;

    @Deprecated
    public AbstractIntegerDistribution() {
        this.randomData = new RandomDataImpl();
        this.random = null;
    }

    private double checkedCumulativeProbability(int i10) throws MathInternalError {
        double cumulativeProbability = cumulativeProbability(i10);
        if (Double.isNaN(cumulativeProbability)) {
            throw new MathInternalError(LocalizedFormats.DISCRETE_CUMULATIVE_PROBABILITY_RETURNED_NAN, Integer.valueOf(i10));
        }
        return cumulativeProbability;
    }

    @Override
    public double cumulativeProbability(int i10, int i11) throws NumberIsTooLargeException {
        if (i11 >= i10) {
            return cumulativeProbability(i11) - cumulativeProbability(i10);
        }
        throw new NumberIsTooLargeException(LocalizedFormats.LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT, Integer.valueOf(i10), Integer.valueOf(i11), true);
    }

    @Override
    public int inverseCumulativeProbability(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        int supportLowerBound = getSupportLowerBound();
        if (d10 == 0.0d) {
            return supportLowerBound;
        }
        if (supportLowerBound != Integer.MIN_VALUE) {
            supportLowerBound--;
        } else if (checkedCumulativeProbability(supportLowerBound) >= d10) {
            return supportLowerBound;
        }
        int supportUpperBound = getSupportUpperBound();
        if (d10 == 1.0d) {
            return supportUpperBound;
        }
        double numericalMean = getNumericalMean();
        double sqrt = FastMath.sqrt(getNumericalVariance());
        if (!Double.isInfinite(numericalMean) && !Double.isNaN(numericalMean) && !Double.isInfinite(sqrt) && !Double.isNaN(sqrt) && sqrt != 0.0d) {
            double sqrt2 = FastMath.sqrt((1.0d - d10) / d10);
            double d11 = numericalMean - (sqrt2 * sqrt);
            if (d11 > supportLowerBound) {
                supportLowerBound = ((int) FastMath.ceil(d11)) - 1;
            }
            double d12 = numericalMean + ((1.0d / sqrt2) * sqrt);
            if (d12 < supportUpperBound) {
                supportUpperBound = ((int) FastMath.ceil(d12)) - 1;
            }
        }
        return solveInverseCumulativeProbability(d10, supportLowerBound, supportUpperBound);
    }

    public double logProbability(int i10) {
        return FastMath.log(probability(i10));
    }

    @Override
    public void reseedRandomGenerator(long j10) {
        this.random.setSeed(j10);
        this.randomData.reSeed(j10);
    }

    @Override
    public int sample() {
        return inverseCumulativeProbability(this.random.nextDouble());
    }

    public int solveInverseCumulativeProbability(double d10, int i10, int i11) {
        while (i10 + 1 < i11) {
            int i12 = (i10 + i11) / 2;
            if (i12 < i10 || i12 > i11) {
                i12 = ((i11 - i10) / 2) + i10;
            }
            if (checkedCumulativeProbability(i12) >= d10) {
                i11 = i12;
            } else {
                i10 = i12;
            }
        }
        return i11;
    }

    @Override
    public int[] sample(int i10) {
        if (i10 > 0) {
            int[] iArr = new int[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                iArr[i11] = sample();
            }
            return iArr;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i10));
    }

    public AbstractIntegerDistribution(RandomGenerator randomGenerator) {
        this.randomData = new RandomDataImpl();
        this.random = randomGenerator;
    }
}
