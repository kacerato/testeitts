package org.bouncycastle.cms.jcajce;

import fi.C13228d;
import java.math.BigInteger;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.cms.C14675q0;

public class K extends C14675q0 {
    public K(X509Certificate x509Certificate) {
        super(e(x509Certificate.getIssuerX500Principal()), x509Certificate.getSerialNumber(), C14640a.i(x509Certificate));
    }

    private static C13228d e(X500Principal x500Principal) {
        if (x500Principal == null) {
            return null;
        }
        return C13228d.x(x500Principal.getEncoded());
    }

    public K(X500Principal x500Principal, BigInteger bigInteger) {
        super(e(x500Principal), bigInteger);
    }

    public K(X500Principal x500Principal, BigInteger bigInteger, byte[] bArr) {
        super(e(x500Principal), bigInteger, bArr);
    }
}
