package oh;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Exception;
import org.bouncycastle.asn1.ASN1ParsingException;

public class C14542t0 implements InterfaceC14526l {

    public I f98983b;

    public C14542t0(I i10) {
        this.f98983b = i10;
    }

    public static S0 e(I i10) throws IOException {
        try {
            return new S0(new V0(i10.k()));
        } catch (IllegalArgumentException e10) {
            throw new ASN1Exception(e10.getMessage(), e10);
        }
    }

    @Override
    public B c() throws IOException {
        return e(this.f98983b);
    }

    @Override
    public B r() {
        try {
            return c();
        } catch (IOException e10) {
            throw new ASN1ParsingException("unable to get DER object", e10);
        } catch (IllegalArgumentException e11) {
            throw new ASN1ParsingException("unable to get DER object", e11);
        }
    }

    @Override
    public InterfaceC14516g readObject() throws IOException {
        return this.f98983b.j();
    }
}
