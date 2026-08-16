package Me;

import java.util.NoSuchElementException;

public final class q0<T> extends Be.K<T> implements Ie.f<T> {

    public final Be.y<T> f15166b;

    public final T f15167c;

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.N<? super T> f15168b;

        public final T f15169c;

        public De.c f15170d;

        public a(Be.N<? super T> n10, T t10) {
            this.f15168b = n10;
            this.f15169c = t10;
        }

        @Override
        public void a() {
            this.f15170d = Ge.d.DISPOSED;
            T t10 = this.f15169c;
            if (t10 != null) {
                this.f15168b.b(t10);
            } else {
                this.f15168b.onError(new NoSuchElementException("The MaybeSource is empty"));
            }
        }

        @Override
        public void b(T t10) {
            this.f15170d = Ge.d.DISPOSED;
            this.f15168b.b(t10);
        }

        @Override
        public boolean d() {
            return this.f15170d.d();
        }

        @Override
        public void dispose() {
            this.f15170d.dispose();
            this.f15170d = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15170d, cVar)) {
                this.f15170d = cVar;
                this.f15168b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15170d = Ge.d.DISPOSED;
            this.f15168b.onError(th2);
        }
    }

    public q0(Be.y<T> yVar, T t10) {
        this.f15166b = yVar;
        this.f15167c = t10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f15166b.d(new a(n10, this.f15167c));
    }

    @Override
    public Be.y<T> source() {
        return this.f15166b;
    }
}
