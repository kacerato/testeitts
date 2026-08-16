package org.apache.commons.math3.random;

import java.util.Random;

public class RandomAdaptor extends Random implements RandomGenerator {
    private static final long serialVersionUID = 2306581345647615033L;
    private final RandomGenerator randomGenerator;

    private RandomAdaptor() {
        this.randomGenerator = null;
    }

    public static Random createAdaptor(RandomGenerator randomGenerator) {
        return new RandomAdaptor(randomGenerator);
    }

    @Override
    public boolean nextBoolean() {
        return this.randomGenerator.nextBoolean();
    }

    @Override
    public void nextBytes(byte[] bArr) {
        this.randomGenerator.nextBytes(bArr);
    }

    @Override
    public double nextDouble() {
        return this.randomGenerator.nextDouble();
    }

    @Override
    public float nextFloat() {
        return this.randomGenerator.nextFloat();
    }

    @Override
    public double nextGaussian() {
        return this.randomGenerator.nextGaussian();
    }

    @Override
    public int nextInt() {
        return this.randomGenerator.nextInt();
    }

    @Override
    public long nextLong() {
        return this.randomGenerator.nextLong();
    }

    @Override
    public void setSeed(int i10) {
        RandomGenerator randomGenerator = this.randomGenerator;
        if (randomGenerator != null) {
            randomGenerator.setSeed(i10);
        }
    }

    public RandomAdaptor(RandomGenerator randomGenerator) {
        this.randomGenerator = randomGenerator;
    }

    @Override
    public int nextInt(int i10) {
        return this.randomGenerator.nextInt(i10);
    }

    @Override
    public void setSeed(int[] iArr) {
        RandomGenerator randomGenerator = this.randomGenerator;
        if (randomGenerator != null) {
            randomGenerator.setSeed(iArr);
        }
    }

    @Override
    public void setSeed(long j10) {
        RandomGenerator randomGenerator = this.randomGenerator;
        if (randomGenerator != null) {
            randomGenerator.setSeed(j10);
        }
    }
}
