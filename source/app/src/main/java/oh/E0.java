package oh;

import java.io.IOException;
import java.io.OutputStream;

public class E0 extends U0 {
    public E0(OutputStream outputStream) {
        super(outputStream);
    }

    @Override
    public void A(B[] bArr) throws IOException {
        for (B b10 : bArr) {
            b10.C().v(this, true);
        }
    }

    @Override
    public E0 f() {
        return this;
    }

    @Override
    public void n(InterfaceC14516g[] interfaceC14516gArr) throws IOException {
        for (InterfaceC14516g interfaceC14516g : interfaceC14516gArr) {
            interfaceC14516g.r().C().v(this, true);
        }
    }

    @Override
    public void z(B b10, boolean z10) throws IOException {
        b10.C().v(this, z10);
    }
}
