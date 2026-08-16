package Me;

import io.reactivex.exceptions.CompositeException;

public final class C2832s<T> extends AbstractC2815a<T, T> {

    public final Fe.b<? super T, ? super Throwable> f15176c;

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.v<? super T> f15177b;

        public final Fe.b<? super T, ? super Throwable> f15178c;

        public De.c f15179d;

        public a(Be.v<? super T> vVar, Fe.b<? super T, ? super Throwable> bVar) {
            this.f15177b = vVar;
            this.f15178c = bVar;
        }

        @Override
        public void a() {
            this.f15179d = Ge.d.DISPOSED;
            try {
                this.f15178c.accept(null, null);
                this.f15177b.a();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f15177b.onError(th2);
            }
        }

        @Override
        public void b(T t10) {
            this.f15179d = Ge.d.DISPOSED;
            try {
                this.f15178c.accept(t10, null);
                this.f15177b.b(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f15177b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f15179d.d();
        }

        @Override
        public void dispose() {
            this.f15179d.dispose();
            this.f15179d = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15179d, cVar)) {
                this.f15179d = cVar;
                this.f15177b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15179d = Ge.d.DISPOSED;
            try {
                this.f15178c.accept(null, th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f15177b.onError(th2);
        }
    }

    public C2832s(Be.y<T> yVar, Fe.b<? super T, ? super Throwable> bVar) {
        super(yVar);
        this.f15176c = bVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15176c));
    }
}
