package Ic;

import java.util.concurrent.atomic.AtomicLong;

public class C2634m extends K8.f {

    @H6.g
    private static final AtomicLong ID_GENERATOR = new AtomicLong(1);

    @H6.g
    private final int hash;

    @H6.g
    private final long f9198id;

    public C2634m() {
        long d10 = d();
        this.f9198id = d10;
        this.hash = Long.hashCode(d10);
    }

    @H6.g
    public static long d() {
        AtomicLong atomicLong;
        long j10;
        do {
            atomicLong = ID_GENERATOR;
            j10 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j10, j10 == Long.MAX_VALUE ? Long.MIN_VALUE : 1 + j10));
        return j10;
    }

    @H6.g
    public long getLongId() {
        return this.f9198id;
    }

    @H6.g
    public int hashCode() {
        return this.hash;
    }

    @H6.g
    public int internalHashCode() {
        return this.hash;
    }
}
