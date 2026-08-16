package dj;

import hi.C13510w;
import java.io.OutputStream;
import org.bouncycastle.dvcs.DVCSException;

public class C12940l {

    public final Qk.p f84734a;

    public C12940l(Qk.p pVar) {
        this.f84734a = pVar;
    }

    public C12939k a(byte[] bArr) throws DVCSException {
        try {
            OutputStream outputStream = this.f84734a.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            return new C12939k(new C13510w(this.f84734a.a(), this.f84734a.b()));
        } catch (Exception e10) {
            throw new DVCSException("unable to build MessageImprint: " + e10.getMessage(), e10);
        }
    }
}
