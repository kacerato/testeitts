package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2678e extends AbstractC2353c {

    public final InterfaceC2359i[] f11263b;

    public static final class a extends AtomicInteger implements InterfaceC2356f {

        public static final long f11264f = -7965400327305809232L;

        public final InterfaceC2356f f11265b;

        public final InterfaceC2359i[] f11266c;

        public int f11267d;

        public final Ge.h f11268e = new Ge.h();

        public a(InterfaceC2356f interfaceC2356f, InterfaceC2359i[] interfaceC2359iArr) {
            this.f11265b = interfaceC2356f;
            this.f11266c = interfaceC2359iArr;
        }

        @Override
        public void a() {
            b();
        }

        public void b() {
            if (!this.f11268e.d() && getAndIncrement() == 0) {
                InterfaceC2359i[] interfaceC2359iArr = this.f11266c;
                while (!this.f11268e.d()) {
                    int i10 = this.f11267d;
                    this.f11267d = i10 + 1;
                    if (i10 == interfaceC2359iArr.length) {
                        this.f11265b.a();
                        return;
                    } else {
                        interfaceC2359iArr[i10].b(this);
                        if (decrementAndGet() == 0) {
                            return;
                        }
                    }
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f11268e.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f11265b.onError(th2);
        }
    }

    public C2678e(InterfaceC2359i[] interfaceC2359iArr) {
        this.f11263b = interfaceC2359iArr;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f, this.f11263b);
        interfaceC2356f.e(aVar.f11268e);
        aVar.b();
    }
}
