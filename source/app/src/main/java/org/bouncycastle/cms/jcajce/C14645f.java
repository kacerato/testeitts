package org.bouncycastle.cms.jcajce;

import fi.C13228d;
import java.math.BigInteger;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.cms.K0;

public class C14645f extends K0 {
    public C14645f(X509Certificate x509Certificate) {
        super(d(x509Certificate.getIssuerX500Principal()), x509Certificate.getSerialNumber(), C14640a.i(x509Certificate));
    }

    private static C13228d d(X500Principal x500Principal) {
        if (x500Principal == null) {
            return null;
        }
        return C13228d.x(x500Principal.getEncoded());
    }

    public C14645f(X500Principal x500Principal, BigInteger bigInteger) {
        super(d(x500Principal), bigInteger);
    }

    public C14645f(X500Principal x500Principal, BigInteger bigInteger, byte[] bArr) {
        super(d(x500Principal), bigInteger, bArr);
    }
}
