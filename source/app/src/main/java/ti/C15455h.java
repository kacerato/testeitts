package ti;

import java.io.IOException;
import oh.C0;
import org.bouncycastle.cert.ocsp.OCSPException;

public class C15455h {

    public static final int f117679a = 0;

    public static final int f117680b = 1;

    public static final int f117681c = 2;

    public static final int f117682d = 3;

    public static final int f117683e = 5;

    public static final int f117684f = 6;

    public C15454g a(int i10, Object obj) throws OCSPException {
        if (obj == null) {
            return new C15454g(new Vh.g(new Vh.h(i10), null));
        }
        if (!(obj instanceof C15448a)) {
            throw new OCSPException("unknown response object");
        }
        try {
            return new C15454g(new Vh.g(new Vh.h(i10), new Vh.k(Vh.e.f27027b, new C0(((C15448a) obj).getEncoded()))));
        } catch (IOException e10) {
            throw new OCSPException("can't encode object.", e10);
        }
    }
}
