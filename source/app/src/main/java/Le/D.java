package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class D<T> extends AbstractC2692a<T, Long> {

    public static final class a extends Ue.f<Long> implements InterfaceC2367q<Object> {

        public static final long f11782p = 4973004223787171406L;

        public hn.d f11783n;

        public long f11784o;

        public a(hn.c<? super Long> cVar) {
            super(cVar);
        }

        @Override
        public void a() {
            d(Long.valueOf(this.f11784o));
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f11783n.cancel();
        }

        @Override
        public void h(Object obj) {
            this.f11784o++;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11783n, dVar)) {
                this.f11783n = dVar;
                this.f26033c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f26033c.onError(th2);
        }
    }

    public D(AbstractC2362l<T> abstractC2362l) {
        super(abstractC2362l);
    }

    @Override
    public void m6(hn.c<? super Long> cVar) {
        this.f12507c.l6(new a(cVar));
    }
}
