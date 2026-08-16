package Le;

import Be.AbstractC2362l;
import Le.C2703d1;
import cf.C4186e;

public final class C2715h1<T> extends AbstractC2692a<T, T> {

    public final Fe.o<? super AbstractC2362l<Throwable>, ? extends hn.b<?>> f12827d;

    public static final class a<T> extends C2703d1.c<T, Throwable> {

        public static final long f12828p = -2680129890138081029L;

        public a(hn.c<? super T> cVar, Ze.c<Throwable> cVar2, hn.d dVar) {
            super(cVar, cVar2, dVar);
        }

        @Override
        public void a() {
            this.f12677m.cancel();
            this.f12675k.a();
        }

        @Override
        public void onError(Throwable th2) {
            m(th2);
        }
    }

    public C2715h1(AbstractC2362l<T> abstractC2362l, Fe.o<? super AbstractC2362l<Throwable>, ? extends hn.b<?>> oVar) {
        super(abstractC2362l);
        this.f12827d = oVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        C4186e c4186e = new C4186e(cVar);
        Ze.c<T> S82 = Ze.h.V8(8).S8();
        try {
            hn.b bVar = (hn.b) He.b.g(this.f12827d.apply(S82), "handler returned a null Publisher");
            C2703d1.b bVar2 = new C2703d1.b(this.f12507c);
            a aVar = new a(c4186e, S82, bVar2);
            bVar2.f12673e = aVar;
            cVar.j(aVar);
            bVar.l(bVar2);
            bVar2.h(0);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
