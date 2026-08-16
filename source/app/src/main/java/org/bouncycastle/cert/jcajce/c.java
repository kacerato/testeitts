package org.bouncycastle.cert.jcajce;

import fi.C13228d;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
import li.C14140b;

public class c extends C14140b {
    public c(X509Certificate x509Certificate) {
        this(x509Certificate.getIssuerX500Principal());
    }

    public c(X500Principal x500Principal) {
        super(C13228d.x(x500Principal.getEncoded()));
    }
}
