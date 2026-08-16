package Oe;

import java.util.concurrent.Callable;

public final class C2909s<T, U> extends AbstractC2859a<T, U> {

    public final Callable<? extends U> f19847c;

    public final Fe.b<? super U, ? super T> f19848d;

    public static final class a<T, U> implements Be.I<T>, De.c {

        public final Be.I<? super U> f19849b;

        public final Fe.b<? super U, ? super T> f19850c;

        public final U f19851d;

        public De.c f19852e;

        public boolean f19853f;

        public a(Be.I<? super U> i10, U u10, Fe.b<? super U, ? super T> bVar) {
            this.f19849b = i10;
            this.f19850c = bVar;
            this.f19851d = u10;
        }

        @Override
        public void a() {
            if (this.f19853f) {
                return;
            }
            this.f19853f = true;
            this.f19849b.h(this.f19851d);
            this.f19849b.a();
        }

        @Override
        public boolean d() {
            return this.f19852e.d();
        }

        @Override
        public void dispose() {
            this.f19852e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19852e, cVar)) {
                this.f19852e = cVar;
                this.f19849b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19853f) {
                return;
            }
            try {
                this.f19850c.accept(this.f19851d, t10);
            } catch (Throwable th2) {
                this.f19852e.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19853f) {
                Ye.a.Y(th2);
            } else {
                this.f19853f = true;
                this.f19849b.onError(th2);
            }
        }
    }

    public C2909s(Be.G<T> g10, Callable<? extends U> callable, Fe.b<? super U, ? super T> bVar) {
        super(g10);
        this.f19847c = callable;
        this.f19848d = bVar;
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        try {
            this.f19344b.c(new a(i10, He.b.g(this.f19847c.call(), "The initialSupplier returned a null value"), this.f19848d));
        } catch (Throwable th2) {
            Ge.e.h(th2, i10);
        }
    }
}
