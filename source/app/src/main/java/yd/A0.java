package Yd;

import be.InterfaceC3872e;
import java.util.RandomAccess;

public class A0 extends Z implements RandomAccess {

    public static final long f29985f = -2542308836966382001L;

    public A0(InterfaceC3872e interfaceC3872e) {
        super(interfaceC3872e);
    }

    private Object b() {
        return new Z(this.f30160d);
    }

    @Override
    public InterfaceC3872e subList(int i10, int i11) {
        return new A0(this.f30160d.subList(i10, i11));
    }
}
