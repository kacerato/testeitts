package Qe;

import java.util.concurrent.atomic.AtomicReference;

public final class X<T> extends Be.K<T> {

    public final Be.Q<T> f22169b;

    public final Be.J f22170c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.N<T>, De.c, Runnable {

        public static final long f22171e = 3256698449646456986L;

        public final Be.N<? super T> f22172b;

        public final Be.J f22173c;

        public De.c f22174d;

        public a(Be.N<? super T> n10, Be.J j10) {
            this.f22172b = n10;
            this.f22173c = j10;
        }

        @Override
        public void b(T t10) {
            this.f22172b.b(t10);
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d dVar = Ge.d.DISPOSED;
            De.c andSet = getAndSet(dVar);
            if (andSet != dVar) {
                this.f22174d = andSet;
                this.f22173c.f(this);
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this, cVar)) {
                this.f22172b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22172b.onError(th2);
        }

        @Override
        public void run() {
            this.f22174d.dispose();
        }
    }

    public X(Be.Q<T> q10, Be.J j10) {
        this.f22169b = q10;
        this.f22170c = j10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22169b.a(new a(n10, this.f22170c));
    }
}
