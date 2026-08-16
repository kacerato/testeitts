package Xd;

import be.InterfaceC3869b;
import java.util.RandomAccess;

public class z0 extends C3293t implements RandomAccess {

    public static final long f28649g = 1530674583602358482L;

    public z0(InterfaceC3869b interfaceC3869b) {
        super(interfaceC3869b);
    }

    private Object d() {
        return new C3293t(this.f28596e);
    }

    @Override
    public InterfaceC3869b subList(int i10, int i11) {
        z0 z0Var;
        synchronized (this.f28563c) {
            z0Var = new z0(this.f28596e.subList(i10, i11), this.f28563c);
        }
        return z0Var;
    }

    public z0(InterfaceC3869b interfaceC3869b, Object obj) {
        super(interfaceC3869b, obj);
    }
}
