package Oe;

public final class q1<T> extends AbstractC2859a<T, T> {

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19797b;

        public De.c f19798c;

        public T f19799d;

        public a(Be.I<? super T> i10) {
            this.f19797b = i10;
        }

        @Override
        public void a() {
            b();
        }

        public void b() {
            T t10 = this.f19799d;
            if (t10 != null) {
                this.f19799d = null;
                this.f19797b.h(t10);
            }
            this.f19797b.a();
        }

        @Override
        public boolean d() {
            return this.f19798c.d();
        }

        @Override
        public void dispose() {
            this.f19799d = null;
            this.f19798c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19798c, cVar)) {
                this.f19798c = cVar;
                this.f19797b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f19799d = t10;
        }

        @Override
        public void onError(Throwable th2) {
            this.f19799d = null;
            this.f19797b.onError(th2);
        }
    }

    public q1(Be.G<T> g10) {
        super(g10);
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10));
    }
}
