package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2716i<T> extends AbstractC2692a<T, Boolean> {

    public final Fe.r<? super T> f12829d;

    public static final class a<T> extends Ue.f<Boolean> implements InterfaceC2367q<T> {

        public static final long f12830q = -2311252482644620661L;

        public final Fe.r<? super T> f12831n;

        public hn.d f12832o;

        public boolean f12833p;

        public a(hn.c<? super Boolean> cVar, Fe.r<? super T> rVar) {
            super(cVar);
            this.f12831n = rVar;
        }

        @Override
        public void a() {
            if (this.f12833p) {
                return;
            }
            this.f12833p = true;
            d(Boolean.FALSE);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f12832o.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f12833p) {
                return;
            }
            try {
                if (this.f12831n.test(t10)) {
                    this.f12833p = true;
                    this.f12832o.cancel();
                    d(Boolean.TRUE);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12832o.cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12832o, dVar)) {
                this.f12832o = dVar;
                this.f26033c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12833p) {
                Ye.a.Y(th2);
            } else {
                this.f12833p = true;
                this.f26033c.onError(th2);
            }
        }
    }

    public C2716i(AbstractC2362l<T> abstractC2362l, Fe.r<? super T> rVar) {
        super(abstractC2362l);
        this.f12829d = rVar;
    }

    @Override
    public void m6(hn.c<? super Boolean> cVar) {
        this.f12507c.l6(new a(cVar, this.f12829d));
    }
}
