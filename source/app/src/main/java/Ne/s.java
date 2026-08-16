package Ne;

import Be.B;
import Be.G;
import Be.I;
import Be.N;
import Be.Q;
import java.util.concurrent.atomic.AtomicReference;

public final class s<T, R> extends B<R> {

    public final Q<T> f16159b;

    public final Fe.o<? super T, ? extends G<? extends R>> f16160c;

    public static final class a<T, R> extends AtomicReference<De.c> implements I<R>, N<T>, De.c {

        public static final long f16161d = -8948264376121066672L;

        public final I<? super R> f16162b;

        public final Fe.o<? super T, ? extends G<? extends R>> f16163c;

        public a(I<? super R> i10, Fe.o<? super T, ? extends G<? extends R>> oVar) {
            this.f16162b = i10;
            this.f16163c = oVar;
        }

        @Override
        public void a() {
            this.f16162b.a();
        }

        @Override
        public void b(T t10) {
            try {
                ((G) He.b.g(this.f16163c.apply(t10), "The mapper returned a null Publisher")).c(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f16162b.onError(th2);
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
            this.f16162b.h(r10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f16162b.onError(th2);
        }
    }

    public s(Q<T> q10, Fe.o<? super T, ? extends G<? extends R>> oVar) {
        this.f16159b = q10;
        this.f16160c = oVar;
    }

    @Override
    public void J5(I<? super R> i10) {
        a aVar = new a(i10, this.f16160c);
        i10.e(aVar);
        this.f16159b.a(aVar);
    }
}
