package Qe;

import java.util.concurrent.atomic.AtomicReference;

public final class N<T> extends Be.K<T> {

    public final Be.Q<T> f22114b;

    public final Be.J f22115c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.N<T>, De.c, Runnable {

        public static final long f22116f = 3528003840217436037L;

        public final Be.N<? super T> f22117b;

        public final Be.J f22118c;

        public T f22119d;

        public Throwable f22120e;

        public a(Be.N<? super T> n10, Be.J j10) {
            this.f22117b = n10;
            this.f22118c = j10;
        }

        @Override
        public void b(T t10) {
            this.f22119d = t10;
            Ge.d.c(this, this.f22118c.f(this));
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this, cVar)) {
                this.f22117b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22120e = th2;
            Ge.d.c(this, this.f22118c.f(this));
        }

        @Override
        public void run() {
            Throwable th2 = this.f22120e;
            if (th2 != null) {
                this.f22117b.onError(th2);
            } else {
                this.f22117b.b(this.f22119d);
            }
        }
    }

    public N(Be.Q<T> q10, Be.J j10) {
        this.f22114b = q10;
        this.f22115c = j10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22114b.a(new a(n10, this.f22115c));
    }
}
