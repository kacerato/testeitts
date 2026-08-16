package Me;

public final class o0<T> extends Be.B<T> implements Ie.f<T> {

    public final Be.y<T> f15157b;

    public static final class a<T> extends Je.l<T> implements Be.v<T> {

        public static final long f15158l = 7603343402964826922L;

        public De.c f15159k;

        public a(Be.I<? super T> i10) {
            super(i10);
        }

        @Override
        public void a() {
            c();
        }

        @Override
        public void b(T t10) {
            f(t10);
        }

        @Override
        public void dispose() {
            super.dispose();
            this.f15159k.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15159k, cVar)) {
                this.f15159k = cVar;
                this.f10484c.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            i(th2);
        }
    }

    public o0(Be.y<T> yVar) {
        this.f15157b = yVar;
    }

    public static <T> Be.v<T> j8(Be.I<? super T> i10) {
        return new a(i10);
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f15157b.d(j8(i10));
    }

    @Override
    public Be.y<T> source() {
        return this.f15157b;
    }
}
