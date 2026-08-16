package Oe;

import java.util.Collection;
import java.util.concurrent.Callable;

public final class B1<T, U extends Collection<? super T>> extends AbstractC2859a<T, U> {

    public final Callable<U> f18723c;

    public static final class a<T, U extends Collection<? super T>> implements Be.I<T>, De.c {

        public final Be.I<? super U> f18724b;

        public De.c f18725c;

        public U f18726d;

        public a(Be.I<? super U> i10, U u10) {
            this.f18724b = i10;
            this.f18726d = u10;
        }

        @Override
        public void a() {
            U u10 = this.f18726d;
            this.f18726d = null;
            this.f18724b.h(u10);
            this.f18724b.a();
        }

        @Override
        public boolean d() {
            return this.f18725c.d();
        }

        @Override
        public void dispose() {
            this.f18725c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18725c, cVar)) {
                this.f18725c = cVar;
                this.f18724b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f18726d.add(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f18726d = null;
            this.f18724b.onError(th2);
        }
    }

    public B1(Be.G<T> g10, int i10) {
        super(g10);
        this.f18723c = He.a.f(i10);
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        try {
            this.f19344b.c(new a(i10, (Collection) He.b.g(this.f18723c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
        }
    }

    public B1(Be.G<T> g10, Callable<U> callable) {
        super(g10);
        this.f18723c = callable;
    }
}
