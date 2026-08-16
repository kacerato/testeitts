package Te;

public abstract class a<T, R> implements Ie.a<T>, Ie.l<R> {

    public final Ie.a<? super R> f24830b;

    public hn.d f24831c;

    public Ie.l<T> f24832d;

    public boolean f24833e;

    public int f24834f;

    public a(Ie.a<? super R> aVar) {
        this.f24830b = aVar;
    }

    @Override
    public void a() {
        if (this.f24833e) {
            return;
        }
        this.f24833e = true;
        this.f24830b.a();
    }

    public void b() {
    }

    public boolean c() {
        return true;
    }

    @Override
    public void cancel() {
        this.f24831c.cancel();
    }

    @Override
    public void clear() {
        this.f24832d.clear();
    }

    public final void d(Throwable th2) {
        io.reactivex.exceptions.a.b(th2);
        this.f24831c.cancel();
        onError(th2);
    }

    public final int e(int i10) {
        Ie.l<T> lVar = this.f24832d;
        if (lVar == null || (i10 & 4) != 0) {
            return 0;
        }
        int m10 = lVar.m(i10);
        if (m10 != 0) {
            this.f24834f = m10;
        }
        return m10;
    }

    @Override
    public void i(long j10) {
        this.f24831c.i(j10);
    }

    @Override
    public boolean isEmpty() {
        return this.f24832d.isEmpty();
    }

    @Override
    public final void j(hn.d dVar) {
        if (Ue.j.o(this.f24831c, dVar)) {
            this.f24831c = dVar;
            if (dVar instanceof Ie.l) {
                this.f24832d = (Ie.l) dVar;
            }
            if (c()) {
                this.f24830b.j(this);
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
        if (this.f24833e) {
            Ye.a.Y(th2);
        } else {
            this.f24833e = true;
            this.f24830b.onError(th2);
        }
    }
}
