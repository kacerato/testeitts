package org.apache.commons.math3.random;

import java.io.Serializable;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;

public abstract class BitsStreamGenerator implements RandomGenerator, Serializable {
    private static final long serialVersionUID = 20130104;
    private double nextGaussian = Double.NaN;

    private void nextBytesFill(byte[] bArr, int i10, int i11) {
        int i12 = (2147483644 & i11) + i10;
        int i13 = i10;
        while (i13 < i12) {
            int next = next(32);
            bArr[i13] = (byte) next;
            bArr[i13 + 1] = (byte) (next >>> 8);
            int i14 = i13 + 3;
            bArr[i13 + 2] = (byte) (next >>> 16);
            i13 += 4;
            bArr[i14] = (byte) (next >>> 24);
        }
        int i15 = i10 + i11;
        if (i13 >= i15) {
            return;
        }
        int next2 = next(32);
        while (true) {
            int i16 = i13 + 1;
            bArr[i13] = (byte) next2;
            if (i16 >= i15) {
                return;
            }
            next2 >>>= 8;
            i13 = i16;
        }
    }

    public void clear() {
        this.nextGaussian = Double.NaN;
    }

    public abstract int next(int i10);

    @Override
    public boolean nextBoolean() {
        return next(1) != 0;
    }

    @Override
    public void nextBytes(byte[] bArr) {
        nextBytesFill(bArr, 0, bArr.length);
    }

    @Override
    public double nextDouble() {
        return ((next(26) << 26) | next(26)) * 2.220446049250313E-16d;
    }

    @Override
    public float nextFloat() {
        return next(23) * 1.1920929E-7f;
    }

    @Override
    public double nextGaussian() {
        if (!Double.isNaN(this.nextGaussian)) {
            double d10 = this.nextGaussian;
            this.nextGaussian = Double.NaN;
            return d10;
        }
        double nextDouble = nextDouble() * 6.283185307179586d;
        double sqrt = FastMath.sqrt(FastMath.log(nextDouble()) * (-2.0d));
        double cos = FastMath.cos(nextDouble) * sqrt;
        this.nextGaussian = sqrt * FastMath.sin(nextDouble);
        return cos;
    }

    @Override
    public int nextInt() {
        return next(32);
    }

    @Override
    public long nextLong() {
        return (next(32) << 32) | (next(32) & 4294967295L);
    }

    @Override
    public abstract void setSeed(int i10);

    @Override
    public abstract void setSeed(long j10);

    @Override
    public abstract void setSeed(int[] iArr);

    public void nextBytes(byte[] bArr, int i10, int i11) {
        if (i10 >= 0 && i10 < bArr.length) {
            if (i11 >= 0 && i11 <= bArr.length - i10) {
                nextBytesFill(bArr, i10, i11);
                return;
            }
            throw new OutOfRangeException(Integer.valueOf(i11), 0, Integer.valueOf(bArr.length - i10));
        }
        throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(bArr.length));
    }

    @Override
    public int nextInt(int i10) throws IllegalArgumentException {
        int next;
        int i11;
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        if (((-i10) & i10) == i10) {
            return (int) ((i10 * next(31)) >> 31);
        }
        do {
            next = next(31);
            i11 = next % i10;
        } while ((next - i11) + (i10 - 1) < 0);
        return i11;
    }

    public long nextLong(long j10) throws IllegalArgumentException {
        long next;
        long j11;
        if (j10 <= 0) {
            throw new NotStrictlyPositiveException(Long.valueOf(j10));
        }
        do {
            next = (next(31) << 32) | (next(32) & 4294967295L);
            j11 = next % j10;
        } while ((next - j11) + (j10 - 1) < 0);
        return j11;
    }
}
