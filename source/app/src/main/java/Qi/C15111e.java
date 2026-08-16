package qi;

import Qk.F;
import Qk.y;
import Xh.v;
import java.security.PrivateKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import oi.C14566l;
import org.bouncycastle.cert.crmf.CRMFException;
import wh.m;

public class C15111e extends C14566l {
    public C15111e(y yVar, F f10) {
        super(yVar, f10);
    }

    public m f(PrivateKey privateKey) throws CertificateEncodingException, CRMFException {
        return a(v.v(privateKey.getEncoded()));
    }

    public m g(X509Certificate x509Certificate) throws CertificateEncodingException, CRMFException {
        return b(new org.bouncycastle.cert.jcajce.i(x509Certificate));
    }
}
