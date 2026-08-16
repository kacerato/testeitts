package Xd;

import be.InterfaceC3875h;
import java.util.RandomAccess;

public class D0 extends C3284m0 implements RandomAccess {

    public static final long f28303g = 1530674583602358482L;

    public D0(InterfaceC3875h interfaceC3875h) {
        super(interfaceC3875h);
    }

    private Object c() {
        return new C3284m0(this.f28540e);
    }

    @Override
    public InterfaceC3875h subList(int i10, int i11) {
        D0 d02;
        synchronized (this.f28507c) {
            d02 = new D0(this.f28540e.subList(i10, i11), this.f28507c);
        }
        return d02;
    }

    public D0(InterfaceC3875h interfaceC3875h, Object obj) {
        super(interfaceC3875h, obj);
    }
}
