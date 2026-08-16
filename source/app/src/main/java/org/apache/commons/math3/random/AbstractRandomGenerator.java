package org.apache.commons.math3.random;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;

public abstract class AbstractRandomGenerator implements RandomGenerator {
    private double cachedNormalDeviate = Double.NaN;

    public void clear() {
        this.cachedNormalDeviate = Double.NaN;
    }

    @Override
    public boolean nextBoolean() {
        return nextDouble() <= 0.5d;
    }

    @Override
    public void nextBytes(byte[] bArr) {
        int i10 = 0;
        while (i10 < bArr.length) {
            int nextInt = nextInt();
            int i11 = 0;
            while (i11 < 3) {
                if (i11 > 0) {
                    nextInt >>= 8;
                }
                int i12 = i10 + 1;
                bArr[i10] = (byte) nextInt;
                if (i12 == bArr.length) {
                    return;
                }
                i11++;
                i10 = i12;
            }
        }
    }

    @Override
    public abstract double nextDouble();

    @Override
    public float nextFloat() {
        return (float) nextDouble();
    }

    @Override
    public double nextGaussian() {
        if (!Double.isNaN(this.cachedNormalDeviate)) {
            double d10 = this.cachedNormalDeviate;
            this.cachedNormalDeviate = Double.NaN;
            return d10;
        }
        double d11 = 0.0d;
        double d12 = 0.0d;
        double d13 = 1.0d;
        while (d13 >= 1.0d) {
            double nextDouble = (nextDouble() * 2.0d) - 1.0d;
            d12 = (nextDouble() * 2.0d) - 1.0d;
            d13 = (nextDouble * nextDouble) + (d12 * d12);
            d11 = nextDouble;
        }
        if (d13 != 0.0d) {
            d13 = FastMath.sqrt((FastMath.log(d13) * (-2.0d)) / d13);
        }
        this.cachedNormalDeviate = d12 * d13;
        return d11 * d13;
    }

    @Override
    public int nextInt() {
        return (int) (((nextDouble() * 2.0d) - 1.0d) * 2.147483647E9d);
    }

    @Override
    public long nextLong() {
        return (long) (((nextDouble() * 2.0d) - 1.0d) * 9.223372036854776E18d);
    }

    @Override
    public void setSeed(int i10) {
        setSeed(i10);
    }

    @Override
    public abstract void setSeed(long j10);

    @Override
    public int nextInt(int i10) {
        if (i10 > 0) {
            int nextDouble = (int) (nextDouble() * i10);
            return nextDouble < i10 ? nextDouble : i10 - 1;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i10));
    }

    @Override
    public void setSeed(int[] iArr) {
        long j10 = 0;
        for (int i10 : iArr) {
            j10 = (j10 * 4294967291L) + i10;
        }
        setSeed(j10);
    }
}
