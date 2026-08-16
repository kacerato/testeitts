package Me;

import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;

public final class F<T, R> extends Be.K<R> {

    public final Be.y<T> f14907b;

    public final Fe.o<? super T, ? extends Be.Q<? extends R>> f14908c;

    public static final class a<T, R> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f14909d = 4827726964688405508L;

        public final Be.N<? super R> f14910b;

        public final Fe.o<? super T, ? extends Be.Q<? extends R>> f14911c;

        public a(Be.N<? super R> n10, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar) {
            this.f14910b = n10;
            this.f14911c = oVar;
        }

        @Override
        public void a() {
            this.f14910b.onError(new NoSuchElementException());
        }

        @Override
        public void b(T t10) {
            try {
                Be.Q q10 = (Be.Q) He.b.g(this.f14911c.apply(t10), "The mapper returned a null SingleSource");
                if (d()) {
                    return;
                }
                q10.a(new b(this, this.f14910b));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(th2);
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
                this.f14910b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14910b.onError(th2);
        }
    }

    public static final class b<R> implements Be.N<R> {

        public final AtomicReference<De.c> f14912b;

        public final Be.N<? super R> f14913c;

        public b(AtomicReference<De.c> atomicReference, Be.N<? super R> n10) {
            this.f14912b = atomicReference;
            this.f14913c = n10;
        }

        @Override
        public void b(R r10) {
            this.f14913c.b(r10);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.c(this.f14912b, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f14913c.onError(th2);
        }
    }

    public F(Be.y<T> yVar, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar) {
        this.f14907b = yVar;
        this.f14908c = oVar;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        this.f14907b.d(new a(n10, this.f14908c));
    }
}
