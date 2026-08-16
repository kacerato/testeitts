package Xd;

import be.InterfaceC3870c;
import java.util.RandomAccess;

public class A0 extends E implements RandomAccess {

    public static final long f28285g = 1530674583602358482L;

    public A0(InterfaceC3870c interfaceC3870c) {
        super(interfaceC3870c);
    }

    private Object d() {
        return new E(this.f28305e);
    }

    @Override
    public InterfaceC3870c subList(int i10, int i11) {
        A0 a02;
        synchronized (this.f28284c) {
            a02 = new A0(this.f28305e.subList(i10, i11), this.f28284c);
        }
        return a02;
    }

    public A0(InterfaceC3870c interfaceC3870c, Object obj) {
        super(interfaceC3870c, obj);
    }
}
