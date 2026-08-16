package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class L extends AbstractC2353c {

    public final AbstractC2353c f11181b;

    public final InterfaceC2359i f11182c;

    public static final class a extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

        public static final long f11183e = 3533011714830024923L;

        public final InterfaceC2356f f11184b;

        public final C0369a f11185c = new C0369a(this);

        public final AtomicBoolean f11186d = new AtomicBoolean();

        public static final class C0369a extends AtomicReference<De.c> implements InterfaceC2356f {

            public static final long f11187c = 5176264485428790318L;

            public final a f11188b;

            public C0369a(a aVar) {
                this.f11188b = aVar;
            }

            @Override
            public void a() {
                this.f11188b.b();
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f11188b.c(th2);
            }
        }

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11184b = interfaceC2356f;
        }

        @Override
        public void a() {
            if (this.f11186d.compareAndSet(false, true)) {
                Ge.d.a(this.f11185c);
                this.f11184b.a();
            }
        }

        public void b() {
            if (this.f11186d.compareAndSet(false, true)) {
                Ge.d.a(this);
                this.f11184b.a();
            }
        }

        public void c(Throwable th2) {
            if (!this.f11186d.compareAndSet(false, true)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this);
                this.f11184b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f11186d.get();
        }

        @Override
        public void dispose() {
            if (this.f11186d.compareAndSet(false, true)) {
                Ge.d.a(this);
                Ge.d.a(this.f11185c);
            }
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f11186d.compareAndSet(false, true)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this.f11185c);
                this.f11184b.onError(th2);
            }
        }
    }

    public L(AbstractC2353c abstractC2353c, InterfaceC2359i interfaceC2359i) {
        this.f11181b = abstractC2353c;
        this.f11182c = interfaceC2359i;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f);
        interfaceC2356f.e(aVar);
        this.f11182c.b(aVar.f11185c);
        this.f11181b.b(aVar);
    }
}
