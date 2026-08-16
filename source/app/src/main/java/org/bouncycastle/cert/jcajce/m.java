package org.bouncycastle.cert.jcajce;

import fi.C13228d;
import java.security.cert.CRLException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.Date;
import javax.security.auth.x500.X500Principal;
import li.C14151m;

public class m extends C14151m {
    public m(X509CRL x509crl) throws CRLException {
        super(new h(x509crl));
    }

    public m(X509Certificate x509Certificate, Date date) {
        this(x509Certificate.getSubjectX500Principal(), date);
    }

    public m(X500Principal x500Principal, Date date) {
        super(C13228d.x(x500Principal.getEncoded()), date);
    }
}
