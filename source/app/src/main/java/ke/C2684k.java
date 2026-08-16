package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;

public final class C2684k extends AbstractC2353c {

    public final InterfaceC2359i f11293b;

    public final Be.J f11294c;

    public static final class a implements InterfaceC2356f, De.c, Runnable {

        public final InterfaceC2356f f11295b;

        public final Be.J f11296c;

        public De.c f11297d;

        public volatile boolean f11298e;

        public a(InterfaceC2356f interfaceC2356f, Be.J j10) {
            this.f11295b = interfaceC2356f;
            this.f11296c = j10;
        }

        @Override
        public void a() {
            if (this.f11298e) {
                return;
            }
            this.f11295b.a();
        }

        @Override
        public boolean d() {
            return this.f11298e;
        }

        @Override
        public void dispose() {
            this.f11298e = true;
            this.f11296c.f(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f11297d, cVar)) {
                this.f11297d = cVar;
                this.f11295b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11298e) {
                Ye.a.Y(th2);
            } else {
                this.f11295b.onError(th2);
            }
        }

        @Override
        public void run() {
            this.f11297d.dispose();
            this.f11297d = Ge.d.DISPOSED;
        }
    }

    public C2684k(InterfaceC2359i interfaceC2359i, Be.J j10) {
        this.f11293b = interfaceC2359i;
        this.f11294c = j10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11293b.b(new a(interfaceC2356f, this.f11294c));
    }
}
