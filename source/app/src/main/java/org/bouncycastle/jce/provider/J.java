package org.bouncycastle.jce.provider;

import fi.C13228d;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;

public class J {
    public static C13228d a(TrustAnchor trustAnchor) {
        return h(j(trustAnchor).getCA());
    }

    public static byte[] b(X500Principal x500Principal) {
        return n(m(x500Principal).getEncoded());
    }

    public static C13228d c(Object obj) {
        return obj instanceof X509Certificate ? e((X509Certificate) obj) : h((X500Principal) ((org.bouncycastle.x509.l) obj).f().b()[0]);
    }

    public static C13228d d(X509CRL x509crl) {
        return h(k(x509crl).getIssuerX500Principal());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C13228d e(X509Certificate x509Certificate) {
        return x509Certificate instanceof Ij.a ? i(((Ij.a) x509Certificate).g()) : h(l(x509Certificate).getIssuerX500Principal());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C13228d f(X509Certificate x509Certificate) {
        return x509Certificate instanceof Ij.a ? i(((Ij.a) x509Certificate).h()) : h(l(x509Certificate).getSubjectX500Principal());
    }

    public static C13228d g(fi.f fVar, X500Principal x500Principal) {
        return i(C13228d.w(fVar, b(x500Principal)));
    }

    public static C13228d h(X500Principal x500Principal) {
        return i(C13228d.x(b(x500Principal)));
    }

    public static C13228d i(C13228d c13228d) {
        if (c13228d != null) {
            return c13228d;
        }
        throw new IllegalStateException();
    }

    public static TrustAnchor j(TrustAnchor trustAnchor) {
        if (trustAnchor != null) {
            return trustAnchor;
        }
        throw new IllegalStateException();
    }

    public static X509CRL k(X509CRL x509crl) {
        if (x509crl != null) {
            return x509crl;
        }
        throw new IllegalStateException();
    }

    public static X509Certificate l(X509Certificate x509Certificate) {
        if (x509Certificate != null) {
            return x509Certificate;
        }
        throw new IllegalStateException();
    }

    public static X500Principal m(X500Principal x500Principal) {
        if (x500Principal != null) {
            return x500Principal;
        }
        throw new IllegalStateException();
    }

    public static byte[] n(byte[] bArr) {
        if (bArr != null) {
            return bArr;
        }
        throw new IllegalStateException();
    }
}
