package org.apache.commons.math3.distribution;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;

public abstract class AbstractMultivariateRealDistribution implements MultivariateRealDistribution {
    private final int dimension;
    protected final RandomGenerator random;

    public AbstractMultivariateRealDistribution(RandomGenerator randomGenerator, int i10) {
        this.random = randomGenerator;
        this.dimension = i10;
    }

    @Override
    public int getDimension() {
        return this.dimension;
    }

    @Override
    public void reseedRandomGenerator(long j10) {
        this.random.setSeed(j10);
    }

    @Override
    public abstract double[] sample();

    @Override
    public double[][] sample(int i10) {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i10));
        }
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i10, this.dimension);
        for (int i11 = 0; i11 < i10; i11++) {
            dArr[i11] = sample();
        }
        return dArr;
    }
}
