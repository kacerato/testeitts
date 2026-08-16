package oh;

import fm.C13260d;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;

public class Z implements InterfaceC14510d {

    public I f98845b;

    public C14533o0 f98846c;

    public Z(I i10) {
        this.f98845b = i10;
    }

    public static Y e(I i10) throws IOException {
        C14533o0 c14533o0 = new C14533o0(i10, false);
        return new Y(C13260d.e(c14533o0), c14533o0.d());
    }

    @Override
    public InputStream a() throws IOException {
        C14533o0 c14533o0 = new C14533o0(this.f98845b, true);
        this.f98846c = c14533o0;
        return c14533o0;
    }

    @Override
    public B c() throws IOException {
        return e(this.f98845b);
    }

    @Override
    public InputStream i() throws IOException {
        C14533o0 c14533o0 = new C14533o0(this.f98845b, false);
        this.f98846c = c14533o0;
        return c14533o0;
    }

    @Override
    public int n() {
        return this.f98846c.d();
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
