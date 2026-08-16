package org.apache.commons.math3.random;

public class SynchronizedRandomGenerator implements RandomGenerator {
    private final RandomGenerator wrapped;

    public SynchronizedRandomGenerator(RandomGenerator randomGenerator) {
        this.wrapped = randomGenerator;
    }

    @Override
    public synchronized boolean nextBoolean() {
        return this.wrapped.nextBoolean();
    }

    @Override
    public synchronized void nextBytes(byte[] bArr) {
        this.wrapped.nextBytes(bArr);
    }

    @Override
    public synchronized double nextDouble() {
        return this.wrapped.nextDouble();
    }

    @Override
    public synchronized float nextFloat() {
        return this.wrapped.nextFloat();
    }

    @Override
    public synchronized double nextGaussian() {
        return this.wrapped.nextGaussian();
    }

    @Override
    public synchronized int nextInt() {
        return this.wrapped.nextInt();
    }

    @Override
    public synchronized long nextLong() {
        return this.wrapped.nextLong();
    }

    @Override
    public synchronized void setSeed(int i10) {
        this.wrapped.setSeed(i10);
    }

    @Override
    public synchronized int nextInt(int i10) {
        return this.wrapped.nextInt(i10);
    }

    @Override
    public synchronized void setSeed(int[] iArr) {
        this.wrapped.setSeed(iArr);
    }

    @Override
    public synchronized void setSeed(long j10) {
        this.wrapped.setSeed(j10);
    }
}
