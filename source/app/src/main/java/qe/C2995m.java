package Qe;

public final class C2995m<T> extends Be.K<T> {

    public final Be.Q<T> f22266b;

    public final Fe.g<? super T> f22267c;

    public static final class a<T> implements Be.N<T>, De.c {

        public final Be.N<? super T> f22268b;

        public final Fe.g<? super T> f22269c;

        public De.c f22270d;

        public a(Be.N<? super T> n10, Fe.g<? super T> gVar) {
            this.f22268b = n10;
            this.f22269c = gVar;
        }

        @Override
        public void b(T t10) {
            this.f22268b.b(t10);
            try {
                this.f22269c.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f22270d.d();
        }

        @Override
        public void dispose() {
            this.f22270d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22270d, cVar)) {
                this.f22270d = cVar;
                this.f22268b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22268b.onError(th2);
        }
    }

    public C2995m(Be.Q<T> q10, Fe.g<? super T> gVar) {
        this.f22266b = q10;
        this.f22267c = gVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22266b.a(new a(n10, this.f22267c));
    }
}
