package Oe;

public final class M0<T, R> extends Be.K<R> {

    public final Be.G<T> f19050b;

    public final R f19051c;

    public final Fe.c<R, ? super T, R> f19052d;

    public static final class a<T, R> implements Be.I<T>, De.c {

        public final Be.N<? super R> f19053b;

        public final Fe.c<R, ? super T, R> f19054c;

        public R f19055d;

        public De.c f19056e;

        public a(Be.N<? super R> n10, Fe.c<R, ? super T, R> cVar, R r10) {
            this.f19053b = n10;
            this.f19055d = r10;
            this.f19054c = cVar;
        }

        @Override
        public void a() {
            R r10 = this.f19055d;
            if (r10 != null) {
                this.f19055d = null;
                this.f19053b.b(r10);
            }
        }

        @Override
        public boolean d() {
            return this.f19056e.d();
        }

        @Override
        public void dispose() {
            this.f19056e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19056e, cVar)) {
                this.f19056e = cVar;
                this.f19053b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            R r10 = this.f19055d;
            if (r10 != null) {
                try {
                    this.f19055d = (R) He.b.g(this.f19054c.apply(r10, t10), "The reducer returned a null value");
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f19056e.dispose();
                    onError(th2);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19055d == null) {
                Ye.a.Y(th2);
            } else {
                this.f19055d = null;
                this.f19053b.onError(th2);
            }
        }
    }

    public M0(Be.G<T> g10, R r10, Fe.c<R, ? super T, R> cVar) {
        this.f19050b = g10;
        this.f19051c = r10;
        this.f19052d = cVar;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        this.f19050b.c(new a(n10, this.f19052d, this.f19051c));
    }
}
