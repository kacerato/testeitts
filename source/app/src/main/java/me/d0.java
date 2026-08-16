package Me;

import io.reactivex.exceptions.CompositeException;

public final class d0<T> extends AbstractC2815a<T, T> {

    public final Fe.o<? super Throwable, ? extends T> f15013c;

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.v<? super T> f15014b;

        public final Fe.o<? super Throwable, ? extends T> f15015c;

        public De.c f15016d;

        public a(Be.v<? super T> vVar, Fe.o<? super Throwable, ? extends T> oVar) {
            this.f15014b = vVar;
            this.f15015c = oVar;
        }

        @Override
        public void a() {
            this.f15014b.a();
        }

        @Override
        public void b(T t10) {
            this.f15014b.b(t10);
        }

        @Override
        public boolean d() {
            return this.f15016d.d();
        }

        @Override
        public void dispose() {
            this.f15016d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15016d, cVar)) {
                this.f15016d = cVar;
                this.f15014b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            try {
                this.f15014b.b(He.b.g(this.f15015c.apply(th2), "The valueSupplier returned a null value"));
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f15014b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public d0(Be.y<T> yVar, Fe.o<? super Throwable, ? extends T> oVar) {
        super(yVar);
        this.f15013c = oVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15013c));
    }
}
