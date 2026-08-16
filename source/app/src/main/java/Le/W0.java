package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class W0<T> extends AbstractC2692a<T, T> {

    public final Fe.c<T, T, T> f12391d;

    public static final class a<T> extends Ue.f<T> implements InterfaceC2367q<T> {

        public static final long f12392p = -4663883003264602070L;

        public final Fe.c<T, T, T> f12393n;

        public hn.d f12394o;

        public a(hn.c<? super T> cVar, Fe.c<T, T, T> cVar2) {
            super(cVar);
            this.f12393n = cVar2;
        }

        @Override
        public void a() {
            hn.d dVar = this.f12394o;
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar == jVar) {
                return;
            }
            this.f12394o = jVar;
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
            this.f12394o.cancel();
            this.f12394o = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            if (this.f12394o == Ue.j.CANCELLED) {
                return;
            }
            T t11 = this.f26034d;
            if (t11 == null) {
                this.f26034d = t10;
                return;
            }
            try {
                this.f26034d = (T) He.b.g(this.f12393n.apply(t11, t10), "The reducer returned a null value");
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12394o.cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12394o, dVar)) {
                this.f12394o = dVar;
                this.f26033c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            hn.d dVar = this.f12394o;
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar == jVar) {
                Ye.a.Y(th2);
            } else {
                this.f12394o = jVar;
                this.f26033c.onError(th2);
            }
        }
    }

    public W0(AbstractC2362l<T> abstractC2362l, Fe.c<T, T, T> cVar) {
        super(abstractC2362l);
        this.f12391d = cVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12391d));
    }
}
