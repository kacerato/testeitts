package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import java.util.concurrent.Callable;

public final class C2689p extends AbstractC2353c {

    public final Callable<? extends Throwable> f11311b;

    public C2689p(Callable<? extends Throwable> callable) {
        this.f11311b = callable;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        try {
            th = (Throwable) He.b.g(this.f11311b.call(), "The error returned is null");
        } catch (Throwable th2) {
            th = th2;
            io.reactivex.exceptions.a.b(th);
        }
        Ge.e.e(th, interfaceC2356f);
    }
}
