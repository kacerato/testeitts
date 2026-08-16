package Je;

import Be.I;

public final class n<T> implements I<T>, De.c {

    public final I<? super T> f10488b;

    public final Fe.g<? super De.c> f10489c;

    public final Fe.a f10490d;

    public De.c f10491e;

    public n(I<? super T> i10, Fe.g<? super De.c> gVar, Fe.a aVar) {
        this.f10488b = i10;
        this.f10489c = gVar;
        this.f10490d = aVar;
    }

    @Override
    public void a() {
        De.c cVar = this.f10491e;
        Ge.d dVar = Ge.d.DISPOSED;
        if (cVar != dVar) {
            this.f10491e = dVar;
            this.f10488b.a();
        }
    }

    @Override
    public boolean d() {
        return this.f10491e.d();
    }

    @Override
    public void dispose() {
        De.c cVar = this.f10491e;
        Ge.d dVar = Ge.d.DISPOSED;
        if (cVar != dVar) {
            this.f10491e = dVar;
            try {
                this.f10490d.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
            cVar.dispose();
        }
    }

    @Override
    public void e(De.c cVar) {
        try {
            this.f10489c.accept(cVar);
            if (Ge.d.j(this.f10491e, cVar)) {
                this.f10491e = cVar;
                this.f10488b.e(this);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            cVar.dispose();
            this.f10491e = Ge.d.DISPOSED;
            Ge.e.h(th2, this.f10488b);
        }
    }

    @Override
    public void h(T t10) {
        this.f10488b.h(t10);
    }

    @Override
    public void onError(Throwable th2) {
        De.c cVar = this.f10491e;
        Ge.d dVar = Ge.d.DISPOSED;
        if (cVar == dVar) {
            Ye.a.Y(th2);
        } else {
            this.f10491e = dVar;
            this.f10488b.onError(th2);
        }
    }
}
