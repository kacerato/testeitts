package Oe;

public final class B<T> extends Be.K<Long> implements Ie.d<Long> {

    public final Be.G<T> f18704b;

    public static final class a implements Be.I<Object>, De.c {

        public final Be.N<? super Long> f18705b;

        public De.c f18706c;

        public long f18707d;

        public a(Be.N<? super Long> n10) {
            this.f18705b = n10;
        }

        @Override
        public void a() {
            this.f18706c = Ge.d.DISPOSED;
            this.f18705b.b(Long.valueOf(this.f18707d));
        }

        @Override
        public boolean d() {
            return this.f18706c.d();
        }

        @Override
        public void dispose() {
            this.f18706c.dispose();
            this.f18706c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18706c, cVar)) {
                this.f18706c = cVar;
                this.f18705b.e(this);
            }
        }

        @Override
        public void h(Object obj) {
            this.f18707d++;
        }

        @Override
        public void onError(Throwable th2) {
            this.f18706c = Ge.d.DISPOSED;
            this.f18705b.onError(th2);
        }
    }

    public B(Be.G<T> g10) {
        this.f18704b = g10;
    }

    @Override
    public Be.B<Long> c() {
        return Ye.a.R(new A(this.f18704b));
    }

    @Override
    public void d1(Be.N<? super Long> n10) {
        this.f18704b.c(new a(n10));
    }
}
