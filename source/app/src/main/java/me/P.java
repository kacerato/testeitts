package Me;

public final class P<T> extends AbstractC2815a<T, T> {

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.v<? super T> f14941b;

        public De.c f14942c;

        public a(Be.v<? super T> vVar) {
            this.f14941b = vVar;
        }

        @Override
        public void a() {
            this.f14942c = Ge.d.DISPOSED;
            this.f14941b.a();
        }

        @Override
        public void b(T t10) {
            this.f14942c = Ge.d.DISPOSED;
            this.f14941b.a();
        }

        @Override
        public boolean d() {
            return this.f14942c.d();
        }

        @Override
        public void dispose() {
            this.f14942c.dispose();
            this.f14942c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14942c, cVar)) {
                this.f14942c = cVar;
                this.f14941b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14942c = Ge.d.DISPOSED;
            this.f14941b.onError(th2);
        }
    }

    public P(Be.y<T> yVar) {
        super(yVar);
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar));
    }
}
