package Le;

import Be.AbstractC2362l;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.Callable;

public final class D0<T, R> extends AbstractC2692a<T, R> {

    public final Fe.o<? super T, ? extends R> f11785d;

    public final Fe.o<? super Throwable, ? extends R> f11786e;

    public final Callable<? extends R> f11787f;

    public static final class a<T, R> extends Te.t<T, R> {

        public static final long f11788l = 2757120512858778108L;

        public final Fe.o<? super T, ? extends R> f11789i;

        public final Fe.o<? super Throwable, ? extends R> f11790j;

        public final Callable<? extends R> f11791k;

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends R> oVar, Fe.o<? super Throwable, ? extends R> oVar2, Callable<? extends R> callable) {
            super(cVar);
            this.f11789i = oVar;
            this.f11790j = oVar2;
            this.f11791k = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void a() {
            try {
                c(He.b.g(this.f11791k.call(), "The onComplete publisher returned is null"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f24934b.onError(th2);
            }
        }

        @Override
        public void h(T t10) {
            try {
                Object g10 = He.b.g(this.f11789i.apply(t10), "The onNext publisher returned is null");
                this.f24937e++;
                this.f24934b.h(g10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f24934b.onError(th2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onError(Throwable th2) {
            try {
                c(He.b.g(this.f11790j.apply(th2), "The onError publisher returned is null"));
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f24934b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public D0(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends R> oVar, Fe.o<? super Throwable, ? extends R> oVar2, Callable<? extends R> callable) {
        super(abstractC2362l);
        this.f11785d = oVar;
        this.f11786e = oVar2;
        this.f11787f = callable;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f12507c.l6(new a(cVar, this.f11785d, this.f11786e, this.f11787f));
    }
}
