package org.apache.commons.math3.random;

public interface RandomGenerator {
    boolean nextBoolean();

    void nextBytes(byte[] bArr);

    double nextDouble();

    float nextFloat();

    double nextGaussian();

    int nextInt();

    int nextInt(int i10);

    long nextLong();

    void setSeed(int i10);

    void setSeed(long j10);

    void setSeed(int[] iArr);
}
