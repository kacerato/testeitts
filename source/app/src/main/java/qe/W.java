package Qe;

public final class W<T> extends Be.B<T> {

    public final Be.Q<? extends T> f22166b;

    public static final class a<T> extends Je.l<T> implements Be.N<T> {

        public static final long f22167l = 3786543492451018833L;

        public De.c f22168k;

        public a(Be.I<? super T> i10) {
            super(i10);
        }

        @Override
        public void b(T t10) {
            f(t10);
        }

        @Override
        public void dispose() {
            super.dispose();
            this.f22168k.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22168k, cVar)) {
                this.f22168k = cVar;
                this.f10484c.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            i(th2);
        }
    }

    public W(Be.Q<? extends T> q10) {
        this.f22166b = q10;
    }

    public static <T> Be.N<T> j8(Be.I<? super T> i10) {
        return new a(i10);
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f22166b.a(j8(i10));
    }
}
