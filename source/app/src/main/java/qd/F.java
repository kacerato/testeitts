package qd;

import com.lmax.disruptor.InsufficientCapacityException;
import java.util.concurrent.locks.LockSupport;
import td.C15398d;

public final class F extends AbstractC15058a {

    public final b f106058g;

    public static class b {

        public long f106059a;

        public long f106060b;

        public long f106061c;

        public long f106062d;

        public long f106063e;

        public long f106064f;

        public long f106065g;

        public long f106066h;

        public b() {
            this.f106059a = -1L;
            this.f106060b = -1L;
        }
    }

    public F(int i10, J j10) {
        super(i10, j10);
        this.f106058g = new b();
    }

    @Override
    public boolean b(int i10) {
        b bVar = this.f106058g;
        long j10 = bVar.f106059a;
        long j11 = (i10 + j10) - this.f106084b;
        long j12 = bVar.f106060b;
        if (j11 <= j12 && j12 <= j10) {
            return true;
        }
        long d10 = C15398d.d(this.f106087e, j10);
        this.f106058g.f106060b = d10;
        return j11 <= d10;
    }

    @Override
    public long c(int i10) {
        long d10;
        b bVar = this.f106058g;
        long j10 = bVar.f106059a;
        long j11 = i10 + j10;
        long j12 = j11 - this.f106084b;
        long j13 = bVar.f106060b;
        if (j12 > j13 || j13 > j10) {
            while (true) {
                d10 = C15398d.d(this.f106087e, j10);
                if (j12 <= d10) {
                    break;
                }
                LockSupport.parkNanos(1L);
            }
            this.f106058g.f106060b = d10;
        }
        this.f106058g.f106059a = j11;
        return j11;
    }

    @Override
    public long d(int i10) throws InsufficientCapacityException {
        if (!b(i10)) {
            throw InsufficientCapacityException.INSTANCE;
        }
        b bVar = this.f106058g;
        long j10 = bVar.f106059a + i10;
        bVar.f106059a = j10;
        return j10;
    }

    @Override
    public boolean f(long j10) {
        return j10 <= this.f106086d.c();
    }

    @Override
    public long g() throws InsufficientCapacityException {
        return d(1);
    }

    @Override
    public long h(long j10, long j11) {
        return j11;
    }

    @Override
    public void j(long j10) {
        this.f106086d.e(j10);
        this.f106085c.a();
    }

    @Override
    public void l(long j10) {
        this.f106058g.f106059a = j10;
    }

    @Override
    public void n(long j10, long j11) {
        j(j11);
    }

    @Override
    public long next() {
        return c(1);
    }

    @Override
    public long remainingCapacity() {
        long j10 = this.f106058g.f106059a;
        return m() - (j10 - C15398d.d(this.f106087e, j10));
    }
}
