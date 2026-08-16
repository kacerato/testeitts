package Te;

import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;

public abstract class n<T, U, V> extends r implements InterfaceC2367q<T>, io.reactivex.internal.util.t<U, V> {

    public final hn.c<? super V> f24879W;

    public final Ie.n<U> f24880X;

    public volatile boolean f24881Y;

    public volatile boolean f24882Z;

    public Throwable f24883q0;

    public n(hn.c<? super V> cVar, Ie.n<U> nVar) {
        this.f24879W = cVar;
        this.f24880X = nVar;
    }

    @Override
    public final Throwable b() {
        return this.f24883q0;
    }

    @Override
    public final int c(int i10) {
        return this.f24930q.addAndGet(i10);
    }

    @Override
    public final boolean done() {
        return this.f24882Z;
    }

    public boolean e(hn.c<? super V> cVar, U u10) {
        return false;
    }

    @Override
    public final boolean f() {
        return this.f24930q.getAndIncrement() == 0;
    }

    @Override
    public final boolean k() {
        return this.f24881Y;
    }

    @Override
    public final long l() {
        return this.f24914G.get();
    }

    @Override
    public final long m(long j10) {
        return this.f24914G.addAndGet(-j10);
    }

    public final boolean n() {
        return this.f24930q.get() == 0 && this.f24930q.compareAndSet(0, 1);
    }

    public final void o(U u10, boolean z10, De.c cVar) {
        hn.c<? super V> cVar2 = this.f24879W;
        Ie.n<U> nVar = this.f24880X;
        if (n()) {
            long j10 = this.f24914G.get();
            if (j10 == 0) {
                cVar.dispose();
                cVar2.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            } else {
                if (e(cVar2, u10) && j10 != Long.MAX_VALUE) {
                    m(1L);
                }
                if (c(-1) == 0) {
                    return;
                }
            }
        } else {
            nVar.offer(u10);
            if (!f()) {
                return;
            }
        }
        io.reactivex.internal.util.u.e(nVar, cVar2, z10, cVar, this);
    }

    public final void p(U u10, boolean z10, De.c cVar) {
        hn.c<? super V> cVar2 = this.f24879W;
        Ie.n<U> nVar = this.f24880X;
        if (n()) {
            long j10 = this.f24914G.get();
            if (j10 == 0) {
                this.f24881Y = true;
                cVar.dispose();
                cVar2.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            } else if (nVar.isEmpty()) {
                if (e(cVar2, u10) && j10 != Long.MAX_VALUE) {
                    m(1L);
                }
                if (c(-1) == 0) {
                    return;
                }
            } else {
                nVar.offer(u10);
            }
        } else {
            nVar.offer(u10);
            if (!f()) {
                return;
            }
        }
        io.reactivex.internal.util.u.e(nVar, cVar2, z10, cVar, this);
    }

    public final void q(long j10) {
        if (Ue.j.m(j10)) {
            io.reactivex.internal.util.d.a(this.f24914G, j10);
        }
    }
}
