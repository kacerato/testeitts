package Me;

public final class C2830p<T> extends AbstractC2815a<T, T> {

    public static final class a<T> implements Be.v<T>, De.c {

        public Be.v<? super T> f15160b;

        public De.c f15161c;

        public a(Be.v<? super T> vVar) {
            this.f15160b = vVar;
        }

        @Override
        public void a() {
            this.f15161c = Ge.d.DISPOSED;
            Be.v<? super T> vVar = this.f15160b;
            if (vVar != null) {
                this.f15160b = null;
                vVar.a();
            }
        }

        @Override
        public void b(T t10) {
            this.f15161c = Ge.d.DISPOSED;
            Be.v<? super T> vVar = this.f15160b;
            if (vVar != null) {
                this.f15160b = null;
                vVar.b(t10);
            }
        }

        @Override
        public boolean d() {
            return this.f15161c.d();
        }

        @Override
        public void dispose() {
            this.f15160b = null;
            this.f15161c.dispose();
            this.f15161c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15161c, cVar)) {
                this.f15161c = cVar;
                this.f15160b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15161c = Ge.d.DISPOSED;
            Be.v<? super T> vVar = this.f15160b;
            if (vVar != null) {
                this.f15160b = null;
                vVar.onError(th2);
            }
        }
    }

    public C2830p(Be.y<T> yVar) {
        super(yVar);
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar));
    }
}
