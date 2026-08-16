package yi;

import fi.C13228d;
import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.X509CertSelector;
import oh.C0;
import org.bouncycastle.util.h;
import xi.C16118d;

public class C16194b {
    public X509CertSelector a(C13228d c13228d, BigInteger bigInteger, byte[] bArr) {
        X509CertSelector x509CertSelector = new X509CertSelector();
        if (c13228d != null) {
            try {
                x509CertSelector.setIssuer(c13228d.getEncoded());
            } catch (IOException e10) {
                throw h.a("unable to convert issuer: " + e10.getMessage(), e10);
            }
        }
        if (bigInteger != null) {
            x509CertSelector.setSerialNumber(bigInteger);
        }
        if (bArr != null) {
            try {
                x509CertSelector.setSubjectKeyIdentifier(new C0(bArr).getEncoded());
            } catch (IOException e11) {
                throw h.a("unable to convert subjectKeyIdentifier: " + e11.getMessage(), e11);
            }
        }
        return x509CertSelector;
    }

    public X509CertSelector b(C16118d c16118d) {
        return a(c16118d.b(), c16118d.c(), c16118d.d());
    }
}
