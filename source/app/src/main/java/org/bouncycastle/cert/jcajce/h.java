package org.bouncycastle.cert.jcajce;

import hi.r;
import java.security.cert.CRLException;
import java.security.cert.X509CRL;
import li.C14145g;

public class h extends C14145g {
    public h(X509CRL x509crl) throws CRLException {
        super(r.u(x509crl.getEncoded()));
    }
}
