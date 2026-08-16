package Xd;

import be.InterfaceC3872e;
import java.util.RandomAccess;

public class C0 extends C3262b0 implements RandomAccess {

    public static final long f28297g = 1530674583602358482L;

    public C0(InterfaceC3872e interfaceC3872e) {
        super(interfaceC3872e);
    }

    private Object c() {
        return new C3262b0(this.f28448e);
    }

    @Override
    public InterfaceC3872e subList(int i10, int i11) {
        C0 c02;
        synchronized (this.f28427c) {
            c02 = new C0(this.f28448e.subList(i10, i11), this.f28427c);
        }
        return c02;
    }

    public C0(InterfaceC3872e interfaceC3872e, Object obj) {
        super(interfaceC3872e, obj);
    }
}
