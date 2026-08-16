package Ne;

import Be.B;
import Be.G;
import Be.I;
import Be.v;
import Be.y;
import java.util.concurrent.atomic.AtomicReference;

public final class j<T, R> extends B<R> {

    public final y<T> f16042b;

    public final Fe.o<? super T, ? extends G<? extends R>> f16043c;

    public static final class a<T, R> extends AtomicReference<De.c> implements I<R>, v<T>, De.c {

        public static final long f16044d = -8948264376121066672L;

        public final I<? super R> f16045b;

        public final Fe.o<? super T, ? extends G<? extends R>> f16046c;

        public a(I<? super R> i10, Fe.o<? super T, ? extends G<? extends R>> oVar) {
            this.f16045b = i10;
            this.f16046c = oVar;
        }

        @Override
        public void a() {
            this.f16045b.a();
        }

        @Override
        public void b(T t10) {
            try {
                ((G) He.b.g(this.f16046c.apply(t10), "The mapper returned a null Publisher")).c(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f16045b.onError(th2);
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
            Ge.d.c(this, cVar);
        }

        @Override
        public void h(R r10) {
            this.f16045b.h(r10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f16045b.onError(th2);
        }
    }

    public j(y<T> yVar, Fe.o<? super T, ? extends G<? extends R>> oVar) {
        this.f16042b = yVar;
        this.f16043c = oVar;
    }

    @Override
    public void J5(I<? super R> i10) {
        a aVar = new a(i10, this.f16043c);
        i10.e(aVar);
        this.f16042b.d(aVar);
    }
}
