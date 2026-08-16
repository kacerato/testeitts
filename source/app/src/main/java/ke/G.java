package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class G extends AbstractC2353c {

    public final InterfaceC2359i f11149b;

    public final Be.J f11150c;

    public static final class a extends AtomicReference<De.c> implements InterfaceC2356f, De.c, Runnable {

        public static final long f11151e = 8571289934935992137L;

        public final InterfaceC2356f f11152b;

        public final Be.J f11153c;

        public Throwable f11154d;

        public a(InterfaceC2356f interfaceC2356f, Be.J j10) {
            this.f11152b = interfaceC2356f;
            this.f11153c = j10;
        }

        @Override
        public void a() {
            Ge.d.c(this, this.f11153c.f(this));
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
                this.f11152b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11154d = th2;
            Ge.d.c(this, this.f11153c.f(this));
        }

        @Override
        public void run() {
            Throwable th2 = this.f11154d;
            if (th2 == null) {
                this.f11152b.a();
            } else {
                this.f11154d = null;
                this.f11152b.onError(th2);
            }
        }
    }

    public G(InterfaceC2359i interfaceC2359i, Be.J j10) {
        this.f11149b = interfaceC2359i;
        this.f11150c = j10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11149b.b(new a(interfaceC2356f, this.f11150c));
    }
}
