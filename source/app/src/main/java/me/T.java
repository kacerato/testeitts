package Me;

import Be.AbstractC2368s;

public final class T<T> extends Be.K<Boolean> implements Ie.f<T>, Ie.c<Boolean> {

    public final Be.y<T> f14948b;

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.N<? super Boolean> f14949b;

        public De.c f14950c;

        public a(Be.N<? super Boolean> n10) {
            this.f14949b = n10;
        }

        @Override
        public void a() {
            this.f14950c = Ge.d.DISPOSED;
            this.f14949b.b(Boolean.TRUE);
        }

        @Override
        public void b(T t10) {
            this.f14950c = Ge.d.DISPOSED;
            this.f14949b.b(Boolean.FALSE);
        }

        @Override
        public boolean d() {
            return this.f14950c.d();
        }

        @Override
        public void dispose() {
            this.f14950c.dispose();
            this.f14950c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14950c, cVar)) {
                this.f14950c = cVar;
                this.f14949b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14950c = Ge.d.DISPOSED;
            this.f14949b.onError(th2);
        }
    }

    public T(Be.y<T> yVar) {
        this.f14948b = yVar;
    }

    @Override
    public AbstractC2368s<Boolean> d() {
        return Ye.a.Q(new S(this.f14948b));
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        this.f14948b.d(new a(n10));
    }

    @Override
    public Be.y<T> source() {
        return this.f14948b;
    }
}
