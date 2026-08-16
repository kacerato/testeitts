package Qe;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class P<T> extends Be.K<T> {

    public final Be.Q<? extends T> f22126b;

    public final Fe.o<? super Throwable, ? extends Be.Q<? extends T>> f22127c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.N<T>, De.c {

        public static final long f22128d = -5314538511045349925L;

        public final Be.N<? super T> f22129b;

        public final Fe.o<? super Throwable, ? extends Be.Q<? extends T>> f22130c;

        public a(Be.N<? super T> n10, Fe.o<? super Throwable, ? extends Be.Q<? extends T>> oVar) {
            this.f22129b = n10;
            this.f22130c = oVar;
        }

        @Override
        public void b(T t10) {
            this.f22129b.b(t10);
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
                this.f22129b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            try {
                ((Be.Q) He.b.g(this.f22130c.apply(th2), "The nextFunction returned a null SingleSource.")).a(new Je.z(this, this.f22129b));
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f22129b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public P(Be.Q<? extends T> q10, Fe.o<? super Throwable, ? extends Be.Q<? extends T>> oVar) {
        this.f22126b = q10;
        this.f22127c = oVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22126b.a(new a(n10, this.f22127c));
    }
}
