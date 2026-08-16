package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2358h;
import Be.InterfaceC2359i;

public final class y extends AbstractC2353c {

    public final InterfaceC2359i f11326b;

    public final InterfaceC2358h f11327c;

    public y(InterfaceC2359i interfaceC2359i, InterfaceC2358h interfaceC2358h) {
        this.f11326b = interfaceC2359i;
        this.f11327c = interfaceC2358h;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        try {
            this.f11326b.b(this.f11327c.a(interfaceC2356f));
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }
}
