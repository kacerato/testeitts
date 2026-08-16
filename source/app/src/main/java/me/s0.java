package Me;

import java.util.concurrent.atomic.AtomicReference;

public final class s0<T> extends AbstractC2815a<T, T> {

    public final Be.J f15180c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T>, De.c, Runnable {

        public static final long f15181e = 3256698449646456986L;

        public final Be.v<? super T> f15182b;

        public final Be.J f15183c;

        public De.c f15184d;

        public a(Be.v<? super T> vVar, Be.J j10) {
            this.f15182b = vVar;
            this.f15183c = j10;
        }

        @Override
        public void a() {
            this.f15182b.a();
        }

        @Override
        public void b(T t10) {
            this.f15182b.b(t10);
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
                this.f15184d = andSet;
                this.f15183c.f(this);
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this, cVar)) {
                this.f15182b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15182b.onError(th2);
        }

        @Override
        public void run() {
            this.f15184d.dispose();
        }
    }

    public s0(Be.y<T> yVar, Be.J j10) {
        super(yVar);
        this.f15180c = j10;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15180c));
    }
}
