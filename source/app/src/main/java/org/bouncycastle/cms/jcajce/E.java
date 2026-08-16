package org.bouncycastle.cms.jcajce;

import fi.C13228d;
import java.math.BigInteger;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.cms.C14667m0;

public class E extends C14667m0 {
    public E(X509Certificate x509Certificate) {
        this(x509Certificate.getIssuerX500Principal(), x509Certificate.getSerialNumber());
    }

    public E(X500Principal x500Principal, BigInteger bigInteger) {
        super(C13228d.x(x500Principal.getEncoded()), bigInteger);
    }
}
