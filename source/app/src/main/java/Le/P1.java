package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class P1<T, U extends Collection<? super T>> extends AbstractC2692a<T, U> {

    public final Callable<U> f12157d;

    public static final class a<T, U extends Collection<? super T>> extends Ue.f<U> implements InterfaceC2367q<T>, hn.d {

        public static final long f12158o = -8134157938864266736L;

        public hn.d f12159n;

        /* JADX WARN: Multi-variable type inference failed */
        public a(hn.c<? super U> cVar, U u10) {
            super(cVar);
            this.f26034d = u10;
        }

        @Override
        public void a() {
            d(this.f26034d);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f12159n.cancel();
        }

        @Override
        public void h(T t10) {
            Collection collection = (Collection) this.f26034d;
            if (collection != null) {
                collection.add(t10);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12159n, dVar)) {
                this.f12159n = dVar;
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

    public P1(AbstractC2362l<T> abstractC2362l, Callable<U> callable) {
        super(abstractC2362l);
        this.f12157d = callable;
    }

    @Override
    public void m6(hn.c<? super U> cVar) {
        try {
            this.f12507c.l6(new a(cVar, (Collection) He.b.g(this.f12157d.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
