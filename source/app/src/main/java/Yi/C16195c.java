package yi;

import fi.C13228d;
import hi.C13478B;
import java.math.BigInteger;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
import oh.AbstractC14551y;
import xi.C16118d;

public class C16195c extends C16118d {
    public C16195c(X509Certificate x509Certificate) {
        super(e(x509Certificate.getIssuerX500Principal()), x509Certificate.getSerialNumber(), f(x509Certificate));
    }

    public static C13228d e(X500Principal x500Principal) {
        if (x500Principal == null) {
            return null;
        }
        return C13228d.x(x500Principal.getEncoded());
    }

    public static byte[] f(X509Certificate x509Certificate) {
        byte[] extensionValue = x509Certificate.getExtensionValue(C13478B.f90530f.J());
        if (extensionValue != null) {
            return AbstractC14551y.F(AbstractC14551y.F(extensionValue).H()).H();
        }
        return null;
    }

    public C16195c(X500Principal x500Principal, BigInteger bigInteger) {
        super(e(x500Principal), bigInteger);
    }

    public C16195c(X500Principal x500Principal, BigInteger bigInteger, byte[] bArr) {
        super(e(x500Principal), bigInteger, bArr);
    }
}
