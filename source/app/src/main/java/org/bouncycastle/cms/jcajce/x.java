package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import oh.C14549x;
import org.bouncycastle.cms.AbstractC14639j0;
import uh.C15634z;

public class x extends AbstractC14639j0 {
    public x(X509Certificate x509Certificate, C14549x c14549x) throws CertificateEncodingException {
        super(new C15634z(new org.bouncycastle.cert.jcajce.i(x509Certificate).x()), new C14655p(x509Certificate.getPublicKey(), c14549x));
    }

    public x b(C14549x c14549x, String str) {
        ((C14655p) this.f100790a).h(c14549x, str);
        return this;
    }

    public x c(C13486b c13486b) {
        ((C14655p) this.f100790a).i(c13486b);
        return this;
    }

    public x d(String str) {
        ((C14655p) this.f100790a).j(str);
        return this;
    }

    public x e(Provider provider) {
        ((C14655p) this.f100790a).k(provider);
        return this;
    }

    public x f(SecureRandom secureRandom) {
        ((C14655p) this.f100790a).l(secureRandom);
        return this;
    }

    public x(byte[] bArr, PublicKey publicKey, C14549x c14549x) {
        super(bArr, new C14655p(publicKey, c14549x));
    }
}
