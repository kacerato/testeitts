package Oe;

import bf.C3881e;
import java.util.concurrent.atomic.AtomicReference;

public final class I0<T, R> extends AbstractC2859a<T, R> {

    public final Fe.o<? super Be.B<T>, ? extends Be.G<R>> f18923c;

    public static final class a<T, R> implements Be.I<T> {

        public final C3881e<T> f18924b;

        public final AtomicReference<De.c> f18925c;

        public a(C3881e<T> c3881e, AtomicReference<De.c> atomicReference) {
            this.f18924b = c3881e;
            this.f18925c = atomicReference;
        }

        @Override
        public void a() {
            this.f18924b.a();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f18925c, cVar);
        }

        @Override
        public void h(T t10) {
            this.f18924b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f18924b.onError(th2);
        }
    }

    public static final class b<T, R> extends AtomicReference<De.c> implements Be.I<R>, De.c {

        public static final long f18926d = 854110278590336484L;

        public final Be.I<? super R> f18927b;

        public De.c f18928c;

        public b(Be.I<? super R> i10) {
            this.f18927b = i10;
        }

        @Override
        public void a() {
            Ge.d.a(this);
            this.f18927b.a();
        }

        @Override
        public boolean d() {
            return this.f18928c.d();
        }

        @Override
        public void dispose() {
            this.f18928c.dispose();
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18928c, cVar)) {
                this.f18928c = cVar;
                this.f18927b.e(this);
            }
        }

        @Override
        public void h(R r10) {
            this.f18927b.h(r10);
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this);
            this.f18927b.onError(th2);
        }
    }

    public I0(Be.G<T> g10, Fe.o<? super Be.B<T>, ? extends Be.G<R>> oVar) {
        super(g10);
        this.f18923c = oVar;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        C3881e p82 = C3881e.p8();
        try {
            Be.G g10 = (Be.G) He.b.g(this.f18923c.apply(p82), "The selector returned a null ObservableSource");
            b bVar = new b(i10);
            g10.c(bVar);
            this.f19344b.c(new a(p82, bVar));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
        }
    }
}
