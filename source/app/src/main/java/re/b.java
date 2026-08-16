package Re;

import Ce.g;
import Ie.n;
import io.reactivex.internal.util.s;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class b<E> extends AtomicReferenceArray<E> implements n<E> {

    public static final long f22757g = -1296597691183856449L;

    public static final Integer f22758h = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    public final int f22759b;

    public final AtomicLong f22760c;

    public long f22761d;

    public final AtomicLong f22762e;

    public final int f22763f;

    public b(int i10) {
        super(s.b(i10));
        this.f22759b = length() - 1;
        this.f22760c = new AtomicLong();
        this.f22762e = new AtomicLong();
        this.f22763f = Math.min(i10 / 4, f22758h.intValue());
    }

    public int a(long j10) {
        return ((int) j10) & this.f22759b;
    }

    public int b(long j10, int i10) {
        return ((int) j10) & i10;
    }

    public E c(int i10) {
        return get(i10);
    }

    @Override
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    public void d(long j10) {
        this.f22762e.lazySet(j10);
    }

    public void e(int i10, E e10) {
        lazySet(i10, e10);
    }

    public void f(long j10) {
        this.f22760c.lazySet(j10);
    }

    @Override
    public boolean isEmpty() {
        return this.f22760c.get() == this.f22762e.get();
    }

    @Override
    public boolean o(E e10, E e11) {
        return offer(e10) && offer(e11);
    }

    @Override
    public boolean offer(E e10) {
        if (e10 == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        int i10 = this.f22759b;
        long j10 = this.f22760c.get();
        int b10 = b(j10, i10);
        if (j10 >= this.f22761d) {
            long j11 = this.f22763f + j10;
            if (c(b(j11, i10)) == null) {
                this.f22761d = j11;
            } else if (c(b10) != null) {
                return false;
            }
        }
        e(b10, e10);
        f(j10 + 1);
        return true;
    }

    @Override
    @g
    public E poll() {
        long j10 = this.f22762e.get();
        int a10 = a(j10);
        E c10 = c(a10);
        if (c10 == null) {
            return null;
        }
        d(j10 + 1);
        e(a10, null);
        return c10;
    }
}
