package Me;

public final class W<T, R> extends AbstractC2815a<T, R> {

    public final Fe.o<? super T, ? extends R> f14953c;

    public static final class a<T, R> implements Be.v<T>, De.c {

        public final Be.v<? super R> f14954b;

        public final Fe.o<? super T, ? extends R> f14955c;

        public De.c f14956d;

        public a(Be.v<? super R> vVar, Fe.o<? super T, ? extends R> oVar) {
            this.f14954b = vVar;
            this.f14955c = oVar;
        }

        @Override
        public void a() {
            this.f14954b.a();
        }

        @Override
        public void b(T t10) {
            try {
                this.f14954b.b(He.b.g(this.f14955c.apply(t10), "The mapper returned a null item"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f14954b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f14956d.d();
        }

        @Override
        public void dispose() {
            De.c cVar = this.f14956d;
            this.f14956d = Ge.d.DISPOSED;
            cVar.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14956d, cVar)) {
                this.f14956d = cVar;
                this.f14954b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14954b.onError(th2);
        }
    }

    public W(Be.y<T> yVar, Fe.o<? super T, ? extends R> oVar) {
        super(yVar);
        this.f14953c = oVar;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        this.f14976b.d(new a(vVar, this.f14953c));
    }
}
