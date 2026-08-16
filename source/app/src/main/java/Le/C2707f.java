package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2707f<T> extends AbstractC2692a<T, Boolean> {

    public final Fe.r<? super T> f12746d;

    public static final class a<T> extends Ue.f<Boolean> implements InterfaceC2367q<T> {

        public static final long f12747q = -3521127104134758517L;

        public final Fe.r<? super T> f12748n;

        public hn.d f12749o;

        public boolean f12750p;

        public a(hn.c<? super Boolean> cVar, Fe.r<? super T> rVar) {
            super(cVar);
            this.f12748n = rVar;
        }

        @Override
        public void a() {
            if (this.f12750p) {
                return;
            }
            this.f12750p = true;
            d(Boolean.TRUE);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f12749o.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f12750p) {
                return;
            }
            try {
                if (this.f12748n.test(t10)) {
                    return;
                }
                this.f12750p = true;
                this.f12749o.cancel();
                d(Boolean.FALSE);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12749o.cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12749o, dVar)) {
                this.f12749o = dVar;
                this.f26033c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12750p) {
                Ye.a.Y(th2);
            } else {
                this.f12750p = true;
                this.f26033c.onError(th2);
            }
        }
    }

    public C2707f(AbstractC2362l<T> abstractC2362l, Fe.r<? super T> rVar) {
        super(abstractC2362l);
        this.f12746d = rVar;
    }

    @Override
    public void m6(hn.c<? super Boolean> cVar) {
        this.f12507c.l6(new a(cVar, this.f12746d));
    }
}
