package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class C2675b extends AbstractC2353c {

    public final InterfaceC2359i f11231b;

    public final InterfaceC2359i f11232c;

    public static final class a implements InterfaceC2356f {

        public final AtomicReference<De.c> f11233b;

        public final InterfaceC2356f f11234c;

        public a(AtomicReference<De.c> atomicReference, InterfaceC2356f interfaceC2356f) {
            this.f11233b = atomicReference;
            this.f11234c = interfaceC2356f;
        }

        @Override
        public void a() {
            this.f11234c.a();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.c(this.f11233b, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f11234c.onError(th2);
        }
    }

    public static final class C0372b extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

        public static final long f11235d = -4101678820158072998L;

        public final InterfaceC2356f f11236b;

        public final InterfaceC2359i f11237c;

        public C0372b(InterfaceC2356f interfaceC2356f, InterfaceC2359i interfaceC2359i) {
            this.f11236b = interfaceC2356f;
            this.f11237c = interfaceC2359i;
        }

        @Override
        public void a() {
            this.f11237c.b(new a(this, this.f11236b));
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
                this.f11236b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11236b.onError(th2);
        }
    }

    public C2675b(InterfaceC2359i interfaceC2359i, InterfaceC2359i interfaceC2359i2) {
        this.f11231b = interfaceC2359i;
        this.f11232c = interfaceC2359i2;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11231b.b(new C0372b(interfaceC2356f, this.f11232c));
    }
}
