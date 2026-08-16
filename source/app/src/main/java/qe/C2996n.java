package Qe;

public final class C2996n<T> extends Be.K<T> {

    public final Be.Q<T> f22271b;

    public final Fe.a f22272c;

    public static final class a<T> implements Be.N<T>, De.c {

        public final Be.N<? super T> f22273b;

        public final Fe.a f22274c;

        public De.c f22275d;

        public a(Be.N<? super T> n10, Fe.a aVar) {
            this.f22273b = n10;
            this.f22274c = aVar;
        }

        private void a() {
            try {
                this.f22274c.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
        }

        @Override
        public void b(T t10) {
            this.f22273b.b(t10);
            a();
        }

        @Override
        public boolean d() {
            return this.f22275d.d();
        }

        @Override
        public void dispose() {
            this.f22275d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22275d, cVar)) {
                this.f22275d = cVar;
                this.f22273b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22273b.onError(th2);
            a();
        }
    }

    public C2996n(Be.Q<T> q10, Fe.a aVar) {
        this.f22271b = q10;
        this.f22272c = aVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22271b.a(new a(n10, this.f22272c));
    }
}
