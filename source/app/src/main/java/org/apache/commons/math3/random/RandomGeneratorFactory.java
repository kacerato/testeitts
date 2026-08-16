package org.apache.commons.math3.random;

import java.util.Random;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;

public class RandomGeneratorFactory {
    private RandomGeneratorFactory() {
    }

    public static long convertToLong(int[] iArr) {
        long j10 = 0;
        for (int i10 : iArr) {
            j10 = (j10 * 4294967291L) + i10;
        }
        return j10;
    }

    public static RandomGenerator createRandomGenerator(final Random random) {
        return new RandomGenerator() {
            @Override
            public boolean nextBoolean() {
                return Random.this.nextBoolean();
            }

            @Override
            public void nextBytes(byte[] bArr) {
                Random.this.nextBytes(bArr);
            }

            @Override
            public double nextDouble() {
                return Random.this.nextDouble();
            }

            @Override
            public float nextFloat() {
                return Random.this.nextFloat();
            }

            @Override
            public double nextGaussian() {
                return Random.this.nextGaussian();
            }

            @Override
            public int nextInt() {
                return Random.this.nextInt();
            }

            @Override
            public long nextLong() {
                return Random.this.nextLong();
            }

            @Override
            public void setSeed(int i10) {
                Random.this.setSeed(i10);
            }

            @Override
            public int nextInt(int i10) {
                if (i10 > 0) {
                    return Random.this.nextInt(i10);
                }
                throw new NotStrictlyPositiveException(Integer.valueOf(i10));
            }

            @Override
            public void setSeed(int[] iArr) {
                Random.this.setSeed(RandomGeneratorFactory.convertToLong(iArr));
            }

            @Override
            public void setSeed(long j10) {
                Random.this.setSeed(j10);
            }
        };
    }
}
