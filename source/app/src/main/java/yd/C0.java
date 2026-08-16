package Yd;

import be.InterfaceC3876i;
import java.util.RandomAccess;

public class C0 extends J0 implements RandomAccess {

    public static final long f29995f = -2542308836966382001L;

    public C0(InterfaceC3876i interfaceC3876i) {
        super(interfaceC3876i);
    }

    private Object b() {
        return new J0(this.f30066d);
    }

    @Override
    public InterfaceC3876i subList(int i10, int i11) {
        return new C0(this.f30066d.subList(i10, i11));
    }
}
