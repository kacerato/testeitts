package Me;

public final class C2838y<T> extends AbstractC2815a<T, T> {

    public final Fe.r<? super T> f15225c;

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.v<? super T> f15226b;

        public final Fe.r<? super T> f15227c;

        public De.c f15228d;

        public a(Be.v<? super T> vVar, Fe.r<? super T> rVar) {
            this.f15226b = vVar;
            this.f15227c = rVar;
        }

        @Override
        public void a() {
            this.f15226b.a();
        }

        @Override
        public void b(T t10) {
            try {
                if (this.f15227c.test(t10)) {
                    this.f15226b.b(t10);
                } else {
                    this.f15226b.a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f15226b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f15228d.d();
        }

        @Override
        public void dispose() {
            De.c cVar = this.f15228d;
            this.f15228d = Ge.d.DISPOSED;
            cVar.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15228d, cVar)) {
                this.f15228d = cVar;
                this.f15226b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15226b.onError(th2);
        }
    }

    public C2838y(Be.y<T> yVar, Fe.r<? super T> rVar) {
        super(yVar);
        this.f15225c = rVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15225c));
    }
}
