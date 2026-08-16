package org.apache.commons.math3.random;

import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;

public class UncorrelatedRandomVectorGenerator implements RandomVectorGenerator {
    private final NormalizedRandomGenerator generator;
    private final double[] mean;
    private final double[] standardDeviation;

    public UncorrelatedRandomVectorGenerator(double[] dArr, double[] dArr2, NormalizedRandomGenerator normalizedRandomGenerator) {
        if (dArr.length == dArr2.length) {
            this.mean = (double[]) dArr.clone();
            this.standardDeviation = (double[]) dArr2.clone();
            this.generator = normalizedRandomGenerator;
            return;
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }

    @Override
    public double[] nextVector() {
        int length = this.mean.length;
        double[] dArr = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr[i10] = this.mean[i10] + (this.standardDeviation[i10] * this.generator.nextNormalizedDouble());
        }
        return dArr;
    }

    public UncorrelatedRandomVectorGenerator(int i10, NormalizedRandomGenerator normalizedRandomGenerator) {
        this.mean = new double[i10];
        double[] dArr = new double[i10];
        this.standardDeviation = dArr;
        Arrays.fill(dArr, 1.0d);
        this.generator = normalizedRandomGenerator;
    }
}
