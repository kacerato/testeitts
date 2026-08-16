package zi;

import java.io.IOException;
import li.C14145g;
import li.C14146h;
import oh.B;
import org.bouncycastle.cmc.CMCException;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.O;
import org.bouncycastle.util.g;
import org.bouncycastle.util.t;
import uh.C15624o;

public class C16315a implements g {

    public final O f131452b;

    public C16315a(C15624o c15624o) throws CMCException {
        try {
            O o10 = new O(c15624o);
            this.f131452b = o10;
            if (o10.l().size() != 0) {
                throw new CMCException("malformed response: SignerInfo structures found");
            }
            if (o10.i() != null) {
                throw new CMCException("malformed response: Signed Content found");
            }
        } catch (CMSException e10) {
            throw new CMCException("malformed response: " + e10.getMessage(), e10);
        }
    }

    public static C15624o c(byte[] bArr) throws CMCException {
        try {
            return C15624o.w(B.B(bArr));
        } catch (Exception e10) {
            throw new CMCException("malformed data: " + e10.getMessage(), e10);
        }
    }

    public t<C14145g> a() {
        return this.f131452b.d();
    }

    public t<C14146h> b() {
        return this.f131452b.e();
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f131452b.getEncoded();
    }

    public C16315a(byte[] bArr) throws CMCException {
        this(c(bArr));
    }
}
