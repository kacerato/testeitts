package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class C2682i extends AbstractC2353c {

    public final InterfaceC2359i f11278b;

    public final long f11279c;

    public final TimeUnit f11280d;

    public final Be.J f11281e;

    public final boolean f11282f;

    public static final class a extends AtomicReference<De.c> implements InterfaceC2356f, Runnable, De.c {

        public static final long f11283h = 465972761105851022L;

        public final InterfaceC2356f f11284b;

        public final long f11285c;

        public final TimeUnit f11286d;

        public final Be.J f11287e;

        public final boolean f11288f;

        public Throwable f11289g;

        public a(InterfaceC2356f interfaceC2356f, long j10, TimeUnit timeUnit, Be.J j11, boolean z10) {
            this.f11284b = interfaceC2356f;
            this.f11285c = j10;
            this.f11286d = timeUnit;
            this.f11287e = j11;
            this.f11288f = z10;
        }

        @Override
        public void a() {
            Ge.d.c(this, this.f11287e.g(this, this.f11285c, this.f11286d));
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
                this.f11284b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11289g = th2;
            Ge.d.c(this, this.f11287e.g(this, this.f11288f ? this.f11285c : 0L, this.f11286d));
        }

        @Override
        public void run() {
            Throwable th2 = this.f11289g;
            this.f11289g = null;
            if (th2 != null) {
                this.f11284b.onError(th2);
            } else {
                this.f11284b.a();
            }
        }
    }

    public C2682i(InterfaceC2359i interfaceC2359i, long j10, TimeUnit timeUnit, Be.J j11, boolean z10) {
        this.f11278b = interfaceC2359i;
        this.f11279c = j10;
        this.f11280d = timeUnit;
        this.f11281e = j11;
        this.f11282f = z10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11278b.b(new a(interfaceC2356f, this.f11279c, this.f11280d, this.f11281e, this.f11282f));
    }
}
