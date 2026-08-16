package org.bouncycastle.pkix.jcajce;

import hi.C13478B;
import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import oh.C14539s;
import org.bouncycastle.util.r;

public class k extends X509CRLSelector implements r {

    public boolean f102046b = false;

    public boolean f102047c = false;

    public BigInteger f102048d = null;

    public byte[] f102049e = null;

    public boolean f102050f = false;

    public static k a(X509CRLSelector x509CRLSelector) {
        if (x509CRLSelector == null) {
            throw new IllegalArgumentException("cannot create from null selector");
        }
        k kVar = new k();
        kVar.setCertificateChecking(x509CRLSelector.getCertificateChecking());
        kVar.setDateAndTime(x509CRLSelector.getDateAndTime());
        try {
            kVar.setIssuerNames(x509CRLSelector.getIssuerNames());
            kVar.setIssuers(x509CRLSelector.getIssuers());
            kVar.setMaxCRLNumber(x509CRLSelector.getMaxCRL());
            kVar.setMinCRLNumber(x509CRLSelector.getMinCRL());
            return kVar;
        } catch (IOException e10) {
            throw new IllegalArgumentException(e10.getMessage());
        }
    }

    @Override
    public boolean Z2(Object obj) {
        if (!(obj instanceof X509CRL)) {
            return false;
        }
        X509CRL x509crl = (X509CRL) obj;
        try {
            byte[] extensionValue = x509crl.getExtensionValue(C13478B.f90540p.J());
            C14539s F10 = extensionValue != null ? C14539s.F(org.bouncycastle.cert.jcajce.k.q(extensionValue)) : null;
            if (e() && F10 == null) {
                return false;
            }
            if (d() && F10 != null) {
                return false;
            }
            if (F10 != null && this.f102048d != null && F10.H().compareTo(this.f102048d) == 1) {
                return false;
            }
            if (this.f102050f) {
                byte[] extensionValue2 = x509crl.getExtensionValue(C13478B.f90541q.J());
                byte[] bArr = this.f102049e;
                if (bArr == null) {
                    if (extensionValue2 != null) {
                        return false;
                    }
                } else if (!org.bouncycastle.util.a.g(extensionValue2, bArr)) {
                    return false;
                }
            }
            return super.match(x509crl);
        } catch (Exception unused) {
            return false;
        }
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f102049e);
    }

    public BigInteger c() {
        return this.f102048d;
    }

    @Override
    public Object clone() {
        k a10 = a(this);
        a10.f102046b = this.f102046b;
        a10.f102047c = this.f102047c;
        a10.f102048d = this.f102048d;
        a10.f102050f = this.f102050f;
        a10.f102049e = org.bouncycastle.util.a.p(this.f102049e);
        return a10;
    }

    public boolean d() {
        return this.f102047c;
    }

    public boolean e() {
        return this.f102046b;
    }

    public boolean f() {
        return this.f102050f;
    }

    public void g(boolean z10) {
        this.f102047c = z10;
    }

    public void h(boolean z10) {
        this.f102046b = z10;
    }

    public void i(byte[] bArr) {
        this.f102049e = org.bouncycastle.util.a.p(bArr);
    }

    public void j(boolean z10) {
        this.f102050f = z10;
    }

    public void k(BigInteger bigInteger) {
        this.f102048d = bigInteger;
    }

    @Override
    public boolean match(CRL crl) {
        return Z2(crl);
    }
}
