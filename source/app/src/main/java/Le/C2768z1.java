package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2768z1<T> extends AbstractC2692a<T, T> {

    public final hn.b<? extends T> f13412d;

    public static final class a<T> implements InterfaceC2367q<T> {

        public final hn.c<? super T> f13413b;

        public final hn.b<? extends T> f13414c;

        public boolean f13416e = true;

        public final Ue.i f13415d = new Ue.i(false);

        public a(hn.c<? super T> cVar, hn.b<? extends T> bVar) {
            this.f13413b = cVar;
            this.f13414c = bVar;
        }

        @Override
        public void a() {
            if (!this.f13416e) {
                this.f13413b.a();
            } else {
                this.f13416e = false;
                this.f13414c.l(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f13416e) {
                this.f13416e = false;
            }
            this.f13413b.h(t10);
        }

        @Override
        public void j(hn.d dVar) {
            this.f13415d.l(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f13413b.onError(th2);
        }
    }

    public C2768z1(AbstractC2362l<T> abstractC2362l, hn.b<? extends T> bVar) {
        super(abstractC2362l);
        this.f13412d = bVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar, this.f13412d);
        cVar.j(aVar.f13415d);
        this.f12507c.l6(aVar);
    }
}
