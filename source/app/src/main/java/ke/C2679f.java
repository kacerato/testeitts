package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2679f extends AbstractC2353c {

    public final Iterable<? extends InterfaceC2359i> f11269b;

    public static final class a extends AtomicInteger implements InterfaceC2356f {

        public static final long f11270e = -7965400327305809232L;

        public final InterfaceC2356f f11271b;

        public final Iterator<? extends InterfaceC2359i> f11272c;

        public final Ge.h f11273d = new Ge.h();

        public a(InterfaceC2356f interfaceC2356f, Iterator<? extends InterfaceC2359i> it) {
            this.f11271b = interfaceC2356f;
            this.f11272c = it;
        }

        @Override
        public void a() {
            b();
        }

        public void b() {
            if (!this.f11273d.d() && getAndIncrement() == 0) {
                Iterator<? extends InterfaceC2359i> it = this.f11272c;
                while (!this.f11273d.d()) {
                    try {
                        if (!it.hasNext()) {
                            this.f11271b.a();
                            return;
                        }
                        try {
                            ((InterfaceC2359i) He.b.g(it.next(), "The CompletableSource returned is null")).b(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.f11271b.onError(th2);
                            return;
                        }
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        this.f11271b.onError(th3);
                        return;
                    }
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f11273d.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f11271b.onError(th2);
        }
    }

    public C2679f(Iterable<? extends InterfaceC2359i> iterable) {
        this.f11269b = iterable;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        try {
            a aVar = new a(interfaceC2356f, (Iterator) He.b.g(this.f11269b.iterator(), "The iterator returned is null"));
            interfaceC2356f.e(aVar.f11273d);
            aVar.b();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.e(th2, interfaceC2356f);
        }
    }
}
