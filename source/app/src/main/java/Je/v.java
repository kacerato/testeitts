package Je;

import Be.I;

public abstract class v<T, U, V> extends x implements I<T>, io.reactivex.internal.util.q<U, V> {

    public final I<? super V> f10515G;

    public final Ie.n<U> f10516H;

    public volatile boolean f10517I;

    public volatile boolean f10518J;

    public Throwable f10519K;

    public v(I<? super V> i10, Ie.n<U> nVar) {
        this.f10515G = i10;
        this.f10516H = nVar;
    }

    @Override
    public final Throwable b() {
        return this.f10519K;
    }

    @Override
    public final int c(int i10) {
        return this.f10550q.addAndGet(i10);
    }

    @Override
    public final boolean done() {
        return this.f10518J;
    }

    @Override
    public final boolean f() {
        return this.f10550q.getAndIncrement() == 0;
    }

    public final boolean i() {
        return this.f10550q.get() == 0 && this.f10550q.compareAndSet(0, 1);
    }

    public final void j(U u10, boolean z10, De.c cVar) {
        I<? super V> i10 = this.f10515G;
        Ie.n<U> nVar = this.f10516H;
        if (this.f10550q.get() == 0 && this.f10550q.compareAndSet(0, 1)) {
            l(i10, u10);
            if (c(-1) == 0) {
                return;
            }
        } else {
            nVar.offer(u10);
            if (!f()) {
                return;
            }
        }
        io.reactivex.internal.util.u.d(nVar, i10, z10, cVar, this);
    }

    @Override
    public final boolean k() {
        return this.f10517I;
    }

    @Override
    public void l(I<? super V> i10, U u10) {
    }

    public final void m(U u10, boolean z10, De.c cVar) {
        I<? super V> i10 = this.f10515G;
        Ie.n<U> nVar = this.f10516H;
        if (this.f10550q.get() != 0 || !this.f10550q.compareAndSet(0, 1)) {
            nVar.offer(u10);
            if (!f()) {
                return;
            }
        } else if (nVar.isEmpty()) {
            l(i10, u10);
            if (c(-1) == 0) {
                return;
            }
        } else {
            nVar.offer(u10);
        }
        io.reactivex.internal.util.u.d(nVar, i10, z10, cVar, this);
    }
}
