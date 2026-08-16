package Hj;

import hi.C13478B;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.CRLSelector;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509Certificate;
import java.util.Collection;
import oh.AbstractC14551y;
import oh.C14539s;

public class p<T extends CRL> implements org.bouncycastle.util.r<T> {

    public final CRLSelector f8526b;

    public final boolean f8527c;

    public final boolean f8528d;

    public final BigInteger f8529e;

    public final byte[] f8530f;

    public final boolean f8531g;

    public static class b {

        public final CRLSelector f8532a;

        public boolean f8533b = false;

        public boolean f8534c = false;

        public BigInteger f8535d = null;

        public byte[] f8536e = null;

        public boolean f8537f = false;

        public b(CRLSelector cRLSelector) {
            this.f8532a = (CRLSelector) cRLSelector.clone();
        }

        public p<? extends CRL> g() {
            return new p<>(this);
        }

        public b h(boolean z10) {
            this.f8534c = z10;
            return this;
        }

        public b i(boolean z10) {
            this.f8533b = z10;
            return this;
        }

        public void j(byte[] bArr) {
            this.f8536e = org.bouncycastle.util.a.p(bArr);
        }

        public void k(boolean z10) {
            this.f8537f = z10;
        }

        public void l(BigInteger bigInteger) {
            this.f8535d = bigInteger;
        }
    }

    public static class c extends X509CRLSelector {

        public final p f8538b;

        public c(p pVar) {
            this.f8538b = pVar;
            if (pVar.f8526b instanceof X509CRLSelector) {
                X509CRLSelector x509CRLSelector = (X509CRLSelector) pVar.f8526b;
                setCertificateChecking(x509CRLSelector.getCertificateChecking());
                setDateAndTime(x509CRLSelector.getDateAndTime());
                setIssuers(x509CRLSelector.getIssuers());
                setMinCRLNumber(x509CRLSelector.getMinCRL());
                setMaxCRLNumber(x509CRLSelector.getMaxCRL());
            }
        }

        @Override
        public boolean match(CRL crl) {
            p pVar = this.f8538b;
            return pVar == null ? crl != null : pVar.Z2(crl);
        }
    }

    public p(b bVar) {
        this.f8526b = bVar.f8532a;
        this.f8527c = bVar.f8533b;
        this.f8528d = bVar.f8534c;
        this.f8529e = bVar.f8535d;
        this.f8530f = bVar.f8536e;
        this.f8531g = bVar.f8537f;
    }

    public static Collection<? extends CRL> b(p pVar, CertStore certStore) throws CertStoreException {
        return certStore.getCRLs(new c(pVar));
    }

    public X509Certificate c() {
        CRLSelector cRLSelector = this.f8526b;
        if (cRLSelector instanceof X509CRLSelector) {
            return ((X509CRLSelector) cRLSelector).getCertificateChecking();
        }
        return null;
    }

    @Override
    public Object clone() {
        return this;
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f8530f);
    }

    public BigInteger e() {
        return this.f8529e;
    }

    public boolean f() {
        return this.f8528d;
    }

    public boolean g() {
        return this.f8527c;
    }

    public boolean h() {
        return this.f8531g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0068, code lost:
    
        if (org.bouncycastle.util.a.g(r0, r2) == false) goto L34;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean Z2(CRL crl) {
        if (crl instanceof X509CRL) {
            X509CRL x509crl = (X509CRL) crl;
            try {
                byte[] extensionValue = x509crl.getExtensionValue(C13478B.f90540p.J());
                C14539s F10 = extensionValue != null ? C14539s.F(AbstractC14551y.F(extensionValue).H()) : null;
                if (g() && F10 == null) {
                    return false;
                }
                if (f() && F10 != null) {
                    return false;
                }
                if (F10 != null && this.f8529e != null && F10.H().compareTo(this.f8529e) == 1) {
                    return false;
                }
                if (this.f8531g) {
                    byte[] extensionValue2 = x509crl.getExtensionValue(C13478B.f90541q.J());
                    byte[] bArr = this.f8530f;
                    if (bArr == null) {
                        if (extensionValue2 != null) {
                            return false;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return this.f8526b.match(crl);
        return false;
    }
}
