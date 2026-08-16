package Xd;

import be.InterfaceC3868a;
import java.util.RandomAccess;

public class y0 extends C3275i implements RandomAccess {

    public static final long f28643g = 1530674583602358482L;

    public y0(InterfaceC3868a interfaceC3868a) {
        super(interfaceC3868a);
    }

    private Object c() {
        return new C3275i(this.f28504e);
    }

    @Override
    public InterfaceC3868a subList(int i10, int i11) {
        y0 y0Var;
        synchronized (this.f28471c) {
            y0Var = new y0(this.f28504e.subList(i10, i11), this.f28471c);
        }
        return y0Var;
    }

    public y0(InterfaceC3868a interfaceC3868a, Object obj) {
        super(interfaceC3868a, obj);
    }
}
