package Tk;

import Xh.C3330e;
import Xi.C3335c;
import java.io.IOException;
import org.bouncycastle.crypto.util.q;
import org.bouncycastle.pkcs.PKCSException;

public class a extends Sk.e {
    public a(Sk.e eVar) {
        super(eVar.n());
    }

    public C3335c o() throws PKCSException {
        try {
            return q.b(i());
        } catch (IOException e10) {
            throw new PKCSException("error extracting key encoding: " + e10.getMessage(), e10);
        }
    }

    public a(C3330e c3330e) {
        super(c3330e);
    }

    public a(byte[] bArr) throws IOException {
        super(bArr);
    }
}
