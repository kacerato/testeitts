package Qe;

import java.util.concurrent.atomic.AtomicReference;

public final class Q<T> extends Be.K<T> {

    public final Be.Q<? extends T> f22131b;

    public final Be.J f22132c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.N<T>, De.c, Runnable {

        public static final long f22133e = 7000911171163930287L;

        public final Be.N<? super T> f22134b;

        public final Ge.h f22135c = new Ge.h();

        public final Be.Q<? extends T> f22136d;

        public a(Be.N<? super T> n10, Be.Q<? extends T> q10) {
            this.f22134b = n10;
            this.f22136d = q10;
        }

        @Override
        public void b(T t10) {
            this.f22134b.b(t10);
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            this.f22135c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f22134b.onError(th2);
        }

        @Override
        public void run() {
            this.f22136d.a(this);
        }
    }

    public Q(Be.Q<? extends T> q10, Be.J j10) {
        this.f22131b = q10;
        this.f22132c = j10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        a aVar = new a(n10, this.f22131b);
        n10.e(aVar);
        aVar.f22135c.a(this.f22132c.f(aVar));
    }
}
