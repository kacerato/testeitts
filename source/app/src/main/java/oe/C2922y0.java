package Oe;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.Callable;

public final class C2922y0<T, R> extends AbstractC2859a<T, Be.G<? extends R>> {

    public final Fe.o<? super T, ? extends Be.G<? extends R>> f20033c;

    public final Fe.o<? super Throwable, ? extends Be.G<? extends R>> f20034d;

    public final Callable<? extends Be.G<? extends R>> f20035e;

    public static final class a<T, R> implements Be.I<T>, De.c {

        public final Be.I<? super Be.G<? extends R>> f20036b;

        public final Fe.o<? super T, ? extends Be.G<? extends R>> f20037c;

        public final Fe.o<? super Throwable, ? extends Be.G<? extends R>> f20038d;

        public final Callable<? extends Be.G<? extends R>> f20039e;

        public De.c f20040f;

        public a(Be.I<? super Be.G<? extends R>> i10, Fe.o<? super T, ? extends Be.G<? extends R>> oVar, Fe.o<? super Throwable, ? extends Be.G<? extends R>> oVar2, Callable<? extends Be.G<? extends R>> callable) {
            this.f20036b = i10;
            this.f20037c = oVar;
            this.f20038d = oVar2;
            this.f20039e = callable;
        }

        @Override
        public void a() {
            try {
                this.f20036b.h((Be.G) He.b.g(this.f20039e.call(), "The onComplete ObservableSource returned is null"));
                this.f20036b.a();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f20036b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f20040f.d();
        }

        @Override
        public void dispose() {
            this.f20040f.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f20040f, cVar)) {
                this.f20040f = cVar;
                this.f20036b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            try {
                this.f20036b.h((Be.G) He.b.g(this.f20037c.apply(t10), "The onNext ObservableSource returned is null"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f20036b.onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            try {
                this.f20036b.h((Be.G) He.b.g(this.f20038d.apply(th2), "The onError ObservableSource returned is null"));
                this.f20036b.a();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f20036b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public C2922y0(Be.G<T> g10, Fe.o<? super T, ? extends Be.G<? extends R>> oVar, Fe.o<? super Throwable, ? extends Be.G<? extends R>> oVar2, Callable<? extends Be.G<? extends R>> callable) {
        super(g10);
        this.f20033c = oVar;
        this.f20034d = oVar2;
        this.f20035e = callable;
    }

    @Override
    public void J5(Be.I<? super Be.G<? extends R>> i10) {
        this.f19344b.c(new a(i10, this.f20033c, this.f20034d, this.f20035e));
    }
}
