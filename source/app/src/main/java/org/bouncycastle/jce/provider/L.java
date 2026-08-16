package org.bouncycastle.jce.provider;

import com.android.apksig.internal.oid.OidConstants;
import dk.InterfaceC12950f;
import fi.C13228d;
import gi.C13384b;
import hi.C13478B;
import hi.C13481E;
import hi.C13484a;
import hi.C13486b;
import hi.C13498j;
import hi.C13505q;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.Extension;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import mj.InterfaceC14273a;
import oh.A0;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14530n;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import pj.InterfaceC15005a;
import tj.InterfaceC15463a;
import yh.InterfaceC16192a;

public class L implements Hj.q {

    public static final int f101623g = 15000;

    public static final int f101624h = 32768;

    public static final Map f101625i;

    public final M f101626b;

    public final InterfaceC12950f f101627c;

    public Hj.r f101628d;

    public boolean f101629e;

    public String f101630f;

    static {
        HashMap hashMap = new HashMap();
        f101625i = hashMap;
        hashMap.put(new C14549x(OidConstants.OID_SIG_SHA1_WITH_RSA), "SHA1WITHRSA");
        hashMap.put(Xh.t.f29059U0, "SHA224WITHRSA");
        hashMap.put(Xh.t.f29049R0, "SHA256WITHRSA");
        hashMap.put(Xh.t.f29051S0, "SHA384WITHRSA");
        hashMap.put(Xh.t.f29055T0, "SHA512WITHRSA");
        hashMap.put(InterfaceC16192a.f130282n, "GOST3411WITHGOST3410");
        hashMap.put(InterfaceC16192a.f130283o, "GOST3411WITHECGOST3410");
        hashMap.put(Cj.a.f4464i, "GOST3411-2012-256WITHECGOST3410-2012-256");
        hashMap.put(Cj.a.f4465j, "GOST3411-2012-512WITHECGOST3410-2012-512");
        hashMap.put(InterfaceC14273a.f97127d, "SHA1WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97128e, "SHA224WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97129f, "SHA256WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97130g, "SHA384WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97131h, "SHA512WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97132i, "RIPEMD160WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15005a.f104002s, "SHA1WITHCVC-ECDSA");
        hashMap.put(InterfaceC15005a.f104003t, "SHA224WITHCVC-ECDSA");
        hashMap.put(InterfaceC15005a.f104004u, "SHA256WITHCVC-ECDSA");
        hashMap.put(InterfaceC15005a.f104005v, "SHA384WITHCVC-ECDSA");
        hashMap.put(InterfaceC15005a.f104006w, "SHA512WITHCVC-ECDSA");
        hashMap.put(InterfaceC15463a.f117695a, "XMSS");
        hashMap.put(InterfaceC15463a.f117696b, "XMSSMT");
        hashMap.put(new C14549x(OidConstants.OID_SIG_MD5_WITH_RSA), "MD5WITHRSA");
        hashMap.put(new C14549x("1.2.840.113549.1.1.2"), "MD2WITHRSA");
        hashMap.put(new C14549x(OidConstants.OID_SIG_SHA1_WITH_DSA), "SHA1WITHDSA");
        hashMap.put(ki.r.f95301E5, "SHA1WITHECDSA");
        hashMap.put(ki.r.f95309K5, "SHA224WITHECDSA");
        hashMap.put(ki.r.f95311L5, "SHA256WITHECDSA");
        hashMap.put(ki.r.f95313M5, "SHA384WITHECDSA");
        hashMap.put(ki.r.f95315N5, "SHA512WITHECDSA");
        hashMap.put(Bj.b.f1913k, "SHA1WITHRSA");
        hashMap.put(Bj.b.f1912j, "SHA1WITHDSA");
        hashMap.put(Sh.d.f23334a0, "SHA224WITHDSA");
        hashMap.put(Sh.d.f23336b0, "SHA256WITHDSA");
    }

    public L(M m10, InterfaceC12950f interfaceC12950f) {
        this.f101626b = m10;
        this.f101627c = interfaceC12950f;
    }

    public static byte[] c(MessageDigest messageDigest, PublicKey publicKey) {
        return messageDigest.digest(hi.h0.w(publicKey.getEncoded()).z().F());
    }

    public static String g(C14549x c14549x) {
        String b10 = dk.h.b(c14549x);
        int indexOf = b10.indexOf(45);
        if (indexOf <= 0 || b10.startsWith("SHA3")) {
            return b10;
        }
        return b10.substring(0, indexOf) + b10.substring(indexOf + 1);
    }

    public static URI h(X509Certificate x509Certificate) {
        byte[] extensionValue = x509Certificate.getExtensionValue(C13478B.f90516B.J());
        if (extensionValue == null) {
            return null;
        }
        C13484a[] x10 = C13498j.y(AbstractC14551y.F(extensionValue).H()).x();
        for (int i10 = 0; i10 != x10.length; i10++) {
            C13484a c13484a = x10[i10];
            if (C13484a.f90754e.A(c13484a.v())) {
                C13481E u10 = c13484a.u();
                if (u10.g() == 6) {
                    try {
                        return new URI(((oh.J) u10.x()).getString());
                    } catch (URISyntaxException unused) {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    public static String i(C13486b c13486b) {
        InterfaceC14516g x10 = c13486b.x();
        if (x10 == null || A0.f98776c.z(x10) || !c13486b.u().A(Xh.t.f29045Q0)) {
            Map map = f101625i;
            boolean containsKey = map.containsKey(c13486b.u());
            C14549x u10 = c13486b.u();
            return containsKey ? (String) map.get(u10) : u10.J();
        }
        return g(Xh.B.v(x10).u().u()) + "WITHRSAANDMGF1";
    }

    public static X509Certificate j(Vh.a aVar, X509Certificate x509Certificate, X509Certificate x509Certificate2, InterfaceC12950f interfaceC12950f) throws NoSuchProviderException, NoSuchAlgorithmException {
        Vh.j y10 = aVar.z().y();
        byte[] x10 = y10.x();
        if (x10 != null) {
            MessageDigest m10 = interfaceC12950f.m("SHA1");
            if (x509Certificate2 != null && org.bouncycastle.util.a.g(x10, c(m10, x509Certificate2.getPublicKey()))) {
                return x509Certificate2;
            }
            if (x509Certificate == null || !org.bouncycastle.util.a.g(x10, c(m10, x509Certificate.getPublicKey()))) {
                return null;
            }
            return x509Certificate;
        }
        fi.f fVar = C13384b.f89928U;
        C13228d w10 = C13228d.w(fVar, y10.y());
        if (x509Certificate2 != null && w10.equals(C13228d.w(fVar, x509Certificate2.getSubjectX500Principal().getEncoded()))) {
            return x509Certificate2;
        }
        if (x509Certificate == null || !w10.equals(C13228d.w(fVar, x509Certificate.getSubjectX500Principal().getEncoded()))) {
            return null;
        }
        return x509Certificate;
    }

    public static boolean o(Vh.j jVar, X509Certificate x509Certificate, InterfaceC12950f interfaceC12950f) throws NoSuchProviderException, NoSuchAlgorithmException {
        byte[] x10 = jVar.x();
        if (x10 != null) {
            return org.bouncycastle.util.a.g(x10, c(interfaceC12950f.m("SHA1"), x509Certificate.getPublicKey()));
        }
        fi.f fVar = C13384b.f89928U;
        return C13228d.w(fVar, jVar.y()).equals(C13228d.w(fVar, x509Certificate.getSubjectX500Principal().getEncoded()));
    }

    public static boolean p(Vh.a aVar, Hj.r rVar, byte[] bArr, X509Certificate x509Certificate, InterfaceC12950f interfaceC12950f) throws CertPathValidatorException {
        try {
            oh.E u10 = aVar.u();
            Signature a10 = interfaceC12950f.a(i(aVar.y()));
            X509Certificate j10 = j(aVar, rVar.d(), x509Certificate, interfaceC12950f);
            if (j10 == null && u10 == null) {
                throw new CertPathValidatorException("OCSP responder certificate not found");
            }
            if (j10 != null) {
                a10.initVerify(j10.getPublicKey());
            } else {
                X509Certificate x509Certificate2 = (X509Certificate) interfaceC12950f.r("X.509").generateCertificate(new ByteArrayInputStream(u10.I(0).r().getEncoded()));
                x509Certificate2.verify(rVar.d().getPublicKey());
                x509Certificate2.checkValidity(rVar.e());
                if (!o(aVar.z().y(), x509Certificate2, interfaceC12950f)) {
                    throw new CertPathValidatorException("responder certificate does not match responderID", null, rVar.a(), rVar.b());
                }
                List<String> extendedKeyUsage = x509Certificate2.getExtendedKeyUsage();
                if (extendedKeyUsage == null || !extendedKeyUsage.contains(hi.M.f90693m.u())) {
                    throw new CertPathValidatorException("responder certificate not valid for signing OCSP responses", null, rVar.a(), rVar.b());
                }
                a10.initVerify(x509Certificate2);
            }
            a10.update(aVar.z().s(InterfaceC14520i.f98892a));
            if (!a10.verify(aVar.x().J())) {
                return false;
            }
            if (bArr != null && !org.bouncycastle.util.a.g(bArr, aVar.z().z().x(Vh.e.f27028c).y().H())) {
                throw new CertPathValidatorException("nonce mismatch in OCSP response", null, rVar.a(), rVar.b());
            }
            return true;
        } catch (IOException e10) {
            throw new CertPathValidatorException("OCSP response failure: " + e10.getMessage(), e10, rVar.a(), rVar.b());
        } catch (CertPathValidatorException e11) {
            throw e11;
        } catch (GeneralSecurityException e12) {
            throw new CertPathValidatorException("OCSP response failure: " + e12.getMessage(), e12, rVar.a(), rVar.b());
        }
    }

    @Override
    public void a(String str, Object obj) {
    }

    @Override
    public void b(Hj.r rVar) {
        this.f101628d = rVar;
        this.f101629e = org.bouncycastle.util.q.f("ocsp.enable");
        this.f101630f = org.bouncycastle.util.q.d("ocsp.responderURL");
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x01a8, code lost:
    
        if (r0.u().equals(r1.u().u()) != false) goto L71;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void check(Certificate certificate) throws CertPathValidatorException {
        byte[] bArr;
        boolean z10;
        X509Certificate x509Certificate = (X509Certificate) certificate;
        Map<X509Certificate, byte[]> ocspResponses = this.f101626b.getOcspResponses();
        URI ocspResponder = this.f101626b.getOcspResponder();
        if (ocspResponder == null) {
            if (this.f101630f != null) {
                try {
                    ocspResponder = new URI(this.f101630f);
                } catch (URISyntaxException e10) {
                    throw new CertPathValidatorException("configuration error: " + e10.getMessage(), e10, this.f101628d.a(), this.f101628d.b());
                }
            } else {
                ocspResponder = h(x509Certificate);
            }
        }
        URI uri = ocspResponder;
        if (ocspResponses.get(x509Certificate) != null || uri == null) {
            List<Extension> ocspExtensions = this.f101626b.getOcspExtensions();
            bArr = null;
            for (int i10 = 0; i10 != ocspExtensions.size(); i10++) {
                Extension extension = ocspExtensions.get(i10);
                byte[] value = extension.getValue();
                if (Vh.e.f27028c.J().equals(extension.getId())) {
                    bArr = value;
                }
            }
            z10 = false;
        } else {
            if (this.f101630f == null && this.f101626b.getOcspResponder() == null && !this.f101629e) {
                throw new RecoverableCertPathValidatorException("OCSP disabled by \"ocsp.enable\" setting", null, this.f101628d.a(), this.f101628d.b());
            }
            try {
                ocspResponses.put(x509Certificate, C14742x.a(e(new C13486b(Bj.b.f1911i), f(), new C14539s(x509Certificate.getSerialNumber())), this.f101628d, uri, this.f101626b.getOcspResponderCert(), this.f101626b.getOcspExtensions(), this.f101627c).getEncoded());
                z10 = true;
                bArr = null;
            } catch (IOException e11) {
                throw new CertPathValidatorException("unable to encode OCSP response", e11, this.f101628d.a(), this.f101628d.b());
            }
        }
        if (ocspResponses.isEmpty()) {
            throw new RecoverableCertPathValidatorException("no OCSP response found for any certificate", null, this.f101628d.a(), this.f101628d.b());
        }
        Vh.g u10 = Vh.g.u(ocspResponses.get(x509Certificate));
        C14539s c14539s = new C14539s(x509Certificate.getSerialNumber());
        if (u10 == null) {
            throw new RecoverableCertPathValidatorException("no OCSP response found for certificate", null, this.f101628d.a(), this.f101628d.b());
        }
        if (u10.y().v() != 0) {
            throw new CertPathValidatorException("OCSP response failed: " + ((Object) u10.y().x()), null, this.f101628d.a(), this.f101628d.b());
        }
        Vh.k u11 = Vh.k.u(u10.x());
        if (u11.y().A(Vh.e.f27027b)) {
            try {
                Vh.a v10 = Vh.a.v(u11.x().H());
                if (!z10 && !p(v10, this.f101628d, bArr, this.f101626b.getOcspResponderCert(), this.f101627c)) {
                    return;
                }
                oh.E A10 = Vh.l.u(v10.z()).A();
                Vh.b bVar = null;
                for (int i11 = 0; i11 != A10.size(); i11++) {
                    Vh.p w10 = Vh.p.w(A10.I(i11));
                    if (c14539s.A(w10.u().z())) {
                        C14530n y10 = w10.y();
                        if (y10 != null && this.f101628d.e().after(y10.I())) {
                            throw new ExtCertPathValidatorException("OCSP response expired");
                        }
                        bVar = d(w10.u(), f(), c14539s);
                        if (bVar.equals(w10.u())) {
                            if (w10.v().g() == 0) {
                                return;
                            }
                            if (w10.v().g() != 1) {
                                throw new CertPathValidatorException("certificate revoked, details unknown", null, this.f101628d.a(), this.f101628d.b());
                            }
                            Vh.m u12 = Vh.m.u(w10.v().x());
                            throw new CertPathValidatorException("certificate revoked, reason=(" + ((Object) u12.x()) + "), date=" + ((Object) u12.y().I()), null, this.f101628d.a(), this.f101628d.b());
                        }
                    }
                }
            } catch (CertPathValidatorException e12) {
                throw e12;
            } catch (Exception e13) {
                throw new CertPathValidatorException("unable to process OCSP response", e13, this.f101628d.a(), this.f101628d.b());
            }
        }
    }

    public final Vh.b d(Vh.b bVar, C13505q c13505q, C14539s c14539s) throws CertPathValidatorException {
        return e(bVar.u(), c13505q, c14539s);
    }

    public final Vh.b e(C13486b c13486b, C13505q c13505q, C14539s c14539s) throws CertPathValidatorException {
        try {
            MessageDigest m10 = this.f101627c.m(dk.h.b(c13486b.u()));
            return new Vh.b(c13486b, new C0(m10.digest(c13505q.C().s(InterfaceC14520i.f98892a))), new C0(m10.digest(c13505q.D().z().F())), c14539s);
        } catch (Exception e10) {
            throw new CertPathValidatorException("problem creating ID: " + ((Object) e10), e10);
        }
    }

    public final C13505q f() throws CertPathValidatorException {
        try {
            return C13505q.v(this.f101628d.d().getEncoded());
        } catch (Exception e10) {
            throw new CertPathValidatorException("cannot process signing cert: " + e10.getMessage(), e10, this.f101628d.a(), this.f101628d.b());
        }
    }

    public List<CertPathValidatorException> k() {
        return null;
    }

    public Set<String> l() {
        return null;
    }

    public void m(boolean z10) throws CertPathValidatorException {
        if (z10) {
            throw new CertPathValidatorException("forward checking not supported");
        }
        this.f101628d = null;
        this.f101629e = org.bouncycastle.util.q.f("ocsp.enable");
        this.f101630f = org.bouncycastle.util.q.d("ocsp.responderURL");
    }

    public boolean n() {
        return false;
    }
}
