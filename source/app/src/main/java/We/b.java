package We;

import Be.I;

public abstract class b<T> implements I<T> {

    public De.c f27727b;

    public final void b() {
        De.c cVar = this.f27727b;
        this.f27727b = Ge.d.DISPOSED;
        cVar.dispose();
    }

    public void c() {
    }

    @Override
    public final void e(@Ce.f De.c cVar) {
        if (io.reactivex.internal.util.i.e(this.f27727b, cVar, getClass())) {
            this.f27727b = cVar;
            c();
        }
    }
}
