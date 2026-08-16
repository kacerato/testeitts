package Yd;

import be.InterfaceC3869b;
import java.util.RandomAccess;

public class x0 extends r implements RandomAccess {

    public static final long f30400f = -2542308836966382001L;

    public x0(InterfaceC3869b interfaceC3869b) {
        super(interfaceC3869b);
    }

    private Object c() {
        return new r(this.f30337d);
    }

    @Override
    public InterfaceC3869b subList(int i10, int i11) {
        return new x0(this.f30337d.subList(i10, i11));
    }
}
