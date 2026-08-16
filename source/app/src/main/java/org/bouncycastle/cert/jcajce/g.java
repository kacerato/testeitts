package org.bouncycastle.cert.jcajce;

import fi.C13228d;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;

public class g {
    public static byte[] a(X500Principal x500Principal) {
        return i(x500Principal).getEncoded();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C13228d b(fi.f fVar, X509Certificate x509Certificate) {
        return x509Certificate instanceof Ij.a ? C13228d.w(fVar, h(((Ij.a) x509Certificate).g())) : f(fVar, x509Certificate.getIssuerX500Principal());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C13228d c(X509Certificate x509Certificate) {
        return x509Certificate instanceof Ij.a ? h(((Ij.a) x509Certificate).g()) : g(x509Certificate.getIssuerX500Principal());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C13228d d(fi.f fVar, X509Certificate x509Certificate) {
        return x509Certificate instanceof Ij.a ? C13228d.w(fVar, h(((Ij.a) x509Certificate).h())) : f(fVar, x509Certificate.getSubjectX500Principal());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C13228d e(X509Certificate x509Certificate) {
        return x509Certificate instanceof Ij.a ? h(((Ij.a) x509Certificate).h()) : g(x509Certificate.getSubjectX500Principal());
    }

    public static C13228d f(fi.f fVar, X500Principal x500Principal) {
        return C13228d.w(fVar, a(x500Principal));
    }

    public static C13228d g(X500Principal x500Principal) {
        return C13228d.x(a(x500Principal));
    }

    public static C13228d h(C13228d c13228d) {
        if (c13228d != null) {
            return c13228d;
        }
        throw new IllegalStateException();
    }

    public static X500Principal i(X500Principal x500Principal) {
        if (x500Principal != null) {
            return x500Principal;
        }
        throw new IllegalStateException();
    }
}
