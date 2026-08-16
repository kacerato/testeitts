package Qe;

public final class C2994l<T> extends Be.K<T> {

    public final Be.Q<T> f22263b;

    public static final class a<T> implements Be.N<T>, De.c {

        public Be.N<? super T> f22264b;

        public De.c f22265c;

        public a(Be.N<? super T> n10) {
            this.f22264b = n10;
        }

        @Override
        public void b(T t10) {
            this.f22265c = Ge.d.DISPOSED;
            Be.N<? super T> n10 = this.f22264b;
            if (n10 != null) {
                this.f22264b = null;
                n10.b(t10);
            }
        }

        @Override
        public boolean d() {
            return this.f22265c.d();
        }

        @Override
        public void dispose() {
            this.f22264b = null;
            this.f22265c.dispose();
            this.f22265c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22265c, cVar)) {
                this.f22265c = cVar;
                this.f22264b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22265c = Ge.d.DISPOSED;
            Be.N<? super T> n10 = this.f22264b;
            if (n10 != null) {
                this.f22264b = null;
                n10.onError(th2);
            }
        }
    }

    public C2994l(Be.Q<T> q10) {
        this.f22263b = q10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22263b.a(new a(n10));
    }
}
