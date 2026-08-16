package Me;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class C2826l<T> extends AbstractC2815a<T, T> {

    public final long f15107c;

    public final TimeUnit f15108d;

    public final Be.J f15109e;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T>, De.c, Runnable {

        public static final long f15110h = 5566860102500855068L;

        public final Be.v<? super T> f15111b;

        public final long f15112c;

        public final TimeUnit f15113d;

        public final Be.J f15114e;

        public T f15115f;

        public Throwable f15116g;

        public a(Be.v<? super T> vVar, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f15111b = vVar;
            this.f15112c = j10;
            this.f15113d = timeUnit;
            this.f15114e = j11;
        }

        @Override
        public void a() {
            c();
        }

        @Override
        public void b(T t10) {
            this.f15115f = t10;
            c();
        }

        public void c() {
            Ge.d.c(this, this.f15114e.g(this, this.f15112c, this.f15113d));
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
                this.f15111b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15116g = th2;
            c();
        }

        @Override
        public void run() {
            Throwable th2 = this.f15116g;
            if (th2 != null) {
                this.f15111b.onError(th2);
                return;
            }
            T t10 = this.f15115f;
            if (t10 != null) {
                this.f15111b.b(t10);
            } else {
                this.f15111b.a();
            }
        }
    }

    public C2826l(Be.y<T> yVar, long j10, TimeUnit timeUnit, Be.J j11) {
        super(yVar);
        this.f15107c = j10;
        this.f15108d = timeUnit;
        this.f15109e = j11;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15107c, this.f15108d, this.f15109e));
    }
}
