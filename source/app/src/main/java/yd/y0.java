package Yd;

import be.InterfaceC3870c;
import java.util.RandomAccess;

public class y0 extends C implements RandomAccess {

    public static final long f30405f = -2542308836966382001L;

    public y0(InterfaceC3870c interfaceC3870c) {
        super(interfaceC3870c);
    }

    private Object c() {
        return new C(this.f29994d);
    }

    @Override
    public InterfaceC3870c subList(int i10, int i11) {
        return new y0(this.f29994d.subList(i10, i11));
    }
}
