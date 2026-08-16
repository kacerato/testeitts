package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import java.util.concurrent.Callable;

public final class r extends AbstractC2353c {

    public final Callable<?> f11313b;

    public r(Callable<?> callable) {
        this.f11313b = callable;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        De.c b10 = De.d.b();
        interfaceC2356f.e(b10);
        try {
            this.f11313b.call();
            if (b10.d()) {
                return;
            }
            interfaceC2356f.a();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            if (b10.d()) {
                Ye.a.Y(th2);
            } else {
                interfaceC2356f.onError(th2);
            }
        }
    }
}
