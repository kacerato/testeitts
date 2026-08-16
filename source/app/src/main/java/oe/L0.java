package Oe;

import Be.AbstractC2368s;

public final class L0<T> extends AbstractC2368s<T> {

    public final Be.G<T> f19025b;

    public final Fe.c<T, T, T> f19026c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.v<? super T> f19027b;

        public final Fe.c<T, T, T> f19028c;

        public boolean f19029d;

        public T f19030e;

        public De.c f19031f;

        public a(Be.v<? super T> vVar, Fe.c<T, T, T> cVar) {
            this.f19027b = vVar;
            this.f19028c = cVar;
        }

        @Override
        public void a() {
            if (this.f19029d) {
                return;
            }
            this.f19029d = true;
            T t10 = this.f19030e;
            this.f19030e = null;
            if (t10 != null) {
                this.f19027b.b(t10);
            } else {
                this.f19027b.a();
            }
        }

        @Override
        public boolean d() {
            return this.f19031f.d();
        }

        @Override
        public void dispose() {
            this.f19031f.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19031f, cVar)) {
                this.f19031f = cVar;
                this.f19027b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19029d) {
                return;
            }
            T t11 = this.f19030e;
            if (t11 == null) {
                this.f19030e = t10;
                return;
            }
            try {
                this.f19030e = (T) He.b.g(this.f19028c.apply(t11, t10), "The reducer returned a null value");
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19031f.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19029d) {
                Ye.a.Y(th2);
                return;
            }
            this.f19029d = true;
            this.f19030e = null;
            this.f19027b.onError(th2);
        }
    }

    public L0(Be.G<T> g10, Fe.c<T, T, T> cVar) {
        this.f19025b = g10;
        this.f19026c = cVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f19025b.c(new a(vVar, this.f19026c));
    }
}
