package Oe;

public final class C2924z0<T> extends AbstractC2859a<T, Be.A<T>> {

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super Be.A<T>> f20064b;

        public De.c f20065c;

        public a(Be.I<? super Be.A<T>> i10) {
            this.f20064b = i10;
        }

        @Override
        public void a() {
            this.f20064b.h(Be.A.a());
            this.f20064b.a();
        }

        @Override
        public boolean d() {
            return this.f20065c.d();
        }

        @Override
        public void dispose() {
            this.f20065c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f20065c, cVar)) {
                this.f20065c = cVar;
                this.f20064b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f20064b.h(Be.A.c(t10));
        }

        @Override
        public void onError(Throwable th2) {
            this.f20064b.h(Be.A.b(th2));
            this.f20064b.a();
        }
    }

    public C2924z0(Be.G<T> g10) {
        super(g10);
    }

    @Override
    public void J5(Be.I<? super Be.A<T>> i10) {
        this.f19344b.c(new a(i10));
    }
}
