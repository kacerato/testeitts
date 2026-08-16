package Uk;

import Qk.F;
import Sk.l;
import Xh.v;
import hi.C13505q;
import java.io.IOException;
import java.security.PrivateKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import org.bouncycastle.pkcs.PKCSIOException;

public class c extends l {
    public c(PrivateKey privateKey) {
        super(v.v(privateKey.getEncoded()));
    }

    public static C13505q c(X509Certificate x509Certificate) throws IOException {
        try {
            return C13505q.v(x509Certificate.getEncoded());
        } catch (CertificateEncodingException e10) {
            throw new PKCSIOException("cannot encode certificate: " + e10.getMessage(), e10);
        }
    }

    public c(PrivateKey privateKey, F f10) {
        super(v.v(privateKey.getEncoded()), f10);
    }

    public c(X509Certificate x509Certificate) throws IOException {
        super(c(x509Certificate));
    }
}
