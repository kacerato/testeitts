package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;

public final class x extends AbstractC2353c {

    public final InterfaceC2359i f11323b;

    public static final class a implements InterfaceC2356f, De.c {

        public final InterfaceC2356f f11324b;

        public De.c f11325c;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11324b = interfaceC2356f;
        }

        @Override
        public void a() {
            this.f11324b.a();
        }

        @Override
        public boolean d() {
            return this.f11325c.d();
        }

        @Override
        public void dispose() {
            this.f11325c.dispose();
            this.f11325c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f11325c, cVar)) {
                this.f11325c = cVar;
                this.f11324b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11324b.onError(th2);
        }
    }

    public x(InterfaceC2359i interfaceC2359i) {
        this.f11323b = interfaceC2359i;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11323b.b(new a(interfaceC2356f));
    }
}
