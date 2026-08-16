package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class E extends AbstractC2353c {

    public final Iterable<? extends InterfaceC2359i> f11143b;

    public static final class a extends AtomicBoolean implements InterfaceC2356f {

        public static final long f11144e = -7730517613164279224L;

        public final De.b f11145b;

        public final InterfaceC2356f f11146c;

        public final AtomicInteger f11147d;

        public a(InterfaceC2356f interfaceC2356f, De.b bVar, AtomicInteger atomicInteger) {
            this.f11146c = interfaceC2356f;
            this.f11145b = bVar;
            this.f11147d = atomicInteger;
        }

        @Override
        public void a() {
            if (this.f11147d.decrementAndGet() == 0 && compareAndSet(false, true)) {
                this.f11146c.a();
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f11145b.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f11145b.dispose();
            if (compareAndSet(false, true)) {
                this.f11146c.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }
    }

    public E(Iterable<? extends InterfaceC2359i> iterable) {
        this.f11143b = iterable;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        De.b bVar = new De.b();
        interfaceC2356f.e(bVar);
        try {
            Iterator it = (Iterator) He.b.g(this.f11143b.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            a aVar = new a(interfaceC2356f, bVar, atomicInteger);
            while (!bVar.d()) {
                try {
                    if (!it.hasNext()) {
                        aVar.a();
                        return;
                    }
                    if (bVar.d()) {
                        return;
                    }
                    try {
                        InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(it.next(), "The iterator returned a null CompletableSource");
                        if (bVar.d()) {
                            return;
                        }
                        atomicInteger.getAndIncrement();
                        interfaceC2359i.b(aVar);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        bVar.dispose();
                        aVar.onError(th2);
                        return;
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    bVar.dispose();
                    aVar.onError(th3);
                    return;
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            interfaceC2356f.onError(th4);
        }
    }
}
