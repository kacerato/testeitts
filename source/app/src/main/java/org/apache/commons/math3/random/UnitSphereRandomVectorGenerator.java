package org.apache.commons.math3.random;

import org.apache.commons.math3.util.FastMath;

public class UnitSphereRandomVectorGenerator implements RandomVectorGenerator {
    private final int dimension;
    private final RandomGenerator rand;

    public UnitSphereRandomVectorGenerator(int i10, RandomGenerator randomGenerator) {
        this.dimension = i10;
        this.rand = randomGenerator;
    }

    @Override
    public double[] nextVector() {
        double[] dArr = new double[this.dimension];
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.dimension; i10++) {
            double nextGaussian = this.rand.nextGaussian();
            dArr[i10] = nextGaussian;
            d10 += nextGaussian * nextGaussian;
        }
        double sqrt = 1.0d / FastMath.sqrt(d10);
        for (int i11 = 0; i11 < this.dimension; i11++) {
            dArr[i11] = dArr[i11] * sqrt;
        }
        return dArr;
    }

    public UnitSphereRandomVectorGenerator(int i10) {
        this(i10, new MersenneTwister());
    }
}
