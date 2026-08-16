package Oe;

public final class C2879g1<T> extends AbstractC2859a<T, T> {

    public final long f19489c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19490b;

        public long f19491c;

        public De.c f19492d;

        public a(Be.I<? super T> i10, long j10) {
            this.f19490b = i10;
            this.f19491c = j10;
        }

        @Override
        public void a() {
            this.f19490b.a();
        }

        @Override
        public boolean d() {
            return this.f19492d.d();
        }

        @Override
        public void dispose() {
            this.f19492d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19492d, cVar)) {
                this.f19492d = cVar;
                this.f19490b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            long j10 = this.f19491c;
            if (j10 != 0) {
                this.f19491c = j10 - 1;
            } else {
                this.f19490b.h(t10);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f19490b.onError(th2);
        }
    }

    public C2879g1(Be.G<T> g10, long j10) {
        super(g10);
        this.f19489c = j10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19489c));
    }
}
