package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Ke.C;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class D extends AbstractC2353c {

    public final Iterable<? extends InterfaceC2359i> f11142b;

    public D(Iterable<? extends InterfaceC2359i> iterable) {
        this.f11142b = iterable;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        De.b bVar = new De.b();
        interfaceC2356f.e(bVar);
        try {
            Iterator it = (Iterator) He.b.g(this.f11142b.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            io.reactivex.internal.util.c cVar = new io.reactivex.internal.util.c();
            while (!bVar.d()) {
                try {
                    if (it.hasNext()) {
                        if (bVar.d()) {
                            return;
                        }
                        try {
                            InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(it.next(), "The iterator returned a null CompletableSource");
                            if (bVar.d()) {
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            interfaceC2359i.b(new C.a(interfaceC2356f, bVar, cVar, atomicInteger));
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            cVar.a(th2);
                        }
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    cVar.a(th3);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    Throwable c10 = cVar.c();
                    if (c10 == null) {
                        interfaceC2356f.a();
                        return;
                    } else {
                        interfaceC2356f.onError(c10);
                        return;
                    }
                }
                return;
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            interfaceC2356f.onError(th4);
        }
    }
}
