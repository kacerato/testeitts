package qi;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import li.C14146h;
import oi.C14558d;

public class C15108b extends C14558d {
    public C15108b(X509Certificate... x509CertificateArr) throws CertificateEncodingException {
        super(c(x509CertificateArr));
    }

    public static C14146h[] c(X509Certificate... x509CertificateArr) throws CertificateEncodingException {
        int length = x509CertificateArr.length;
        C14146h[] c14146hArr = new C14146h[length];
        for (int i10 = 0; i10 != length; i10++) {
            c14146hArr[i10] = new org.bouncycastle.cert.jcajce.i(x509CertificateArr[i10]);
        }
        return c14146hArr;
    }
}
