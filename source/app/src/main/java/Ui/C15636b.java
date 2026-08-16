package ui;

import Qk.p;
import java.math.BigInteger;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import org.bouncycastle.cert.jcajce.i;
import org.bouncycastle.cert.ocsp.OCSPException;
import ti.C15450c;

public class C15636b extends C15450c {
    public C15636b(p pVar, X509Certificate x509Certificate, BigInteger bigInteger) throws OCSPException, CertificateEncodingException {
        super(pVar, new i(x509Certificate), bigInteger);
    }
}
