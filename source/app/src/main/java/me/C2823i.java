package Me;

public final class C2823i<T> extends Be.K<Long> implements Ie.f<T> {

    public final Be.y<T> f15077b;

    public static final class a implements Be.v<Object>, De.c {

        public final Be.N<? super Long> f15078b;

        public De.c f15079c;

        public a(Be.N<? super Long> n10) {
            this.f15078b = n10;
        }

        @Override
        public void a() {
            this.f15079c = Ge.d.DISPOSED;
            this.f15078b.b(0L);
        }

        @Override
        public void b(Object obj) {
            this.f15079c = Ge.d.DISPOSED;
            this.f15078b.b(1L);
        }

        @Override
        public boolean d() {
            return this.f15079c.d();
        }

        @Override
        public void dispose() {
            this.f15079c.dispose();
            this.f15079c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15079c, cVar)) {
                this.f15079c = cVar;
                this.f15078b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15079c = Ge.d.DISPOSED;
            this.f15078b.onError(th2);
        }
    }

    public C2823i(Be.y<T> yVar) {
        this.f15077b = yVar;
    }

    @Override
    public void d1(Be.N<? super Long> n10) {
        this.f15077b.d(new a(n10));
    }

    @Override
    public Be.y<T> source() {
        return this.f15077b;
    }
}
