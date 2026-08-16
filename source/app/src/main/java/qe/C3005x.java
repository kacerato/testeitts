package Qe;

import java.util.concurrent.atomic.AtomicReference;

public final class C3005x<T, R> extends Be.K<R> {

    public final Be.Q<? extends T> f22316b;

    public final Fe.o<? super T, ? extends Be.Q<? extends R>> f22317c;

    public static final class a<T, R> extends AtomicReference<De.c> implements Be.N<T>, De.c {

        public static final long f22318d = 3258103020495908596L;

        public final Be.N<? super R> f22319b;

        public final Fe.o<? super T, ? extends Be.Q<? extends R>> f22320c;

        public static final class C0538a<R> implements Be.N<R> {

            public final AtomicReference<De.c> f22321b;

            public final Be.N<? super R> f22322c;

            public C0538a(AtomicReference<De.c> atomicReference, Be.N<? super R> n10) {
                this.f22321b = atomicReference;
                this.f22322c = n10;
            }

            @Override
            public void b(R r10) {
                this.f22322c.b(r10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.c(this.f22321b, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f22322c.onError(th2);
            }
        }

        public a(Be.N<? super R> n10, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar) {
            this.f22319b = n10;
            this.f22320c = oVar;
        }

        @Override
        public void b(T t10) {
            try {
                Be.Q q10 = (Be.Q) He.b.g(this.f22320c.apply(t10), "The single returned by the mapper is null");
                if (d()) {
                    return;
                }
                q10.a(new C0538a(this, this.f22319b));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f22319b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this, cVar)) {
                this.f22319b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22319b.onError(th2);
        }
    }

    public C3005x(Be.Q<? extends T> q10, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar) {
        this.f22317c = oVar;
        this.f22316b = q10;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        this.f22316b.a(new a(n10, this.f22317c));
    }
}
