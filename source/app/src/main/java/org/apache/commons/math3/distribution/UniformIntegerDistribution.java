package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;

public class UniformIntegerDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = 20120109;
    private final int lower;
    private final int upper;

    public UniformIntegerDistribution(int i10, int i11) throws NumberIsTooLargeException {
        this(new Well19937c(), i10, i11);
    }

    @Override
    public double cumulativeProbability(int i10) {
        if (i10 < this.lower) {
            return 0.0d;
        }
        if (i10 > this.upper) {
            return 1.0d;
        }
        return ((i10 - r0) + 1.0d) / ((r1 - r0) + 1.0d);
    }

    @Override
    public double getNumericalMean() {
        return (this.lower + this.upper) * 0.5d;
    }

    @Override
    public double getNumericalVariance() {
        double d10 = (this.upper - this.lower) + 1;
        return ((d10 * d10) - 1.0d) / 12.0d;
    }

    @Override
    public int getSupportLowerBound() {
        return this.lower;
    }

    @Override
    public int getSupportUpperBound() {
        return this.upper;
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public double probability(int i10) {
        int i11;
        if (i10 < this.lower || i10 > (i11 = this.upper)) {
            return 0.0d;
        }
        return 1.0d / ((i11 - r0) + 1);
    }

    @Override
    public int sample() {
        int i10 = this.upper;
        int i11 = this.lower;
        int i12 = (i10 - i11) + 1;
        if (i12 > 0) {
            return i11 + this.random.nextInt(i12);
        }
        while (true) {
            int nextInt = this.random.nextInt();
            if (nextInt >= this.lower && nextInt <= this.upper) {
                return nextInt;
            }
        }
    }

    public UniformIntegerDistribution(RandomGenerator randomGenerator, int i10, int i11) throws NumberIsTooLargeException {
        super(randomGenerator);
        if (i10 <= i11) {
            this.lower = i10;
            this.upper = i11;
            return;
        }
        throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Integer.valueOf(i10), Integer.valueOf(i11), true);
    }
}
