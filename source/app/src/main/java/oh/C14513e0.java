package oh;

import fm.C13260d;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ParsingException;

public class C14513e0 implements InterfaceC14553z {

    public I f98879b;

    public C14513e0(I i10) {
        this.f98879b = i10;
    }

    public static C14509c0 e(I i10) throws IOException {
        return new C14509c0(C13260d.e(new C14535p0(i10)));
    }

    @Override
    public InputStream a() {
        return new C14535p0(this.f98879b);
    }

    @Override
    public B c() throws IOException {
        return e(this.f98879b);
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
