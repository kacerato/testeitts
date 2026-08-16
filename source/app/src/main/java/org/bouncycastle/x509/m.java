package org.bouncycastle.x509;

import hi.C13478B;
import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import jm.C13883b;
import oh.C14539s;

public class m extends X509CRLSelector implements org.bouncycastle.util.r {

    public boolean f102406b = false;

    public boolean f102407c = false;

    public BigInteger f102408d = null;

    public byte[] f102409e = null;

    public boolean f102410f = false;

    public l f102411g;

    public static m b(X509CRLSelector x509CRLSelector) {
        if (x509CRLSelector == null) {
            throw new IllegalArgumentException("cannot create from null selector");
        }
        m mVar = new m();
        mVar.setCertificateChecking(x509CRLSelector.getCertificateChecking());
        mVar.setDateAndTime(x509CRLSelector.getDateAndTime());
        try {
            mVar.setIssuerNames(x509CRLSelector.getIssuerNames());
            mVar.setIssuers(x509CRLSelector.getIssuers());
            mVar.setMaxCRLNumber(x509CRLSelector.getMaxCRL());
            mVar.setMinCRLNumber(x509CRLSelector.getMinCRL());
            return mVar;
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
            C14539s F10 = extensionValue != null ? C14539s.F(C13883b.a(extensionValue)) : null;
            if (f() && F10 == null) {
                return false;
            }
            if (e() && F10 != null) {
                return false;
            }
            if (F10 != null && this.f102408d != null && F10.H().compareTo(this.f102408d) == 1) {
                return false;
            }
            if (this.f102410f) {
                byte[] extensionValue2 = x509crl.getExtensionValue(C13478B.f90541q.J());
                byte[] bArr = this.f102409e;
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

    public l a() {
        return this.f102411g;
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f102409e);
    }

    @Override
    public Object clone() {
        m b10 = b(this);
        b10.f102406b = this.f102406b;
        b10.f102407c = this.f102407c;
        b10.f102408d = this.f102408d;
        b10.f102411g = this.f102411g;
        b10.f102410f = this.f102410f;
        b10.f102409e = org.bouncycastle.util.a.p(this.f102409e);
        return b10;
    }

    public BigInteger d() {
        return this.f102408d;
    }

    public boolean e() {
        return this.f102407c;
    }

    public boolean f() {
        return this.f102406b;
    }

    public boolean g() {
        return this.f102410f;
    }

    public void h(l lVar) {
        this.f102411g = lVar;
    }

    public void i(boolean z10) {
        this.f102407c = z10;
    }

    public void j(boolean z10) {
        this.f102406b = z10;
    }

    public void k(byte[] bArr) {
        this.f102409e = org.bouncycastle.util.a.p(bArr);
    }

    public void l(boolean z10) {
        this.f102410f = z10;
    }

    public void m(BigInteger bigInteger) {
        this.f102408d = bigInteger;
    }

    @Override
    public boolean match(CRL crl) {
        return Z2(crl);
    }
}
