package Te;

import Be.InterfaceC2367q;

public abstract class b<T, R> implements InterfaceC2367q<T>, Ie.l<R> {

    public final hn.c<? super R> f24835b;

    public hn.d f24836c;

    public Ie.l<T> f24837d;

    public boolean f24838e;

    public int f24839f;

    public b(hn.c<? super R> cVar) {
        this.f24835b = cVar;
    }

    @Override
    public void a() {
        if (this.f24838e) {
            return;
        }
        this.f24838e = true;
        this.f24835b.a();
    }

    public void b() {
    }

    public boolean c() {
        return true;
    }

    @Override
    public void cancel() {
        this.f24836c.cancel();
    }

    public void clear() {
        this.f24837d.clear();
    }

    public final void d(Throwable th2) {
        io.reactivex.exceptions.a.b(th2);
        this.f24836c.cancel();
        onError(th2);
    }

    public final int e(int i10) {
        Ie.l<T> lVar = this.f24837d;
        if (lVar == null || (i10 & 4) != 0) {
            return 0;
        }
        int m10 = lVar.m(i10);
        if (m10 != 0) {
            this.f24839f = m10;
        }
        return m10;
    }

    @Override
    public void i(long j10) {
        this.f24836c.i(j10);
    }

    @Override
    public boolean isEmpty() {
        return this.f24837d.isEmpty();
    }

    @Override
    public final void j(hn.d dVar) {
        if (Ue.j.o(this.f24836c, dVar)) {
            this.f24836c = dVar;
            if (dVar instanceof Ie.l) {
                this.f24837d = (Ie.l) dVar;
            }
            if (c()) {
                this.f24835b.j(this);
                b();
            }
        }
    }

    @Override
    public final boolean o(R r10, R r11) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public final boolean offer(R r10) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f24838e) {
            Ye.a.Y(th2);
        } else {
            this.f24838e = true;
            this.f24835b.onError(th2);
        }
    }
}
