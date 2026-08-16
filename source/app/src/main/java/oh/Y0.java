package oh;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1ParsingException;

public class Y0 implements H {

    public I f98844b;

    public Y0(I i10) {
        this.f98844b = i10;
    }

    @Override
    public B c() throws IOException {
        return T0.b(this.f98844b.k());
    }

    @Override
    public B r() {
        try {
            return c();
        } catch (IOException e10) {
            throw new ASN1ParsingException(e10.getMessage(), e10);
        }
    }

    @Override
    public InterfaceC14516g readObject() throws IOException {
        return this.f98844b.j();
    }
}
