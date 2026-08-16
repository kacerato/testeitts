package Je;

import Be.I;

public abstract class AbstractC2668a<T, R> implements I<T>, Ie.j<R> {

    public final I<? super R> f10453b;

    public De.c f10454c;

    public Ie.j<T> f10455d;

    public boolean f10456e;

    public int f10457f;

    public AbstractC2668a(I<? super R> i10) {
        this.f10453b = i10;
    }

    @Override
    public void a() {
        if (this.f10456e) {
            return;
        }
        this.f10456e = true;
        this.f10453b.a();
    }

    public void b() {
    }

    public boolean c() {
        return true;
    }

    @Override
    public void clear() {
        this.f10455d.clear();
    }

    @Override
    public boolean d() {
        return this.f10454c.d();
    }

    @Override
    public void dispose() {
        this.f10454c.dispose();
    }

    @Override
    public final void e(De.c cVar) {
        if (Ge.d.j(this.f10454c, cVar)) {
            this.f10454c = cVar;
            if (cVar instanceof Ie.j) {
                this.f10455d = (Ie.j) cVar;
            }
            if (c()) {
                this.f10453b.e(this);
                b();
            }
        }
    }

    public final void f(Throwable th2) {
        io.reactivex.exceptions.a.b(th2);
        this.f10454c.dispose();
        onError(th2);
    }

    public final int g(int i10) {
        Ie.j<T> jVar = this.f10455d;
        if (jVar == null || (i10 & 4) != 0) {
            return 0;
        }
        int m10 = jVar.m(i10);
        if (m10 != 0) {
            this.f10457f = m10;
        }
        return m10;
    }

    @Override
    public boolean isEmpty() {
        return this.f10455d.isEmpty();
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
        if (this.f10456e) {
            Ye.a.Y(th2);
        } else {
            this.f10456e = true;
            this.f10453b.onError(th2);
        }
    }
}
