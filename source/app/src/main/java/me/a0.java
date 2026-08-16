package Me;

import java.util.concurrent.atomic.AtomicReference;

public final class a0<T> extends AbstractC2815a<T, T> {

    public final Be.J f14977c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T>, De.c, Runnable {

        public static final long f14978f = 8571289934935992137L;

        public final Be.v<? super T> f14979b;

        public final Be.J f14980c;

        public T f14981d;

        public Throwable f14982e;

        public a(Be.v<? super T> vVar, Be.J j10) {
            this.f14979b = vVar;
            this.f14980c = j10;
        }

        @Override
        public void a() {
            Ge.d.c(this, this.f14980c.f(this));
        }

        @Override
        public void b(T t10) {
            this.f14981d = t10;
            Ge.d.c(this, this.f14980c.f(this));
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
                this.f14979b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14982e = th2;
            Ge.d.c(this, this.f14980c.f(this));
        }

        @Override
        public void run() {
            Throwable th2 = this.f14982e;
            if (th2 != null) {
                this.f14982e = null;
                this.f14979b.onError(th2);
                return;
            }
            T t10 = this.f14981d;
            if (t10 == null) {
                this.f14979b.a();
            } else {
                this.f14981d = null;
                this.f14979b.b(t10);
            }
        }
    }

    public a0(Be.y<T> yVar, Be.J j10) {
        super(yVar);
        this.f14977c = j10;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f14977c));
    }
}
