package Le;

import Be.AbstractC2362l;
import io.reactivex.exceptions.CompositeException;

public final class R0<T> extends AbstractC2692a<T, T> {

    public final Fe.o<? super Throwable, ? extends T> f12187d;

    public static final class a<T> extends Te.t<T, T> {

        public static final long f12188j = -3740826063558713822L;

        public final Fe.o<? super Throwable, ? extends T> f12189i;

        public a(hn.c<? super T> cVar, Fe.o<? super Throwable, ? extends T> oVar) {
            super(cVar);
            this.f12189i = oVar;
        }

        @Override
        public void a() {
            this.f24934b.a();
        }

        @Override
        public void h(T t10) {
            this.f24937e++;
            this.f24934b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                c(He.b.g(this.f12189i.apply(th2), "The valueSupplier returned a null value"));
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f24934b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public R0(AbstractC2362l<T> abstractC2362l, Fe.o<? super Throwable, ? extends T> oVar) {
        super(abstractC2362l);
        this.f12187d = oVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12187d));
    }
}
