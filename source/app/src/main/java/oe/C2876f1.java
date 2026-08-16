package Oe;

import java.util.NoSuchElementException;

public final class C2876f1<T> extends Be.K<T> {

    public final Be.G<? extends T> f19469b;

    public final T f19470c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.N<? super T> f19471b;

        public final T f19472c;

        public De.c f19473d;

        public T f19474e;

        public boolean f19475f;

        public a(Be.N<? super T> n10, T t10) {
            this.f19471b = n10;
            this.f19472c = t10;
        }

        @Override
        public void a() {
            if (this.f19475f) {
                return;
            }
            this.f19475f = true;
            T t10 = this.f19474e;
            this.f19474e = null;
            if (t10 == null) {
                t10 = this.f19472c;
            }
            if (t10 != null) {
                this.f19471b.b(t10);
            } else {
                this.f19471b.onError(new NoSuchElementException());
            }
        }

        @Override
        public boolean d() {
            return this.f19473d.d();
        }

        @Override
        public void dispose() {
            this.f19473d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19473d, cVar)) {
                this.f19473d = cVar;
                this.f19471b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19475f) {
                return;
            }
            if (this.f19474e == null) {
                this.f19474e = t10;
                return;
            }
            this.f19475f = true;
            this.f19473d.dispose();
            this.f19471b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19475f) {
                Ye.a.Y(th2);
            } else {
                this.f19475f = true;
                this.f19471b.onError(th2);
            }
        }
    }

    public C2876f1(Be.G<? extends T> g10, T t10) {
        this.f19469b = g10;
        this.f19470c = t10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f19469b.c(new a(n10, this.f19470c));
    }
}
