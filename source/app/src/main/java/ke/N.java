package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class N extends AbstractC2353c {

    public final long f11202b;

    public final TimeUnit f11203c;

    public final Be.J f11204d;

    public static final class a extends AtomicReference<De.c> implements De.c, Runnable {

        public static final long f11205c = 3167244060586201109L;

        public final InterfaceC2356f f11206b;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11206b = interfaceC2356f;
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
            this.f11206b.a();
        }
    }

    public N(long j10, TimeUnit timeUnit, Be.J j11) {
        this.f11202b = j10;
        this.f11203c = timeUnit;
        this.f11204d = j11;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f);
        interfaceC2356f.e(aVar);
        aVar.a(this.f11204d.g(aVar, this.f11202b, this.f11203c));
    }
}
