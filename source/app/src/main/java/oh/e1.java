package oh;

import java.io.IOException;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.bouncycastle.asn1.ASN1ParsingException;

public class e1 implements Enumeration {

    public r f98880a;

    public Object f98881b = a();

    public e1(byte[] bArr) {
        this.f98880a = new r(bArr, true);
    }

    public final Object a() {
        try {
            return this.f98880a.k();
        } catch (IOException e10) {
            throw new ASN1ParsingException("malformed ASN.1: " + ((Object) e10), e10);
        }
    }

    @Override
    public boolean hasMoreElements() {
        return this.f98881b != null;
    }

    @Override
    public Object nextElement() {
        Object obj = this.f98881b;
        if (obj == null) {
            throw new NoSuchElementException();
        }
        this.f98881b = a();
        return obj;
    }
}
