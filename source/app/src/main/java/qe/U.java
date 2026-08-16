package Qe;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class U extends Be.K<Long> {

    public final long f22158b;

    public final TimeUnit f22159c;

    public final Be.J f22160d;

    public static final class a extends AtomicReference<De.c> implements De.c, Runnable {

        public static final long f22161c = 8465401857522493082L;

        public final Be.N<? super Long> f22162b;

        public a(Be.N<? super Long> n10) {
            this.f22162b = n10;
        }

        public void a(De.c cVar) {
            Ge.d.c(this, cVar);
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
        public void run() {
            this.f22162b.b(0L);
        }
    }

    public U(long j10, TimeUnit timeUnit, Be.J j11) {
        this.f22158b = j10;
        this.f22159c = timeUnit;
        this.f22160d = j11;
    }

    @Override
    public void d1(Be.N<? super Long> n10) {
        a aVar = new a(n10);
        n10.e(aVar);
        aVar.a(this.f22160d.g(aVar, this.f22158b, this.f22159c));
    }
}
