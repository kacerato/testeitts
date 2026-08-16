package Me;

public final class C2822h<T> extends Be.K<Boolean> implements Ie.f<T> {

    public final Be.y<T> f15065b;

    public final Object f15066c;

    public static final class a implements Be.v<Object>, De.c {

        public final Be.N<? super Boolean> f15067b;

        public final Object f15068c;

        public De.c f15069d;

        public a(Be.N<? super Boolean> n10, Object obj) {
            this.f15067b = n10;
            this.f15068c = obj;
        }

        @Override
        public void a() {
            this.f15069d = Ge.d.DISPOSED;
            this.f15067b.b(Boolean.FALSE);
        }

        @Override
        public void b(Object obj) {
            this.f15069d = Ge.d.DISPOSED;
            this.f15067b.b(Boolean.valueOf(He.b.c(obj, this.f15068c)));
        }

        @Override
        public boolean d() {
            return this.f15069d.d();
        }

        @Override
        public void dispose() {
            this.f15069d.dispose();
            this.f15069d = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15069d, cVar)) {
                this.f15069d = cVar;
                this.f15067b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15069d = Ge.d.DISPOSED;
            this.f15067b.onError(th2);
        }
    }

    public C2822h(Be.y<T> yVar, Object obj) {
        this.f15065b = yVar;
        this.f15066c = obj;
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        this.f15065b.d(new a(n10, this.f15066c));
    }

    @Override
    public Be.y<T> source() {
        return this.f15065b;
    }
}
