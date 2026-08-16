package qd;

import sun.misc.Unsafe;
import td.C15398d;

public class z {

    public static final long f106130b = -1;

    public static final Unsafe f106131c = C15398d.f();

    public static final long f106132d;

    public final long[] f106133a;

    static {
        f106132d = r0.arrayBaseOffset(long[].class) + (r0.arrayIndexScale(long[].class) * 7);
    }

    public z() {
        this(-1L);
    }

    public long a(long j10) {
        long c10;
        long j11;
        do {
            c10 = c();
            j11 = c10 + j10;
        } while (!b(c10, j11));
        return j11;
    }

    public boolean b(long j10, long j11) {
        return f106131c.compareAndSwapLong(this.f106133a, f106132d, j10, j11);
    }

    public long c() {
        return f106131c.getLongVolatile(this.f106133a, f106132d);
    }

    public long d() {
        return a(1L);
    }

    public void e(long j10) {
        f106131c.putOrderedLong(this.f106133a, f106132d, j10);
    }

    public void f(long j10) {
        f106131c.putLongVolatile(this.f106133a, f106132d, j10);
    }

    public String toString() {
        return Long.toString(c());
    }

    public z(long j10) {
        long[] jArr = new long[15];
        this.f106133a = jArr;
        f106131c.putOrderedLong(jArr, f106132d, j10);
    }
}
