package Qe;

import java.util.concurrent.atomic.AtomicReference;

public final class C2998p<T> extends Be.K<T> {

    public final Be.Q<T> f22282b;

    public final Fe.a f22283c;

    public static final class a<T> extends AtomicReference<Fe.a> implements Be.N<T>, De.c {

        public static final long f22284d = -8583764624474935784L;

        public final Be.N<? super T> f22285b;

        public De.c f22286c;

        public a(Be.N<? super T> n10, Fe.a aVar) {
            this.f22285b = n10;
            lazySet(aVar);
        }

        @Override
        public void b(T t10) {
            this.f22285b.b(t10);
        }

        @Override
        public boolean d() {
            return this.f22286c.d();
        }

        @Override
        public void dispose() {
            Fe.a andSet = getAndSet(null);
            if (andSet != null) {
                try {
                    andSet.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
                this.f22286c.dispose();
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22286c, cVar)) {
                this.f22286c = cVar;
                this.f22285b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22285b.onError(th2);
        }
    }

    public C2998p(Be.Q<T> q10, Fe.a aVar) {
        this.f22282b = q10;
        this.f22283c = aVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22282b.a(new a(n10, this.f22283c));
    }
}
