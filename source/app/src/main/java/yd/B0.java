package Yd;

import be.InterfaceC3875h;
import java.util.RandomAccess;

public class B0 extends C3423k0 implements RandomAccess {

    public static final long f29992f = -2542308836966382001L;

    public B0(InterfaceC3875h interfaceC3875h) {
        super(interfaceC3875h);
    }

    private Object b() {
        return new C3423k0(this.f30270d);
    }

    @Override
    public InterfaceC3875h subList(int i10, int i11) {
        return new B0(this.f30270d.subList(i10, i11));
    }
}
