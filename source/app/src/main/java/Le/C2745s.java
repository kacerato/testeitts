package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.Callable;

public final class C2745s<T, U> extends AbstractC2692a<T, U> {

    public final Callable<? extends U> f13165d;

    public final Fe.b<? super U, ? super T> f13166e;

    public static final class a<T, U> extends Ue.f<U> implements InterfaceC2367q<T> {

        public static final long f13167r = -3589550218733891694L;

        public final Fe.b<? super U, ? super T> f13168n;

        public final U f13169o;

        public hn.d f13170p;

        public boolean f13171q;

        public a(hn.c<? super U> cVar, U u10, Fe.b<? super U, ? super T> bVar) {
            super(cVar);
            this.f13168n = bVar;
            this.f13169o = u10;
        }

        @Override
        public void a() {
            if (this.f13171q) {
                return;
            }
            this.f13171q = true;
            d(this.f13169o);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f13170p.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f13171q) {
                return;
            }
            try {
                this.f13168n.accept(this.f13169o, t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f13170p.cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13170p, dVar)) {
                this.f13170p = dVar;
                this.f26033c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f13171q) {
                Ye.a.Y(th2);
            } else {
                this.f13171q = true;
                this.f26033c.onError(th2);
            }
        }
    }

    public C2745s(AbstractC2362l<T> abstractC2362l, Callable<? extends U> callable, Fe.b<? super U, ? super T> bVar) {
        super(abstractC2362l);
        this.f13165d = callable;
        this.f13166e = bVar;
    }

    @Override
    public void m6(hn.c<? super U> cVar) {
        try {
            this.f12507c.l6(new a(cVar, He.b.g(this.f13165d.call(), "The initial value supplied is null"), this.f13166e));
        } catch (Throwable th2) {
            Ue.g.b(th2, cVar);
        }
    }
}
