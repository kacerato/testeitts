package Oe;

public final class C2899n0<T> extends AbstractC2859a<T, T> {

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19674b;

        public De.c f19675c;

        public a(Be.I<? super T> i10) {
            this.f19674b = i10;
        }

        @Override
        public void a() {
            this.f19674b.a();
        }

        @Override
        public boolean d() {
            return this.f19675c.d();
        }

        @Override
        public void dispose() {
            this.f19675c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            this.f19675c = cVar;
            this.f19674b.e(this);
        }

        @Override
        public void h(T t10) {
        }

        @Override
        public void onError(Throwable th2) {
            this.f19674b.onError(th2);
        }
    }

    public C2899n0(Be.G<T> g10) {
        super(g10);
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10));
    }
}
