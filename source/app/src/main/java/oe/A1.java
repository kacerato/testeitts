package Oe;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class A1 extends Be.B<Long> {

    public final Be.J f18699b;

    public final long f18700c;

    public final TimeUnit f18701d;

    public static final class a extends AtomicReference<De.c> implements De.c, Runnable {

        public static final long f18702c = -2809475196591179431L;

        public final Be.I<? super Long> f18703b;

        public a(Be.I<? super Long> i10) {
            this.f18703b = i10;
        }

        public void a(De.c cVar) {
            Ge.d.i(this, cVar);
        }

        @Override
        public boolean d() {
            return get() == Ge.d.DISPOSED;
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void run() {
            if (d()) {
                return;
            }
            this.f18703b.h(0L);
            lazySet(Ge.e.INSTANCE);
            this.f18703b.a();
        }
    }

    public A1(long j10, TimeUnit timeUnit, Be.J j11) {
        this.f18700c = j10;
        this.f18701d = timeUnit;
        this.f18699b = j11;
    }

    @Override
    public void J5(Be.I<? super Long> i10) {
        a aVar = new a(i10);
        i10.e(aVar);
        aVar.a(this.f18699b.g(aVar, this.f18700c, this.f18701d));
    }
}
