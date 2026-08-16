package Me;

public final class O<T> extends AbstractC2815a<T, T> {

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.v<? super T> f14939b;

        public De.c f14940c;

        public a(Be.v<? super T> vVar) {
            this.f14939b = vVar;
        }

        @Override
        public void a() {
            this.f14939b.a();
        }

        @Override
        public void b(T t10) {
            this.f14939b.b(t10);
        }

        @Override
        public boolean d() {
            return this.f14940c.d();
        }

        @Override
        public void dispose() {
            this.f14940c.dispose();
            this.f14940c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14940c, cVar)) {
                this.f14940c = cVar;
                this.f14939b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14939b.onError(th2);
        }
    }

    public O(Be.y<T> yVar) {
        super(yVar);
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar));
    }
}
