package Oe;

import Be.AbstractC2368s;

public final class C2914u0<T> extends AbstractC2368s<T> {

    public final Be.G<T> f19918b;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.v<? super T> f19919b;

        public De.c f19920c;

        public T f19921d;

        public a(Be.v<? super T> vVar) {
            this.f19919b = vVar;
        }

        @Override
        public void a() {
            this.f19920c = Ge.d.DISPOSED;
            T t10 = this.f19921d;
            if (t10 == null) {
                this.f19919b.a();
            } else {
                this.f19921d = null;
                this.f19919b.b(t10);
            }
        }

        @Override
        public boolean d() {
            return this.f19920c == Ge.d.DISPOSED;
        }

        @Override
        public void dispose() {
            this.f19920c.dispose();
            this.f19920c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19920c, cVar)) {
                this.f19920c = cVar;
                this.f19919b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f19921d = t10;
        }

        @Override
        public void onError(Throwable th2) {
            this.f19920c = Ge.d.DISPOSED;
            this.f19921d = null;
            this.f19919b.onError(th2);
        }
    }

    public C2914u0(Be.G<T> g10) {
        this.f19918b = g10;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f19918b.c(new a(vVar));
    }
}
