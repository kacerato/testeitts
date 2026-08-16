package qd;

import com.lmax.disruptor.InsufficientCapacityException;
import java.util.concurrent.locks.LockSupport;
import sun.misc.Unsafe;
import td.C15398d;

public final class u extends AbstractC15058a {

    public static final Unsafe f106103k = C15398d.f();

    public static final long f106104l;

    public static final long f106105m;

    public final z f106106g;

    public final int[] f106107h;

    public final int f106108i;

    public final int f106109j;

    static {
        f106104l = r0.arrayBaseOffset(int[].class);
        f106105m = r0.arrayIndexScale(int[].class);
    }

    public u(int i10, J j10) {
        super(i10, j10);
        this.f106106g = new z(-1L);
        this.f106107h = new int[i10];
        this.f106108i = i10 - 1;
        this.f106109j = C15398d.g(i10);
        r();
    }

    @Override
    public boolean b(int i10) {
        return q(this.f106087e, i10, this.f106086d.c());
    }

    @Override
    public long c(int i10) {
        while (true) {
            long c10 = this.f106086d.c();
            long j10 = i10 + c10;
            long j11 = j10 - this.f106084b;
            long c11 = this.f106106g.c();
            if (j11 > c11 || c11 > c10) {
                long d10 = C15398d.d(this.f106087e, c10);
                if (j11 > d10) {
                    LockSupport.parkNanos(1L);
                } else {
                    this.f106106g.e(d10);
                }
            } else if (this.f106086d.b(c10, j10)) {
                return j10;
            }
        }
    }

    @Override
    public long d(int i10) throws InsufficientCapacityException {
        long c10;
        long j10;
        do {
            c10 = this.f106086d.c();
            j10 = i10 + c10;
            if (!q(this.f106087e, i10, c10)) {
                throw InsufficientCapacityException.INSTANCE;
            }
        } while (!this.f106086d.b(c10, j10));
        return j10;
    }

    @Override
    public boolean f(long j10) {
        return f106103k.getIntVolatile(this.f106107h, (((long) p(j10)) * f106105m) + f106104l) == o(j10);
    }

    @Override
    public long g() throws InsufficientCapacityException {
        return d(1);
    }

    @Override
    public long h(long j10, long j11) {
        while (j10 <= j11) {
            if (!f(j10)) {
                return j10 - 1;
            }
            j10++;
        }
        return j11;
    }

    @Override
    public void j(long j10) {
        s(j10);
        this.f106085c.a();
    }

    @Override
    public void l(long j10) {
        this.f106086d.e(j10);
    }

    @Override
    public void n(long j10, long j11) {
        while (j10 <= j11) {
            s(j10);
            j10++;
        }
        this.f106085c.a();
    }

    @Override
    public long next() {
        return c(1);
    }

    public final int o(long j10) {
        return (int) (j10 >>> this.f106109j);
    }

    public final int p(long j10) {
        return ((int) j10) & this.f106108i;
    }

    public final boolean q(z[] zVarArr, int i10, long j10) {
        long j11 = (i10 + j10) - this.f106084b;
        long c10 = this.f106106g.c();
        if (j11 <= c10 && c10 <= j10) {
            return true;
        }
        long d10 = C15398d.d(zVarArr, j10);
        this.f106106g.e(d10);
        return j11 <= d10;
    }

    public final void r() {
        int length = this.f106107h.length;
        while (true) {
            length--;
            if (length == 0) {
                t(0, -1);
                return;
            }
            t(length, -1);
        }
    }

    @Override
    public long remainingCapacity() {
        return m() - (this.f106086d.c() - C15398d.d(this.f106087e, this.f106086d.c()));
    }

    public final void s(long j10) {
        t(p(j10), o(j10));
    }

    public final void t(int i10, int i11) {
        f106103k.putOrderedInt(this.f106107h, (i10 * f106105m) + f106104l, i11);
    }
}
