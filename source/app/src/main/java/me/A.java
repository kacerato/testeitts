package Me;

import java.util.concurrent.atomic.AtomicReference;

public final class A<T, U, R> extends AbstractC2815a<T, R> {

    public final Fe.o<? super T, ? extends Be.y<? extends U>> f14866c;

    public final Fe.c<? super T, ? super U, ? extends R> f14867d;

    public static final class a<T, U, R> implements Be.v<T>, De.c {

        public final Fe.o<? super T, ? extends Be.y<? extends U>> f14868b;

        public final C0424a<T, U, R> f14869c;

        public static final class C0424a<T, U, R> extends AtomicReference<De.c> implements Be.v<U> {

            public static final long f14870e = -2897979525538174559L;

            public final Be.v<? super R> f14871b;

            public final Fe.c<? super T, ? super U, ? extends R> f14872c;

            public T f14873d;

            public C0424a(Be.v<? super R> vVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
                this.f14871b = vVar;
                this.f14872c = cVar;
            }

            @Override
            public void a() {
                this.f14871b.a();
            }

            @Override
            public void b(U u10) {
                T t10 = this.f14873d;
                this.f14873d = null;
                try {
                    this.f14871b.b(He.b.g(this.f14872c.apply(t10, u10), "The resultSelector returned a null value"));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f14871b.onError(th2);
                }
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f14871b.onError(th2);
            }
        }

        public a(Be.v<? super R> vVar, Fe.o<? super T, ? extends Be.y<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
            this.f14869c = new C0424a<>(vVar, cVar);
            this.f14868b = oVar;
        }

        @Override
        public void a() {
            this.f14869c.f14871b.a();
        }

        @Override
        public void b(T t10) {
            try {
                Be.y yVar = (Be.y) He.b.g(this.f14868b.apply(t10), "The mapper returned a null MaybeSource");
                if (Ge.d.c(this.f14869c, null)) {
                    C0424a<T, U, R> c0424a = this.f14869c;
                    c0424a.f14873d = t10;
                    yVar.d(c0424a);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f14869c.f14871b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f14869c.get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f14869c);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this.f14869c, cVar)) {
                this.f14869c.f14871b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14869c.f14871b.onError(th2);
        }
    }

    public A(Be.y<T> yVar, Fe.o<? super T, ? extends Be.y<? extends U>> oVar, Fe.c<? super T, ? super U, ? extends R> cVar) {
        super(yVar);
        this.f14866c = oVar;
        this.f14867d = cVar;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        this.f14976b.d(new a(vVar, this.f14866c, this.f14867d));
    }
}
