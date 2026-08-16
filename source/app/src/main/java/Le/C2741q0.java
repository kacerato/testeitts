package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2741q0<T> extends AbstractC2692a<T, T> {

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super T> f13129b;

        public hn.d f13130c;

        public a(hn.c<? super T> cVar) {
            this.f13129b = cVar;
        }

        @Override
        public void a() {
            this.f13129b.a();
        }

        @Override
        public void cancel() {
            this.f13130c.cancel();
        }

        @Override
        public void h(T t10) {
            this.f13129b.h(t10);
        }

        @Override
        public void i(long j10) {
            this.f13130c.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13130c, dVar)) {
                this.f13130c = dVar;
                this.f13129b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f13129b.onError(th2);
        }
    }

    public C2741q0(AbstractC2362l<T> abstractC2362l) {
        super(abstractC2362l);
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar));
    }
}
