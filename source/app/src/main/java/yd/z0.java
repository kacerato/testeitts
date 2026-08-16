package Yd;

import be.InterfaceC3871d;
import java.util.RandomAccess;

public class z0 extends N implements RandomAccess {

    public static final long f30412f = -2542308836966382001L;

    public z0(InterfaceC3871d interfaceC3871d) {
        super(interfaceC3871d);
    }

    private Object b() {
        return new N(this.f30099d);
    }

    @Override
    public InterfaceC3871d subList(int i10, int i11) {
        return new z0(this.f30099d.subList(i10, i11));
    }
}
