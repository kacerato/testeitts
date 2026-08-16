package org.bouncycastle.cms.jcajce;

import Qk.AbstractC3011d;
import hi.C13486b;
import java.security.Provider;
import java.security.PublicKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import oh.C14549x;
import org.bouncycastle.cms.AbstractC14676r0;
import uh.C15634z;

public class L extends AbstractC14676r0 {
    public L(X509Certificate x509Certificate) throws CertificateEncodingException {
        super(new C15634z(new org.bouncycastle.cert.jcajce.i(x509Certificate).x()), new org.bouncycastle.operator.jcajce.f(x509Certificate));
    }

    public L b(C14549x c14549x, String str) {
        ((org.bouncycastle.operator.jcajce.f) this.f101013a).f(c14549x, str);
        return this;
    }

    public L c(String str) {
        ((org.bouncycastle.operator.jcajce.f) this.f101013a).g(str);
        return this;
    }

    public L d(Provider provider) {
        ((org.bouncycastle.operator.jcajce.f) this.f101013a).h(provider);
        return this;
    }

    public L(X509Certificate x509Certificate, AbstractC3011d abstractC3011d) throws CertificateEncodingException {
        super(new C15634z(new org.bouncycastle.cert.jcajce.i(x509Certificate).x()), abstractC3011d);
    }

    public L(X509Certificate x509Certificate, C13486b c13486b) throws CertificateEncodingException {
        super(new C15634z(new org.bouncycastle.cert.jcajce.i(x509Certificate).x()), new org.bouncycastle.operator.jcajce.f(c13486b, x509Certificate.getPublicKey()));
    }

    public L(byte[] bArr, AbstractC3011d abstractC3011d) {
        super(bArr, abstractC3011d);
    }

    public L(byte[] bArr, C13486b c13486b, PublicKey publicKey) {
        super(bArr, new org.bouncycastle.operator.jcajce.f(c13486b, publicKey));
    }

    public L(byte[] bArr, PublicKey publicKey) {
        super(bArr, new org.bouncycastle.operator.jcajce.f(publicKey));
    }
}
