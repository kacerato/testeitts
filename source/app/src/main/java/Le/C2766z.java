package Le;

import Be.AbstractC2362l;

public final class C2766z<T, R> extends AbstractC2362l<R> {

    public final hn.b<T> f13402c;

    public final Fe.o<? super T, ? extends hn.b<? extends R>> f13403d;

    public final int f13404e;

    public final io.reactivex.internal.util.j f13405f;

    public C2766z(hn.b<T> bVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, io.reactivex.internal.util.j jVar) {
        this.f13402c = bVar;
        this.f13403d = oVar;
        this.f13404e = i10;
        this.f13405f = jVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        if (C2724k1.b(this.f13402c, cVar, this.f13403d)) {
            return;
        }
        this.f13402c.l(C2757w.O8(cVar, this.f13403d, this.f13404e, this.f13405f));
    }
}
