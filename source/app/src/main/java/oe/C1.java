package Oe;

import java.util.Collection;
import java.util.concurrent.Callable;

public final class C1<T, U extends Collection<? super T>> extends Be.K<U> implements Ie.d<U> {

    public final Be.G<T> f18750b;

    public final Callable<U> f18751c;

    public static final class a<T, U extends Collection<? super T>> implements Be.I<T>, De.c {

        public final Be.N<? super U> f18752b;

        public U f18753c;

        public De.c f18754d;

        public a(Be.N<? super U> n10, U u10) {
            this.f18752b = n10;
            this.f18753c = u10;
        }

        @Override
        public void a() {
            U u10 = this.f18753c;
            this.f18753c = null;
            this.f18752b.b(u10);
        }

        @Override
        public boolean d() {
            return this.f18754d.d();
        }

        @Override
        public void dispose() {
            this.f18754d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18754d, cVar)) {
                this.f18754d = cVar;
                this.f18752b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f18753c.add(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f18753c = null;
            this.f18752b.onError(th2);
        }
    }

    public C1(Be.G<T> g10, int i10) {
        this.f18750b = g10;
        this.f18751c = He.a.f(i10);
    }

    @Override
    public Be.B<U> c() {
        return Ye.a.R(new B1(this.f18750b, this.f18751c));
    }

    @Override
    public void d1(Be.N<? super U> n10) {
        try {
            this.f18750b.c(new a(n10, (Collection) He.b.g(this.f18751c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.i(th2, n10);
        }
    }

    public C1(Be.G<T> g10, Callable<U> callable) {
        this.f18750b = g10;
        this.f18751c = callable;
    }
}
