package pi;

import Qk.F;
import Qk.y;
import Xi.C3335c;
import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import oi.C14566l;
import org.bouncycastle.cert.crmf.CRMFException;
import org.bouncycastle.cert.jcajce.i;
import org.bouncycastle.crypto.util.p;
import wh.m;

public class C15002b extends C14566l {
    public C15002b(y yVar, F f10) {
        super(yVar, f10);
    }

    public m f(C3335c c3335c) throws CRMFException, IOException {
        return a(p.a(c3335c));
    }

    public m g(X509Certificate x509Certificate) throws CertificateEncodingException, CRMFException {
        return b(new i(x509Certificate));
    }
}
