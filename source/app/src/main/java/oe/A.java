package Oe;

public final class A<T> extends AbstractC2859a<T, Long> {

    public static final class a implements Be.I<Object>, De.c {

        public final Be.I<? super Long> f18686b;

        public De.c f18687c;

        public long f18688d;

        public a(Be.I<? super Long> i10) {
            this.f18686b = i10;
        }

        @Override
        public void a() {
            this.f18686b.h(Long.valueOf(this.f18688d));
            this.f18686b.a();
        }

        @Override
        public boolean d() {
            return this.f18687c.d();
        }

        @Override
        public void dispose() {
            this.f18687c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18687c, cVar)) {
                this.f18687c = cVar;
                this.f18686b.e(this);
            }
        }

        @Override
        public void h(Object obj) {
            this.f18688d++;
        }

        @Override
        public void onError(Throwable th2) {
            this.f18686b.onError(th2);
        }
    }

    public A(Be.G<T> g10) {
        super(g10);
    }

    @Override
    public void J5(Be.I<? super Long> i10) {
        this.f19344b.c(new a(i10));
    }
}
