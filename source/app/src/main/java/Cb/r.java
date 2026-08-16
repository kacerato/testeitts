package cb;

import java.util.Random;

public class r extends Random {

    public static final double f34681d = 1.1102230246251565E-16d;

    public static final double f34682e = 5.960464477539063E-8d;

    public long f34683b;

    public long f34684c;

    public r() {
        setSeed(new Random().nextLong());
    }

    public static final long b(long x10) {
        long j10 = (x10 ^ (x10 >>> 33)) * (-49064778989728563L);
        long j11 = (j10 ^ (j10 >>> 33)) * (-4265267296055464877L);
        return j11 ^ (j11 >>> 33);
    }

    public long a(int seed) {
        return seed == 0 ? this.f34683b : this.f34684c;
    }

    public void c(final long seed0, final long seed1) {
        this.f34683b = seed0;
        this.f34684c = seed1;
    }

    @Override
    public final int next(int bits) {
        return (int) (nextLong() & ((1 << bits) - 1));
    }

    @Override
    public boolean nextBoolean() {
        return (nextLong() & 1) != 0;
    }

    @Override
    public void nextBytes(final byte[] bytes) {
        int length = bytes.length;
        while (length != 0) {
            int i10 = length < 8 ? length : 8;
            long nextLong = nextLong();
            while (true) {
                int i11 = i10 - 1;
                if (i10 != 0) {
                    length--;
                    bytes[length] = (byte) nextLong;
                    nextLong >>= 8;
                    i10 = i11;
                }
            }
        }
    }

    @Override
    public double nextDouble() {
        return (nextLong() >>> 11) * 1.1102230246251565E-16d;
    }

    @Override
    public float nextFloat() {
        return (float) ((nextLong() >>> 40) * 5.960464477539063E-8d);
    }

    @Override
    public int nextInt() {
        return (int) nextLong();
    }

    @Override
    public long nextLong() {
        long j10 = this.f34683b;
        long j11 = this.f34684c;
        this.f34683b = j11;
        long j12 = j10 ^ (j10 << 23);
        long j13 = ((j12 >>> 17) ^ (j12 ^ j11)) ^ (j11 >>> 26);
        this.f34684c = j13;
        return j13 + j11;
    }

    @Override
    public void setSeed(final long seed) {
        if (seed == 0) {
            seed = Long.MIN_VALUE;
        }
        long b10 = b(seed);
        c(b10, b(b10));
    }

    @Override
    public int nextInt(final int n10) {
        return (int) nextLong(n10);
    }

    public r(long seed) {
        setSeed(seed);
    }

    public r(long seed0, long seed1) {
        c(seed0, seed1);
    }

    public long nextLong(final long n10) {
        long nextLong;
        long j10;
        if (n10 <= 0) {
            throw new IllegalArgumentException("n must be positive");
        }
        do {
            nextLong = nextLong() >>> 1;
            j10 = nextLong % n10;
        } while ((nextLong - j10) + (n10 - 1) < 0);
        return j10;
    }
}
