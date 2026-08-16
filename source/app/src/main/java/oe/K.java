package Oe;

import Je.AbstractC2668a;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class K<T, K> extends AbstractC2859a<T, T> {

    public final Fe.o<? super T, K> f18999c;

    public final Callable<? extends Collection<? super K>> f19000d;

    public static final class a<T, K> extends AbstractC2668a<T, T> {

        public final Collection<? super K> f19001g;

        public final Fe.o<? super T, K> f19002h;

        public a(Be.I<? super T> i10, Fe.o<? super T, K> oVar, Collection<? super K> collection) {
            super(i10);
            this.f19002h = oVar;
            this.f19001g = collection;
        }

        @Override
        public void a() {
            if (this.f10456e) {
                return;
            }
            this.f10456e = true;
            this.f19001g.clear();
            this.f10453b.a();
        }

        @Override
        public void clear() {
            this.f19001g.clear();
            super.clear();
        }

        @Override
        public void h(T t10) {
            if (this.f10456e) {
                return;
            }
            if (this.f10457f != 0) {
                this.f10453b.h(null);
                return;
            }
            try {
                if (this.f19001g.add(He.b.g(this.f19002h.apply(t10), "The keySelector returned a null key"))) {
                    this.f10453b.h(t10);
                }
            } catch (Throwable th2) {
                f(th2);
            }
        }

        @Override
        public int m(int i10) {
            return g(i10);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f10456e) {
                Ye.a.Y(th2);
                return;
            }
            this.f10456e = true;
            this.f19001g.clear();
            this.f10453b.onError(th2);
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll;
            do {
                poll = this.f10455d.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f19001g.add((Object) He.b.g(this.f19002h.apply(poll), "The keySelector returned a null key")));
            return poll;
        }
    }

    public K(Be.G<T> g10, Fe.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        super(g10);
        this.f18999c = oVar;
        this.f19000d = callable;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        try {
            this.f19344b.c(new a(i10, this.f18999c, (Collection) He.b.g(this.f19000d.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
        }
    }
}
