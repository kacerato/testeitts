package Me;

public final class S<T> extends AbstractC2815a<T, Boolean> {

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.v<? super Boolean> f14946b;

        public De.c f14947c;

        public a(Be.v<? super Boolean> vVar) {
            this.f14946b = vVar;
        }

        @Override
        public void a() {
            this.f14946b.b(Boolean.TRUE);
        }

        @Override
        public void b(T t10) {
            this.f14946b.b(Boolean.FALSE);
        }

        @Override
        public boolean d() {
            return this.f14947c.d();
        }

        @Override
        public void dispose() {
            this.f14947c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14947c, cVar)) {
                this.f14947c = cVar;
                this.f14946b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14946b.onError(th2);
        }
    }

    public S(Be.y<T> yVar) {
        super(yVar);
    }

    @Override
    public void t1(Be.v<? super Boolean> vVar) {
        this.f14976b.d(new a(vVar));
    }
}
