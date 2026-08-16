package qd;

import com.lmax.disruptor.InsufficientCapacityException;

public interface E extends InterfaceC15063f {

    public static final long f106057a = -1;

    boolean a(z zVar);

    boolean b(int i10);

    long c(int i10);

    long d(int i10) throws InsufficientCapacityException;

    long e();

    boolean f(long j10);

    long g() throws InsufficientCapacityException;

    long h(long j10, long j11);

    InterfaceC15056A i(z... zVarArr);

    void j(long j10);

    void k(z... zVarArr);

    void l(long j10);

    int m();

    void n(long j10, long j11);

    long next();

    long remainingCapacity();
}
