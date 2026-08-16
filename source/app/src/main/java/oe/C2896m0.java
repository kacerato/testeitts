package Oe;

public final class C2896m0<T> extends AbstractC2859a<T, T> {

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19646b;

        public De.c f19647c;

        public a(Be.I<? super T> i10) {
            this.f19646b = i10;
        }

        @Override
        public void a() {
            this.f19646b.a();
        }

        @Override
        public boolean d() {
            return this.f19647c.d();
        }

        @Override
        public void dispose() {
            this.f19647c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19647c, cVar)) {
                this.f19647c = cVar;
                this.f19646b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f19646b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19646b.onError(th2);
        }
    }

    public C2896m0(Be.G<T> g10) {
        super(g10);
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10));
    }
}
