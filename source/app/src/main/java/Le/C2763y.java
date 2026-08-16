package Le;

import Be.AbstractC2362l;
import Le.C2760x;

public final class C2763y<T, R> extends AbstractC2362l<R> {

    public final hn.b<T> f13382c;

    public final Fe.o<? super T, ? extends hn.b<? extends R>> f13383d;

    public final int f13384e;

    public final int f13385f;

    public final io.reactivex.internal.util.j f13386g;

    public C2763y(hn.b<T> bVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, int i11, io.reactivex.internal.util.j jVar) {
        this.f13382c = bVar;
        this.f13383d = oVar;
        this.f13384e = i10;
        this.f13385f = i11;
        this.f13386g = jVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f13382c.l(new C2760x.a(cVar, this.f13383d, this.f13384e, this.f13385f, this.f13386g));
    }
}
