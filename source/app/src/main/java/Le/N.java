package Le;

import Be.AbstractC2362l;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class N<T, K> extends AbstractC2692a<T, T> {

    public final Fe.o<? super T, K> f12090d;

    public final Callable<? extends Collection<? super K>> f12091e;

    public static final class a<T, K> extends Te.b<T, T> {

        public final Collection<? super K> f12092g;

        public final Fe.o<? super T, K> f12093h;

        public a(hn.c<? super T> cVar, Fe.o<? super T, K> oVar, Collection<? super K> collection) {
            super(cVar);
            this.f12093h = oVar;
            this.f12092g = collection;
        }

        @Override
        public void a() {
            if (this.f24838e) {
                return;
            }
            this.f24838e = true;
            this.f12092g.clear();
            this.f24835b.a();
        }

        @Override
        public void clear() {
            this.f12092g.clear();
            super.clear();
        }

        @Override
        public void h(T t10) {
            if (this.f24838e) {
                return;
            }
            if (this.f24839f != 0) {
                this.f24835b.h(null);
                return;
            }
            try {
                if (this.f12092g.add(He.b.g(this.f12093h.apply(t10), "The keySelector returned a null key"))) {
                    this.f24835b.h(t10);
                } else {
                    this.f24836c.i(1L);
                }
            } catch (Throwable th2) {
                d(th2);
            }
        }

        @Override
        public int m(int i10) {
            return e(i10);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f24838e) {
                Ye.a.Y(th2);
                return;
            }
            this.f24838e = true;
            this.f12092g.clear();
            this.f24835b.onError(th2);
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll;
            while (true) {
                poll = this.f24837d.poll();
                if (poll == null || this.f12092g.add((Object) He.b.g(this.f12093h.apply(poll), "The keySelector returned a null key"))) {
                    break;
                }
                if (this.f24839f == 2) {
                    this.f24836c.i(1L);
                }
            }
            return poll;
        }
    }

    public N(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        super(abstractC2362l);
        this.f12090d = oVar;
        this.f12091e = callable;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        try {
            this.f12507c.l6(new a(cVar, this.f12090d, (Collection) He.b.g(this.f12091e.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
