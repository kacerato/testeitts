package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;

public final class C2683j extends AbstractC2353c {

    public final InterfaceC2359i f11290b;

    public static final class a implements InterfaceC2356f, De.c {

        public InterfaceC2356f f11291b;

        public De.c f11292c;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11291b = interfaceC2356f;
        }

        @Override
        public void a() {
            this.f11292c = Ge.d.DISPOSED;
            InterfaceC2356f interfaceC2356f = this.f11291b;
            if (interfaceC2356f != null) {
                this.f11291b = null;
                interfaceC2356f.a();
            }
        }

        @Override
        public boolean d() {
            return this.f11292c.d();
        }

        @Override
        public void dispose() {
            this.f11291b = null;
            this.f11292c.dispose();
            this.f11292c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f11292c, cVar)) {
                this.f11292c = cVar;
                this.f11291b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11292c = Ge.d.DISPOSED;
            InterfaceC2356f interfaceC2356f = this.f11291b;
            if (interfaceC2356f != null) {
                this.f11291b = null;
                interfaceC2356f.onError(th2);
            }
        }
    }

    public C2683j(InterfaceC2359i interfaceC2359i) {
        this.f11290b = interfaceC2359i;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11290b.b(new a(interfaceC2356f));
    }
}
