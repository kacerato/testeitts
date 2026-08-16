package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class M<T> extends AbstractC2692a<T, T> {

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public hn.c<? super T> f12053b;

        public hn.d f12054c;

        public a(hn.c<? super T> cVar) {
            this.f12053b = cVar;
        }

        @Override
        public void a() {
            hn.c<? super T> cVar = this.f12053b;
            this.f12054c = io.reactivex.internal.util.h.INSTANCE;
            this.f12053b = io.reactivex.internal.util.h.g();
            cVar.a();
        }

        @Override
        public void cancel() {
            hn.d dVar = this.f12054c;
            this.f12054c = io.reactivex.internal.util.h.INSTANCE;
            this.f12053b = io.reactivex.internal.util.h.g();
            dVar.cancel();
        }

        @Override
        public void h(T t10) {
            this.f12053b.h(t10);
        }

        @Override
        public void i(long j10) {
            this.f12054c.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12054c, dVar)) {
                this.f12054c = dVar;
                this.f12053b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            hn.c<? super T> cVar = this.f12053b;
            this.f12054c = io.reactivex.internal.util.h.INSTANCE;
            this.f12053b = io.reactivex.internal.util.h.g();
            cVar.onError(th2);
        }
    }

    public M(AbstractC2362l<T> abstractC2362l) {
        super(abstractC2362l);
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar));
    }
}
