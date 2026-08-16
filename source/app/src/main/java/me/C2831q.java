package Me;

public final class C2831q<T> extends AbstractC2815a<T, T> {

    public final Fe.g<? super T> f15162c;

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.v<? super T> f15163b;

        public final Fe.g<? super T> f15164c;

        public De.c f15165d;

        public a(Be.v<? super T> vVar, Fe.g<? super T> gVar) {
            this.f15163b = vVar;
            this.f15164c = gVar;
        }

        @Override
        public void a() {
            this.f15163b.a();
        }

        @Override
        public void b(T t10) {
            this.f15163b.b(t10);
            try {
                this.f15164c.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f15165d.d();
        }

        @Override
        public void dispose() {
            this.f15165d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15165d, cVar)) {
                this.f15165d = cVar;
                this.f15163b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15163b.onError(th2);
        }
    }

    public C2831q(Be.y<T> yVar, Fe.g<? super T> gVar) {
        super(yVar);
        this.f15162c = gVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15162c));
    }
}
