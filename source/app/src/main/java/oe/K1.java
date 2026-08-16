package Oe;

import java.util.concurrent.atomic.AtomicReference;

public final class K1<T, U, R> extends AbstractC2859a<T, R> {

    public final Fe.c<? super T, ? super U, ? extends R> f19010c;

    public final Be.G<? extends U> f19011d;

    public static final class a<T, U, R> extends AtomicReference<U> implements Be.I<T>, De.c {

        public static final long f19012f = -312246233408980075L;

        public final Be.I<? super R> f19013b;

        public final Fe.c<? super T, ? super U, ? extends R> f19014c;

        public final AtomicReference<De.c> f19015d = new AtomicReference<>();

        public final AtomicReference<De.c> f19016e = new AtomicReference<>();

        public a(Be.I<? super R> i10, Fe.c<? super T, ? super U, ? extends R> cVar) {
            this.f19013b = i10;
            this.f19014c = cVar;
        }

        @Override
        public void a() {
            Ge.d.a(this.f19016e);
            this.f19013b.a();
        }

        public void b(Throwable th2) {
            Ge.d.a(this.f19015d);
            this.f19013b.onError(th2);
        }

        public boolean c(De.c cVar) {
            return Ge.d.h(this.f19016e, cVar);
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f19015d.get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f19015d);
            Ge.d.a(this.f19016e);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f19015d, cVar);
        }

        @Override
        public void h(T t10) {
            U u10 = get();
            if (u10 != null) {
                try {
                    this.f19013b.h(He.b.g(this.f19014c.apply(t10, u10), "The combiner returned a null value"));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    dispose();
                    this.f19013b.onError(th2);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f19016e);
            this.f19013b.onError(th2);
        }
    }

    public final class b implements Be.I<U> {

        public final a<T, U, R> f19017b;

        public b(a<T, U, R> aVar) {
            this.f19017b = aVar;
        }

        @Override
        public void a() {
        }

        @Override
        public void e(De.c cVar) {
            this.f19017b.c(cVar);
        }

        @Override
        public void h(U u10) {
            this.f19017b.lazySet(u10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19017b.b(th2);
        }
    }

    public K1(Be.G<T> g10, Fe.c<? super T, ? super U, ? extends R> cVar, Be.G<? extends U> g11) {
        super(g10);
        this.f19010c = cVar;
        this.f19011d = g11;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        We.m mVar = new We.m(i10);
        a aVar = new a(mVar, this.f19010c);
        mVar.e(aVar);
        this.f19011d.c(new b(aVar));
        this.f19344b.c(aVar);
    }
}
