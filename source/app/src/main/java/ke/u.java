package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;

public final class u extends AbstractC2353c {

    public final Runnable f11319b;

    public u(Runnable runnable) {
        this.f11319b = runnable;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        De.c b10 = De.d.b();
        interfaceC2356f.e(b10);
        try {
            this.f11319b.run();
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
