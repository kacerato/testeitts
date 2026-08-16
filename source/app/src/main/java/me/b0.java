package Me;

import io.reactivex.exceptions.CompositeException;

public final class b0<T> extends AbstractC2815a<T, T> {

    public final Fe.r<? super Throwable> f14989c;

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.v<? super T> f14990b;

        public final Fe.r<? super Throwable> f14991c;

        public De.c f14992d;

        public a(Be.v<? super T> vVar, Fe.r<? super Throwable> rVar) {
            this.f14990b = vVar;
            this.f14991c = rVar;
        }

        @Override
        public void a() {
            this.f14990b.a();
        }

        @Override
        public void b(T t10) {
            this.f14990b.b(t10);
        }

        @Override
        public boolean d() {
            return this.f14992d.d();
        }

        @Override
        public void dispose() {
            this.f14992d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14992d, cVar)) {
                this.f14992d = cVar;
                this.f14990b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            try {
                if (this.f14991c.test(th2)) {
                    this.f14990b.a();
                } else {
                    this.f14990b.onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f14990b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public b0(Be.y<T> yVar, Fe.r<? super Throwable> rVar) {
        super(yVar);
        this.f14989c = rVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f14989c));
    }
}
