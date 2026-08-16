package Oe;

import java.util.NoSuchElementException;

public final class C2916v0<T> extends Be.K<T> {

    public final Be.G<T> f19960b;

    public final T f19961c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.N<? super T> f19962b;

        public final T f19963c;

        public De.c f19964d;

        public T f19965e;

        public a(Be.N<? super T> n10, T t10) {
            this.f19962b = n10;
            this.f19963c = t10;
        }

        @Override
        public void a() {
            this.f19964d = Ge.d.DISPOSED;
            T t10 = this.f19965e;
            if (t10 != null) {
                this.f19965e = null;
                this.f19962b.b(t10);
                return;
            }
            T t11 = this.f19963c;
            if (t11 != null) {
                this.f19962b.b(t11);
            } else {
                this.f19962b.onError(new NoSuchElementException());
            }
        }

        @Override
        public boolean d() {
            return this.f19964d == Ge.d.DISPOSED;
        }

        @Override
        public void dispose() {
            this.f19964d.dispose();
            this.f19964d = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19964d, cVar)) {
                this.f19964d = cVar;
                this.f19962b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f19965e = t10;
        }

        @Override
        public void onError(Throwable th2) {
            this.f19964d = Ge.d.DISPOSED;
            this.f19965e = null;
            this.f19962b.onError(th2);
        }
    }

    public C2916v0(Be.G<T> g10, T t10) {
        this.f19960b = g10;
        this.f19961c = t10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f19960b.c(new a(n10, this.f19961c));
    }
}
