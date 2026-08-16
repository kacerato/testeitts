package oh;

import java.io.IOException;
import java.io.OutputStream;

public class U0 extends C14503A {
    public U0(OutputStream outputStream) {
        super(outputStream);
    }

    @Override
    public void A(B[] bArr) throws IOException {
        for (B b10 : bArr) {
            b10.D().v(this, true);
        }
    }

    @Override
    public U0 g() {
        return this;
    }

    @Override
    public void n(InterfaceC14516g[] interfaceC14516gArr) throws IOException {
        for (InterfaceC14516g interfaceC14516g : interfaceC14516gArr) {
            interfaceC14516g.r().D().v(this, true);
        }
    }

    @Override
    public void z(B b10, boolean z10) throws IOException {
        b10.D().v(this, z10);
    }
}
