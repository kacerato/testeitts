package org.bouncycastle.x509;

import dk.C12947c;
import dk.InterfaceC12950f;
import hi.C13505q;
import hi.C13506s;
import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import oh.InterfaceC14520i;
import org.bouncycastle.jce.provider.Y;

public class p {

    public final InterfaceC12950f f102415a = new C12947c();

    public X509Certificate f102416b;

    public X509Certificate f102417c;

    public p(C13506s c13506s) throws CertificateParsingException {
        if (c13506s.u() != null) {
            this.f102416b = new Y(c13506s.u());
        }
        if (c13506s.x() != null) {
            this.f102417c = new Y(c13506s.x());
        }
    }

    public byte[] a() throws CertificateEncodingException {
        C13505q c13505q;
        try {
            C13505q c13505q2 = null;
            if (this.f102416b != null) {
                c13505q = C13505q.v(new oh.r(this.f102416b.getEncoded()).k());
                if (c13505q == null) {
                    throw new CertificateEncodingException("unable to get encoding for forward");
                }
            } else {
                c13505q = null;
            }
            if (this.f102417c != null && (c13505q2 = C13505q.v(new oh.r(this.f102417c.getEncoded()).k())) == null) {
                throw new CertificateEncodingException("unable to get encoding for reverse");
            }
            return new C13506s(c13505q, c13505q2).s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new ExtCertificateEncodingException(e10.toString(), e10);
        } catch (IllegalArgumentException e11) {
            throw new ExtCertificateEncodingException(e11.toString(), e11);
        }
    }

    public X509Certificate b() {
        return this.f102416b;
    }

    public X509Certificate c() {
        return this.f102417c;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        X509Certificate x509Certificate = this.f102416b;
        boolean equals = x509Certificate != null ? x509Certificate.equals(pVar.f102416b) : pVar.f102416b == null;
        X509Certificate x509Certificate2 = this.f102417c;
        X509Certificate x509Certificate3 = pVar.f102417c;
        return equals && (x509Certificate2 != null ? x509Certificate2.equals(x509Certificate3) : x509Certificate3 == null);
    }

    public int hashCode() {
        X509Certificate x509Certificate = this.f102416b;
        int hashCode = x509Certificate != null ? (-1) ^ x509Certificate.hashCode() : -1;
        X509Certificate x509Certificate2 = this.f102417c;
        return x509Certificate2 != null ? (hashCode * 17) ^ x509Certificate2.hashCode() : hashCode;
    }

    public p(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        this.f102416b = x509Certificate;
        this.f102417c = x509Certificate2;
    }
}
