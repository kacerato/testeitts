package oh;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1ParsingException;

public class C14525k0 implements H {

    public I f98908b;

    public C14525k0(I i10) {
        this.f98908b = i10;
    }

    public static C14523j0 e(I i10) throws IOException {
        return new C14523j0(i10.k());
    }

    @Override
    public B c() throws IOException {
        return e(this.f98908b);
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
        return this.f98908b.j();
    }
}
