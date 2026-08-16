package org.bouncycastle.jcajce.provider.asymmetric.x509;

import dk.InterfaceC12950f;
import fi.C13228d;
import hi.C13478B;
import hi.C13479C;
import hi.C13482F;
import hi.C13486b;
import hi.C13505q;
import hi.i0;
import hi.o0;
import hi.r;
import java.io.BufferedOutputStream;
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
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oh.AbstractC14508c;
import oh.AbstractC14551y;
import oh.B;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public abstract class f extends X509CRL {

    public InterfaceC12950f f101369b;

    public r f101370c;

    public String f101371d;

    public byte[] f101372e;

    public boolean f101373f;

    public class a implements d {
        public a() {
        }

        @Override
        public Signature a(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
            try {
                return f.this.f101369b.a(str);
            } catch (Exception unused) {
                return Signature.getInstance(str);
            }
        }
    }

    public class b implements d {

        public final String f101375a;

        public b(String str) {
            this.f101375a = str;
        }

        @Override
        public Signature a(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
            String str2 = this.f101375a;
            return str2 != null ? Signature.getInstance(str, str2) : Signature.getInstance(str);
        }
    }

    public class c implements d {

        public final Provider f101377a;

        public c(Provider provider) {
            this.f101377a = provider;
        }

        @Override
        public Signature a(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
            return this.f101377a != null ? Signature.getInstance(f.this.getSigAlgName(), this.f101377a) : Signature.getInstance(f.this.getSigAlgName());
        }
    }

    public f(InterfaceC12950f interfaceC12950f, r rVar, String str, byte[] bArr, boolean z10) {
        this.f101369b = interfaceC12950f;
        this.f101370c = rVar;
        this.f101371d = str;
        this.f101372e = bArr;
        this.f101373f = z10;
    }

    public static byte[] e(r rVar, String str) {
        AbstractC14551y g10 = g(rVar, str);
        if (g10 != null) {
            return g10.H();
        }
        return null;
    }

    public static AbstractC14551y g(r rVar, String str) {
        C13478B x10;
        C13479C u10 = rVar.D().u();
        if (u10 == null || (x10 = u10.x(new C14549x(str))) == null) {
            return null;
        }
        return x10.y();
    }

    public final void a(PublicKey publicKey, Signature signature, InterfaceC14516g interfaceC14516g, byte[] bArr) throws CRLException, InvalidKeyException, NoSuchAlgorithmException, SignatureException {
        if (!j.a(this.f101370c.C(), this.f101370c.D().B())) {
            throw new CRLException("Signature algorithm on CertificateList does not match TbsCertList.");
        }
        j.i(signature, interfaceC14516g);
        signature.initVerify(publicKey);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(Jj.f.b(signature), 512);
            this.f101370c.D().f(bufferedOutputStream, InterfaceC14520i.f98892a);
            bufferedOutputStream.close();
            if (!signature.verify(bArr)) {
                throw new SignatureException("CRL does not verify with supplied public key.");
            }
        } catch (IOException e10) {
            throw new CRLException(e10.toString());
        }
    }

    public final void c(PublicKey publicKey, d dVar) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, SignatureException, NoSuchProviderException {
        if (!this.f101370c.C().equals(this.f101370c.D().B())) {
            throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
        }
        int i10 = 0;
        if ((publicKey instanceof Hj.e) && j.f(this.f101370c.C())) {
            List<PublicKey> b10 = ((Hj.e) publicKey).b();
            E G10 = E.G(this.f101370c.C().x());
            E G11 = E.G(this.f101370c.B().J());
            boolean z10 = false;
            while (i10 != b10.size()) {
                if (b10.get(i10) != null) {
                    C13486b v10 = C13486b.v(G10.I(i10));
                    try {
                        a(b10.get(i10), dVar.a(j.d(v10)), v10.x(), AbstractC14508c.H(G11.I(i10)).J());
                        e = null;
                        z10 = true;
                    } catch (SignatureException e10) {
                        e = e10;
                    }
                    if (e != null) {
                        throw e;
                    }
                }
                i10++;
            }
            if (!z10) {
                throw new InvalidKeyException("no matching key found");
            }
            return;
        }
        if (!j.f(this.f101370c.C())) {
            Signature a10 = dVar.a(getSigAlgName());
            byte[] bArr = this.f101372e;
            if (bArr == null) {
                a(publicKey, a10, null, getSignature());
                return;
            }
            try {
                a(publicKey, a10, B.B(bArr), getSignature());
                return;
            } catch (IOException e11) {
                throw new SignatureException("cannot decode signature parameters: " + e11.getMessage());
            }
        }
        E G12 = E.G(this.f101370c.C().x());
        E G13 = E.G(this.f101370c.B().J());
        boolean z11 = false;
        while (i10 != G13.size()) {
            C13486b v11 = C13486b.v(G12.I(i10));
            try {
                a(publicKey, dVar.a(j.d(v11)), v11.x(), AbstractC14508c.H(G13.I(i10)).J());
                e = null;
                z11 = true;
            } catch (InvalidKeyException | NoSuchAlgorithmException unused) {
                e = null;
            } catch (SignatureException e12) {
                e = e12;
            }
            if (e != null) {
                throw e;
            }
            i10++;
        }
        if (!z11) {
            throw new InvalidKeyException("no matching key found");
        }
    }

    public final Set d(boolean z10) {
        C13479C u10;
        if (getVersion() != 2 || (u10 = this.f101370c.D().u()) == null) {
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

    @Override
    public Set getCriticalExtensionOIDs() {
        return d(true);
    }

    @Override
    public byte[] getExtensionValue(String str) {
        AbstractC14551y g10 = g(this.f101370c, str);
        if (g10 == null) {
            return null;
        }
        try {
            return g10.getEncoded();
        } catch (Exception e10) {
            throw new IllegalStateException("error parsing " + e10.toString());
        }
    }

    @Override
    public Principal getIssuerDN() {
        return new org.bouncycastle.jce.j(C13228d.x(this.f101370c.x().r()));
    }

    @Override
    public X500Principal getIssuerX500Principal() {
        try {
            return new X500Principal(this.f101370c.x().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override
    public Date getNextUpdate() {
        o0 y10 = this.f101370c.y();
        if (y10 == null) {
            return null;
        }
        return y10.u();
    }

    @Override
    public Set getNonCriticalExtensionOIDs() {
        return d(false);
    }

    @Override
    public X509CRLEntry getRevokedCertificate(BigInteger bigInteger) {
        C13478B x10;
        Enumeration z10 = this.f101370c.z();
        C13228d c13228d = null;
        while (z10.hasMoreElements()) {
            i0.b bVar = (i0.b) z10.nextElement();
            if (bVar.y().L(bigInteger)) {
                return new e(bVar, this.f101373f, c13228d);
            }
            if (this.f101373f && bVar.z() && (x10 = bVar.u().x(C13478B.f90542r)) != null) {
                c13228d = C13228d.x(C13482F.w(x10.A()).y()[0].x());
            }
        }
        return null;
    }

    @Override
    public Set getRevokedCertificates() {
        Set h10 = h();
        if (h10.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableSet(h10);
    }

    @Override
    public String getSigAlgName() {
        return this.f101371d;
    }

    @Override
    public String getSigAlgOID() {
        return this.f101370c.C().u().J();
    }

    @Override
    public byte[] getSigAlgParams() {
        return org.bouncycastle.util.a.p(this.f101372e);
    }

    @Override
    public byte[] getSignature() {
        return this.f101370c.B().J();
    }

    @Override
    public byte[] getTBSCertList() throws CRLException {
        try {
            return this.f101370c.D().s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new CRLException(e10.toString());
        }
    }

    @Override
    public Date getThisUpdate() {
        return this.f101370c.E().u();
    }

    @Override
    public int getVersion() {
        return this.f101370c.F();
    }

    public final Set h() {
        C13478B x10;
        HashSet hashSet = new HashSet();
        Enumeration z10 = this.f101370c.z();
        C13228d c13228d = null;
        while (z10.hasMoreElements()) {
            i0.b bVar = (i0.b) z10.nextElement();
            hashSet.add(new e(bVar, this.f101373f, c13228d));
            if (this.f101373f && bVar.z() && (x10 = bVar.u().x(C13478B.f90542r)) != null) {
                c13228d = C13228d.x(C13482F.w(x10.A()).y()[0].x());
            }
        }
        return hashSet;
    }

    @Override
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        criticalExtensionOIDs.remove(C13478B.f90541q.J());
        criticalExtensionOIDs.remove(C13478B.f90540p.J());
        return !criticalExtensionOIDs.isEmpty();
    }

    @Override
    public boolean isRevoked(Certificate certificate) {
        C13228d x10;
        C13478B x11;
        if (!certificate.getType().equals("X.509")) {
            throw new IllegalArgumentException("X.509 CRL used with non X.509 Cert");
        }
        Enumeration z10 = this.f101370c.z();
        C13228d x12 = this.f101370c.x();
        if (z10.hasMoreElements()) {
            X509Certificate x509Certificate = (X509Certificate) certificate;
            BigInteger serialNumber = x509Certificate.getSerialNumber();
            while (z10.hasMoreElements()) {
                i0.b v10 = i0.b.v(z10.nextElement());
                if (this.f101373f && v10.z() && (x11 = v10.u().x(C13478B.f90542r)) != null) {
                    x12 = C13228d.x(C13482F.w(x11.A()).y()[0].x());
                }
                if (v10.y().L(serialNumber)) {
                    if (certificate instanceof X509Certificate) {
                        x10 = C13228d.x(x509Certificate.getIssuerX500Principal().getEncoded());
                    } else {
                        try {
                            x10 = C13505q.v(certificate.getEncoded()).x();
                        } catch (CertificateEncodingException e10) {
                            throw new IllegalArgumentException("Cannot process certificate: " + e10.getMessage());
                        }
                    }
                    return x12.equals(x10);
                }
            }
        }
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:39:0x0143
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    @Override
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.asymmetric.x509.f.toString():java.lang.String");
    }

    @Override
    public void verify(PublicKey publicKey) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        c(publicKey, new a());
    }

    @Override
    public void verify(PublicKey publicKey, String str) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        c(publicKey, new b(str));
    }

    @Override
    public void verify(PublicKey publicKey, Provider provider) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        try {
            c(publicKey, new c(provider));
        } catch (NoSuchProviderException e10) {
            throw new NoSuchAlgorithmException("provider issue: " + e10.getMessage());
        }
    }
}
