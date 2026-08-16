package Xd;

import be.InterfaceC3871d;
import java.util.RandomAccess;

public class B0 extends P implements RandomAccess {

    public static final long f28291g = 1530674583602358482L;

    public B0(InterfaceC3871d interfaceC3871d) {
        super(interfaceC3871d);
    }

    private Object d() {
        return new P(this.f28393e);
    }

    @Override
    public InterfaceC3871d subList(int i10, int i11) {
        B0 b02;
        synchronized (this.f28363c) {
            b02 = new B0(this.f28393e.subList(i10, i11), this.f28363c);
        }
        return b02;
    }

    public B0(InterfaceC3871d interfaceC3871d, Object obj) {
        super(interfaceC3871d, obj);
    }
}
