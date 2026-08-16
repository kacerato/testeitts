package Yd;

import be.InterfaceC3868a;
import java.util.RandomAccess;

public class w0 extends C3414g implements RandomAccess {

    public static final long f30393f = -2542308836966382001L;

    public w0(InterfaceC3868a interfaceC3868a) {
        super(interfaceC3868a);
    }

    private Object b() {
        return new C3414g(this.f30227d);
    }

    @Override
    public InterfaceC3868a subList(int i10, int i11) {
        return new w0(this.f30227d.subList(i10, i11));
    }
}
