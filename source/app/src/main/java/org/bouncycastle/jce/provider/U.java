package org.bouncycastle.jce.provider;

import fi.C13228d;
import hi.C13478B;
import hi.C13479C;
import hi.C13482F;
import hi.C13505q;
import hi.i0;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oh.AbstractC14551y;
import oh.C14549x;
import oh.InterfaceC14520i;

public class U extends X509CRL {

    public hi.r f101672b;

    public String f101673c;

    public byte[] f101674d;

    public boolean f101675e;

    public boolean f101676f = false;

    public int f101677g;

    public U(hi.r rVar) throws CRLException {
        this.f101672b = rVar;
        try {
            this.f101673c = a0.b(rVar.C());
            if (rVar.C().x() != null) {
                this.f101674d = rVar.C().x().r().s(InterfaceC14520i.f98892a);
            } else {
                this.f101674d = null;
            }
            this.f101675e = d(this);
        } catch (Exception e10) {
            throw new CRLException("CRL contents invalid: " + ((Object) e10));
        }
    }

    public static boolean d(X509CRL x509crl) throws CRLException {
        try {
            byte[] extensionValue = x509crl.getExtensionValue(C13478B.f90541q.J());
            if (extensionValue != null) {
                if (hi.L.y(AbstractC14551y.F(extensionValue).H()).B()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            throw new ExtCRLException("Exception reading IssuingDistributionPoint", e10);
        }
    }

    public final void a(PublicKey publicKey, Signature signature) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        if (!this.f101672b.C().equals(this.f101672b.D().B())) {
            throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
        }
        signature.initVerify(publicKey);
        signature.update(getTBSCertList());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("CRL does not verify with supplied public key.");
        }
    }

    public final Set c(boolean z10) {
        C13479C u10;
        if (getVersion() != 2 || (u10 = this.f101672b.D().u()) == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Enumeration F10 = u10.F();
        while (F10.hasMoreElements()) {
            C14549x c14549x = (C14549x) F10.nextElement();
            if (z10 == u10.x(c14549x).B()) {
                hashSet.add(c14549x.J());
            }
        }
        return hashSet;
    }

    public final Set e() {
        C13478B x10;
        HashSet hashSet = new HashSet();
        Enumeration z10 = this.f101672b.z();
        C13228d c13228d = null;
        while (z10.hasMoreElements()) {
            i0.b bVar = (i0.b) z10.nextElement();
            hashSet.add(new T(bVar, this.f101675e, c13228d));
            if (this.f101675e && bVar.z() && (x10 = bVar.u().x(C13478B.f90542r)) != null) {
                c13228d = C13228d.x(C13482F.w(x10.A()).y()[0].x());
            }
        }
        return hashSet;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof X509CRL)) {
            return false;
        }
        if (!(obj instanceof U)) {
            return super.equals(obj);
        }
        U u10 = (U) obj;
        if (this.f101676f && u10.f101676f && u10.f101677g != this.f101677g) {
            return false;
        }
        return this.f101672b.equals(u10.f101672b);
    }

    @Override
    public Set getCriticalExtensionOIDs() {
        return c(true);
    }

    @Override
    public byte[] getEncoded() throws CRLException {
        try {
            return this.f101672b.s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new CRLException(e10.toString());
        }
    }

    @Override
    public byte[] getExtensionValue(String str) {
        C13478B x10;
        C13479C u10 = this.f101672b.D().u();
        if (u10 == null || (x10 = u10.x(new C14549x(str))) == null) {
            return null;
        }
        try {
            return x10.y().getEncoded();
        } catch (Exception e10) {
            throw new IllegalStateException("error parsing " + e10.toString());
        }
    }

    @Override
    public Principal getIssuerDN() {
        return new org.bouncycastle.jce.j(C13228d.x(this.f101672b.x().r()));
    }

    @Override
    public X500Principal getIssuerX500Principal() {
        try {
            return new X500Principal(this.f101672b.x().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override
    public Date getNextUpdate() {
        if (this.f101672b.y() != null) {
            return this.f101672b.y().u();
        }
        return null;
    }

    @Override
    public Set getNonCriticalExtensionOIDs() {
        return c(false);
    }

    @Override
    public X509CRLEntry getRevokedCertificate(BigInteger bigInteger) {
        C13478B x10;
        Enumeration z10 = this.f101672b.z();
        C13228d c13228d = null;
        while (z10.hasMoreElements()) {
            i0.b bVar = (i0.b) z10.nextElement();
            if (bVar.y().L(bigInteger)) {
                return new T(bVar, this.f101675e, c13228d);
            }
            if (this.f101675e && bVar.z() && (x10 = bVar.u().x(C13478B.f90542r)) != null) {
                c13228d = C13228d.x(C13482F.w(x10.A()).y()[0].x());
            }
        }
        return null;
    }

    @Override
    public Set getRevokedCertificates() {
        Set e10 = e();
        if (e10.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableSet(e10);
    }

    @Override
    public String getSigAlgName() {
        return this.f101673c;
    }

    @Override
    public String getSigAlgOID() {
        return this.f101672b.C().u().J();
    }

    @Override
    public byte[] getSigAlgParams() {
        byte[] bArr = this.f101674d;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @Override
    public byte[] getSignature() {
        return this.f101672b.B().J();
    }

    @Override
    public byte[] getTBSCertList() throws CRLException {
        try {
            return this.f101672b.D().s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new CRLException(e10.toString());
        }
    }

    @Override
    public Date getThisUpdate() {
        return this.f101672b.E().u();
    }

    @Override
    public int getVersion() {
        return this.f101672b.F();
    }

    @Override
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        criticalExtensionOIDs.remove(N.f101642e);
        criticalExtensionOIDs.remove(N.f101644g);
        return !criticalExtensionOIDs.isEmpty();
    }

    @Override
    public int hashCode() {
        if (!this.f101676f) {
            this.f101676f = true;
            this.f101677g = super.hashCode();
        }
        return this.f101677g;
    }

    @Override
    public boolean isRevoked(Certificate certificate) {
        C13228d x10;
        C13478B x11;
        if (!certificate.getType().equals("X.509")) {
            throw new RuntimeException("X.509 CRL used with non X.509 Cert");
        }
        Enumeration z10 = this.f101672b.z();
        C13228d x12 = this.f101672b.x();
        if (z10 != null) {
            X509Certificate x509Certificate = (X509Certificate) certificate;
            BigInteger serialNumber = x509Certificate.getSerialNumber();
            while (z10.hasMoreElements()) {
                i0.b v10 = i0.b.v(z10.nextElement());
                if (this.f101675e && v10.z() && (x11 = v10.u().x(C13478B.f90542r)) != null) {
                    x12 = C13228d.x(C13482F.w(x11.A()).y()[0].x());
                }
                if (v10.y().L(serialNumber)) {
                    if (certificate instanceof X509Certificate) {
                        x10 = C13228d.x(x509Certificate.getIssuerX500Principal().getEncoded());
                    } else {
                        try {
                            x10 = C13505q.v(certificate.getEncoded()).x();
                        } catch (CertificateEncodingException unused) {
                            throw new RuntimeException("Cannot process certificate");
                        }
                    }
                    return x12.equals(x10);
                }
            }
        }
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:49:0x0183
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    @Override
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.U.toString():java.lang.String");
    }

    @Override
    public void verify(PublicKey publicKey) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        Signature signature;
        try {
            signature = Signature.getInstance(getSigAlgName(), C14720a.f101701e);
        } catch (Exception unused) {
            signature = Signature.getInstance(getSigAlgName());
        }
        a(publicKey, signature);
    }

    @Override
    public void verify(PublicKey publicKey, String str) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        a(publicKey, str != null ? Signature.getInstance(getSigAlgName(), str) : Signature.getInstance(getSigAlgName()));
    }

    @Override
    public void verify(PublicKey publicKey, Provider provider) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        a(publicKey, provider != null ? Signature.getInstance(getSigAlgName(), provider) : Signature.getInstance(getSigAlgName()));
    }
}
