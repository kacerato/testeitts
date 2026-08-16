package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class B extends AbstractC2353c {

    public final InterfaceC2359i[] f11132b;

    public static final class a extends AtomicInteger implements InterfaceC2356f {

        public static final long f11133e = -8360547806504310570L;

        public final InterfaceC2356f f11134b;

        public final AtomicBoolean f11135c;

        public final De.b f11136d;

        public a(InterfaceC2356f interfaceC2356f, AtomicBoolean atomicBoolean, De.b bVar, int i10) {
            this.f11134b = interfaceC2356f;
            this.f11135c = atomicBoolean;
            this.f11136d = bVar;
            lazySet(i10);
        }

        @Override
        public void a() {
            if (decrementAndGet() == 0 && this.f11135c.compareAndSet(false, true)) {
                this.f11134b.a();
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f11136d.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f11136d.dispose();
            if (this.f11135c.compareAndSet(false, true)) {
                this.f11134b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }
    }

    public B(InterfaceC2359i[] interfaceC2359iArr) {
        this.f11132b = interfaceC2359iArr;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        De.b bVar = new De.b();
        a aVar = new a(interfaceC2356f, new AtomicBoolean(), bVar, this.f11132b.length + 1);
        interfaceC2356f.e(bVar);
        for (InterfaceC2359i interfaceC2359i : this.f11132b) {
            if (bVar.d()) {
                return;
            }
            if (interfaceC2359i == null) {
                bVar.dispose();
                aVar.onError(new NullPointerException("A completable source is null"));
                return;
            }
            interfaceC2359i.b(aVar);
        }
        aVar.a();
    }
}
