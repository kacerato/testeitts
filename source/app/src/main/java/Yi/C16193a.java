package yi;

import fi.C13228d;
import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.X509CertSelector;
import oh.AbstractC14551y;
import xi.C16118d;

public class C16193a {
    public C16118d a(X509CertSelector x509CertSelector) {
        try {
            C13228d x10 = C13228d.x(x509CertSelector.getIssuerAsBytes());
            BigInteger serialNumber = x509CertSelector.getSerialNumber();
            byte[] subjectKeyIdentifier = x509CertSelector.getSubjectKeyIdentifier();
            return new C16118d(x10, serialNumber, subjectKeyIdentifier != null ? AbstractC14551y.F(subjectKeyIdentifier).H() : null);
        } catch (IOException e10) {
            throw new IllegalArgumentException("unable to convert issuer: " + e10.getMessage());
        }
    }
}
