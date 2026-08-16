package Oe;

import java.util.concurrent.Callable;

public final class C2911t<T, U> extends Be.K<U> implements Ie.d<U> {

    public final Be.G<T> f19884b;

    public final Callable<? extends U> f19885c;

    public final Fe.b<? super U, ? super T> f19886d;

    public static final class a<T, U> implements Be.I<T>, De.c {

        public final Be.N<? super U> f19887b;

        public final Fe.b<? super U, ? super T> f19888c;

        public final U f19889d;

        public De.c f19890e;

        public boolean f19891f;

        public a(Be.N<? super U> n10, U u10, Fe.b<? super U, ? super T> bVar) {
            this.f19887b = n10;
            this.f19888c = bVar;
            this.f19889d = u10;
        }

        @Override
        public void a() {
            if (this.f19891f) {
                return;
            }
            this.f19891f = true;
            this.f19887b.b(this.f19889d);
        }

        @Override
        public boolean d() {
            return this.f19890e.d();
        }

        @Override
        public void dispose() {
            this.f19890e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19890e, cVar)) {
                this.f19890e = cVar;
                this.f19887b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19891f) {
                return;
            }
            try {
                this.f19888c.accept(this.f19889d, t10);
            } catch (Throwable th2) {
                this.f19890e.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19891f) {
                Ye.a.Y(th2);
            } else {
                this.f19891f = true;
                this.f19887b.onError(th2);
            }
        }
    }

    public C2911t(Be.G<T> g10, Callable<? extends U> callable, Fe.b<? super U, ? super T> bVar) {
        this.f19884b = g10;
        this.f19885c = callable;
        this.f19886d = bVar;
    }

    @Override
    public Be.B<U> c() {
        return Ye.a.R(new C2909s(this.f19884b, this.f19885c, this.f19886d));
    }

    @Override
    public void d1(Be.N<? super U> n10) {
        try {
            this.f19884b.c(new a(n10, He.b.g(this.f19885c.call(), "The initialSupplier returned a null value"), this.f19886d));
        } catch (Throwable th2) {
            Ge.e.i(th2, n10);
        }
    }
}
