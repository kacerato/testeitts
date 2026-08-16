package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class K extends AbstractC2353c {

    public final InterfaceC2359i f11175b;

    public final Be.J f11176c;

    public static final class a extends AtomicReference<De.c> implements InterfaceC2356f, De.c, Runnable {

        public static final long f11177e = 7000911171163930287L;

        public final InterfaceC2356f f11178b;

        public final Ge.h f11179c = new Ge.h();

        public final InterfaceC2359i f11180d;

        public a(InterfaceC2356f interfaceC2356f, InterfaceC2359i interfaceC2359i) {
            this.f11178b = interfaceC2356f;
            this.f11180d = interfaceC2359i;
        }

        @Override
        public void a() {
            this.f11178b.a();
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            this.f11179c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f11178b.onError(th2);
        }

        @Override
        public void run() {
            this.f11180d.b(this);
        }
    }

    public K(InterfaceC2359i interfaceC2359i, Be.J j10) {
        this.f11175b = interfaceC2359i;
        this.f11176c = j10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f, this.f11175b);
        interfaceC2356f.e(aVar);
        aVar.f11179c.a(this.f11176c.f(aVar));
    }
}
