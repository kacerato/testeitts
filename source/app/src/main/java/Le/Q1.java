package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class Q1<T, U extends Collection<? super T>> extends Be.K<U> implements Ie.b<U> {

    public final AbstractC2362l<T> f12182b;

    public final Callable<U> f12183c;

    public static final class a<T, U extends Collection<? super T>> implements InterfaceC2367q<T>, De.c {

        public final Be.N<? super U> f12184b;

        public hn.d f12185c;

        public U f12186d;

        public a(Be.N<? super U> n10, U u10) {
            this.f12184b = n10;
            this.f12186d = u10;
        }

        @Override
        public void a() {
            this.f12185c = Ue.j.CANCELLED;
            this.f12184b.b(this.f12186d);
        }

        @Override
        public boolean d() {
            return this.f12185c == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f12185c.cancel();
            this.f12185c = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            this.f12186d.add(t10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12185c, dVar)) {
                this.f12185c = dVar;
                this.f12184b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f12186d = null;
            this.f12185c = Ue.j.CANCELLED;
            this.f12184b.onError(th2);
        }
    }

    public Q1(AbstractC2362l<T> abstractC2362l) {
        this(abstractC2362l, io.reactivex.internal.util.b.b());
    }

    @Override
    public void d1(Be.N<? super U> n10) {
        try {
            this.f12182b.l6(new a(n10, (Collection) He.b.g(this.f12183c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.i(th2, n10);
        }
    }

    @Override
    public AbstractC2362l<U> f() {
        return Ye.a.P(new P1(this.f12182b, this.f12183c));
    }

    public Q1(AbstractC2362l<T> abstractC2362l, Callable<U> callable) {
        this.f12182b = abstractC2362l;
        this.f12183c = callable;
    }
}
