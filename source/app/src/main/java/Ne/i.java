package Ne;

import Be.A;
import Be.InterfaceC2356f;
import Be.N;
import Be.v;

@Ce.e
public final class i<T> implements N<T>, v<T>, InterfaceC2356f, De.c {

    public final N<? super A<T>> f16040b;

    public De.c f16041c;

    public i(N<? super A<T>> n10) {
        this.f16040b = n10;
    }

    @Override
    public void a() {
        this.f16040b.b(A.a());
    }

    @Override
    public void b(T t10) {
        this.f16040b.b(A.c(t10));
    }

    @Override
    public boolean d() {
        return this.f16041c.d();
    }

    @Override
    public void dispose() {
        this.f16041c.dispose();
    }

    @Override
    public void e(De.c cVar) {
        if (Ge.d.j(this.f16041c, cVar)) {
            this.f16041c = cVar;
            this.f16040b.e(this);
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.f16040b.b(A.b(th2));
    }
}
