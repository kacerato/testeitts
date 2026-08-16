package Oe;

import java.util.concurrent.Callable;

public final class C2861a1<T, R> extends AbstractC2859a<T, R> {

    public final Fe.c<R, ? super T, R> f19359c;

    public final Callable<R> f19360d;

    public static final class a<T, R> implements Be.I<T>, De.c {

        public final Be.I<? super R> f19361b;

        public final Fe.c<R, ? super T, R> f19362c;

        public R f19363d;

        public De.c f19364e;

        public boolean f19365f;

        public a(Be.I<? super R> i10, Fe.c<R, ? super T, R> cVar, R r10) {
            this.f19361b = i10;
            this.f19362c = cVar;
            this.f19363d = r10;
        }

        @Override
        public void a() {
            if (this.f19365f) {
                return;
            }
            this.f19365f = true;
            this.f19361b.a();
        }

        @Override
        public boolean d() {
            return this.f19364e.d();
        }

        @Override
        public void dispose() {
            this.f19364e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19364e, cVar)) {
                this.f19364e = cVar;
                this.f19361b.e(this);
                this.f19361b.h(this.f19363d);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19365f) {
                return;
            }
            try {
                R r10 = (R) He.b.g(this.f19362c.apply(this.f19363d, t10), "The accumulator returned a null value");
                this.f19363d = r10;
                this.f19361b.h(r10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19364e.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19365f) {
                Ye.a.Y(th2);
            } else {
                this.f19365f = true;
                this.f19361b.onError(th2);
            }
        }
    }

    public C2861a1(Be.G<T> g10, Callable<R> callable, Fe.c<R, ? super T, R> cVar) {
        super(g10);
        this.f19359c = cVar;
        this.f19360d = callable;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        try {
            this.f19344b.c(new a(i10, this.f19359c, He.b.g(this.f19360d.call(), "The seed supplied is null")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
        }
    }
}
