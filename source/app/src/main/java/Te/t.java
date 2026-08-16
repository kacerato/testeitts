package Te;

import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicLong;

public abstract class t<T, R> extends AtomicLong implements InterfaceC2367q<T>, hn.d {

    public static final long f24931f = 7917814472626990048L;

    public static final long f24932g = Long.MIN_VALUE;

    public static final long f24933h = Long.MAX_VALUE;

    public final hn.c<? super R> f24934b;

    public hn.d f24935c;

    public R f24936d;

    public long f24937e;

    public t(hn.c<? super R> cVar) {
        this.f24934b = cVar;
    }

    public final void c(R r10) {
        long j10 = this.f24937e;
        if (j10 != 0) {
            io.reactivex.internal.util.d.e(this, j10);
        }
        while (true) {
            long j11 = get();
            if ((j11 & Long.MIN_VALUE) != 0) {
                d(r10);
                return;
            }
            if ((j11 & Long.MAX_VALUE) != 0) {
                lazySet(-9223372036854775807L);
                this.f24934b.h(r10);
                this.f24934b.a();
                return;
            } else {
                this.f24936d = r10;
                if (compareAndSet(0L, Long.MIN_VALUE)) {
                    return;
                } else {
                    this.f24936d = null;
                }
            }
        }
    }

    public void cancel() {
        this.f24935c.cancel();
    }

    public void d(R r10) {
    }

    @Override
    public final void i(long j10) {
        long j11;
        if (!Ue.j.m(j10)) {
            return;
        }
        do {
            j11 = get();
            if ((j11 & Long.MIN_VALUE) != 0) {
                if (compareAndSet(Long.MIN_VALUE, -9223372036854775807L)) {
                    this.f24934b.h(this.f24936d);
                    this.f24934b.a();
                    return;
                }
                return;
            }
        } while (!compareAndSet(j11, io.reactivex.internal.util.d.c(j11, j10)));
        this.f24935c.i(j10);
    }

    @Override
    public void j(hn.d dVar) {
        if (Ue.j.o(this.f24935c, dVar)) {
            this.f24935c = dVar;
            this.f24934b.j(this);
        }
    }
}
