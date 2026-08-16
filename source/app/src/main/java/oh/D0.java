package oh;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;

public class D0 implements InterfaceC14553z {

    public b1 f98787b;

    public D0(b1 b1Var) {
        this.f98787b = b1Var;
    }

    @Override
    public InputStream a() {
        return this.f98787b;
    }

    @Override
    public B c() throws IOException {
        return new C0(this.f98787b.g());
    }

    @Override
    public B r() {
        try {
            return c();
        } catch (IOException e10) {
            throw new ASN1ParsingException("IOException converting stream to byte array: " + e10.getMessage(), e10);
        }
    }
}
