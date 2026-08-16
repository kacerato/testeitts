package org.bouncycastle.cert.jcajce;

import fi.C13228d;
import hi.h0;
import hi.o0;
import java.math.BigInteger;
import java.security.PublicKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Date;
import javax.security.auth.x500.X500Principal;
import li.C14152n;
import oh.C14549x;

public class n extends C14152n {
    public n(C13228d c13228d, BigInteger bigInteger, o0 o0Var, o0 o0Var2, C13228d c13228d2, PublicKey publicKey) {
        super(c13228d, bigInteger, o0Var, o0Var2, c13228d2, h0.w(publicKey.getEncoded()));
    }

    public n s(C14549x c14549x, boolean z10, X509Certificate x509Certificate) throws CertificateEncodingException {
        g(c14549x, z10, new i(x509Certificate));
        return this;
    }

    public n(C13228d c13228d, BigInteger bigInteger, Date date, Date date2, C13228d c13228d2, h0 h0Var) {
        super(c13228d, bigInteger, date, date2, c13228d2, h0Var);
    }

    public n(C13228d c13228d, BigInteger bigInteger, Date date, Date date2, C13228d c13228d2, PublicKey publicKey) {
        super(c13228d, bigInteger, date, date2, c13228d2, h0.w(publicKey.getEncoded()));
    }

    public n(X509Certificate x509Certificate) throws CertificateEncodingException {
        super(new i(x509Certificate));
    }

    public n(X509Certificate x509Certificate, BigInteger bigInteger, Date date, Date date2, C13228d c13228d, PublicKey publicKey) {
        this(C13228d.x(x509Certificate.getSubjectX500Principal().getEncoded()), bigInteger, date, date2, c13228d, publicKey);
    }

    public n(X509Certificate x509Certificate, BigInteger bigInteger, Date date, Date date2, X500Principal x500Principal, PublicKey publicKey) {
        this(x509Certificate.getSubjectX500Principal(), bigInteger, date, date2, x500Principal, publicKey);
    }

    public n(X500Principal x500Principal, BigInteger bigInteger, Date date, Date date2, X500Principal x500Principal2, PublicKey publicKey) {
        super(C13228d.x(x500Principal.getEncoded()), bigInteger, date, date2, C13228d.x(x500Principal2.getEncoded()), h0.w(publicKey.getEncoded()));
    }
}
