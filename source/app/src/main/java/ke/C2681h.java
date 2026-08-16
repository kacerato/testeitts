package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.Callable;

public final class C2681h extends AbstractC2353c {

    public final Callable<? extends InterfaceC2359i> f11277b;

    public C2681h(Callable<? extends InterfaceC2359i> callable) {
        this.f11277b = callable;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        try {
            ((InterfaceC2359i) He.b.g(this.f11277b.call(), "The completableSupplier returned a null CompletableSource")).b(interfaceC2356f);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.e(th2, interfaceC2356f);
        }
    }
}
