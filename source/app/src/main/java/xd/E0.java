package Xd;

import be.InterfaceC3876i;
import java.util.RandomAccess;

public class E0 extends L0 implements RandomAccess {

    public static final long f28306g = 1530674583602358482L;

    public E0(InterfaceC3876i interfaceC3876i) {
        super(interfaceC3876i);
    }

    public final Object c() {
        return new L0(this.f28365e);
    }

    @Override
    public InterfaceC3876i subList(int i10, int i11) {
        E0 e02;
        synchronized (this.f28330c) {
            e02 = new E0(this.f28365e.subList(i10, i11), this.f28330c);
        }
        return e02;
    }

    public E0(InterfaceC3876i interfaceC3876i, Object obj) {
        super(interfaceC3876i, obj);
    }
}
