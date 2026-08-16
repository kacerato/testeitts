package Oe;

import Be.AbstractC2368s;

public final class C2873e1<T> extends AbstractC2368s<T> {

    public final Be.G<T> f19456b;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.v<? super T> f19457b;

        public De.c f19458c;

        public T f19459d;

        public boolean f19460e;

        public a(Be.v<? super T> vVar) {
            this.f19457b = vVar;
        }

        @Override
        public void a() {
            if (this.f19460e) {
                return;
            }
            this.f19460e = true;
            T t10 = this.f19459d;
            this.f19459d = null;
            if (t10 == null) {
                this.f19457b.a();
            } else {
                this.f19457b.b(t10);
            }
        }

        @Override
        public boolean d() {
            return this.f19458c.d();
        }

        @Override
        public void dispose() {
            this.f19458c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19458c, cVar)) {
                this.f19458c = cVar;
                this.f19457b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19460e) {
                return;
            }
            if (this.f19459d == null) {
                this.f19459d = t10;
                return;
            }
            this.f19460e = true;
            this.f19458c.dispose();
            this.f19457b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19460e) {
                Ye.a.Y(th2);
            } else {
                this.f19460e = true;
                this.f19457b.onError(th2);
            }
        }
    }

    public C2873e1(Be.G<T> g10) {
        this.f19456b = g10;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f19456b.c(new a(vVar));
    }
}
