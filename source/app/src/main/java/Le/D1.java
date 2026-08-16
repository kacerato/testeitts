package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class D1<T> extends AbstractC2692a<T, T> {

    public static final class a<T> extends Ue.f<T> implements InterfaceC2367q<T> {

        public static final long f11792o = -5467847744262967226L;

        public hn.d f11793n;

        public a(hn.c<? super T> cVar) {
            super(cVar);
        }

        @Override
        public void a() {
            T t10 = this.f26034d;
            if (t10 != null) {
                d(t10);
            } else {
                this.f26033c.a();
            }
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f11793n.cancel();
        }

        @Override
        public void h(T t10) {
            this.f26034d = t10;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11793n, dVar)) {
                this.f11793n = dVar;
                this.f26033c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f26034d = null;
            this.f26033c.onError(th2);
        }
    }

    public D1(AbstractC2362l<T> abstractC2362l) {
        super(abstractC2362l);
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar));
    }
}
