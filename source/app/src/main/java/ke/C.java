package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicInteger;

public final class C extends AbstractC2353c {

    public final InterfaceC2359i[] f11137b;

    public static final class a implements InterfaceC2356f {

        public final InterfaceC2356f f11138b;

        public final De.b f11139c;

        public final io.reactivex.internal.util.c f11140d;

        public final AtomicInteger f11141e;

        public a(InterfaceC2356f interfaceC2356f, De.b bVar, io.reactivex.internal.util.c cVar, AtomicInteger atomicInteger) {
            this.f11138b = interfaceC2356f;
            this.f11139c = bVar;
            this.f11140d = cVar;
            this.f11141e = atomicInteger;
        }

        @Override
        public void a() {
            b();
        }

        public void b() {
            if (this.f11141e.decrementAndGet() == 0) {
                Throwable c10 = this.f11140d.c();
                if (c10 == null) {
                    this.f11138b.a();
                } else {
                    this.f11138b.onError(c10);
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f11139c.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11140d.a(th2)) {
                b();
            } else {
                Ye.a.Y(th2);
            }
        }
    }

    public C(InterfaceC2359i[] interfaceC2359iArr) {
        this.f11137b = interfaceC2359iArr;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        De.b bVar = new De.b();
        AtomicInteger atomicInteger = new AtomicInteger(this.f11137b.length + 1);
        io.reactivex.internal.util.c cVar = new io.reactivex.internal.util.c();
        interfaceC2356f.e(bVar);
        for (InterfaceC2359i interfaceC2359i : this.f11137b) {
            if (bVar.d()) {
                return;
            }
            if (interfaceC2359i == null) {
                cVar.a(new NullPointerException("A completable source is null"));
                atomicInteger.decrementAndGet();
            } else {
                interfaceC2359i.b(new a(interfaceC2356f, bVar, cVar, atomicInteger));
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            Throwable c10 = cVar.c();
            if (c10 == null) {
                interfaceC2356f.a();
            } else {
                interfaceC2356f.onError(c10);
            }
        }
    }
}
