package org.bouncycastle.jce.provider;

import Hj.v;
import dk.C12947c;
import dk.InterfaceC12950f;
import fi.C13228d;
import hi.C13478B;
import hi.C13486b;
import hi.j0;
import java.security.InvalidAlgorithmParameterException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;

public class F extends CertPathValidatorSpi {

    public final InterfaceC12950f f101608a;

    public final boolean f101609b;

    public F() {
        this(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(X509Certificate x509Certificate) throws AnnotatedException {
        if (x509Certificate instanceof Ij.a) {
            try {
            } catch (RuntimeException e10) {
                e = e10;
            }
            if (((Ij.a) x509Certificate).e() != null) {
                return;
            }
            e = null;
            throw new AnnotatedException("unable to process TBSCertificate", e);
        }
        try {
            j0.w(x509Certificate.getTBSCertificate());
        } catch (IllegalArgumentException e11) {
            throw new AnnotatedException(e11.getMessage());
        } catch (CertificateEncodingException e12) {
            throw new AnnotatedException("unable to process TBSCertificate", e12);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6, types: [int] */
    /* JADX WARN: Type inference failed for: r3v8, types: [hi.b] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.security.PublicKey, int] */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v4, types: [fi.d] */
    @Override
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertPathValidatorException, InvalidAlgorithmParameterException {
        Hj.v vVar;
        int i10;
        List<? extends Certificate> list;
        C13228d a10;
        PublicKey cAPublicKey;
        HashSet hashSet;
        ArrayList[] arrayListArr;
        int i11;
        List list2;
        int i12;
        HashSet hashSet2;
        if (certPathParameters instanceof PKIXParameters) {
            v.b bVar = new v.b((PKIXParameters) certPathParameters);
            if (certPathParameters instanceof org.bouncycastle.x509.f) {
                org.bouncycastle.x509.f fVar = (org.bouncycastle.x509.f) certPathParameters;
                bVar.v(fVar.n());
                bVar.w(fVar.l());
            }
            vVar = bVar.q();
        } else if (certPathParameters instanceof Hj.u) {
            vVar = ((Hj.u) certPathParameters).a();
        } else {
            if (!(certPathParameters instanceof Hj.v)) {
                throw new InvalidAlgorithmParameterException("Parameters must be a " + PKIXParameters.class.getName() + " instance.");
            }
            vVar = (Hj.v) certPathParameters;
        }
        if (vVar.v() == null) {
            throw new InvalidAlgorithmParameterException("trustAnchors is null, this is not allowed for certification path validation.");
        }
        List<? extends Certificate> certificates = certPath.getCertificates();
        int size = certificates.size();
        ?? r32 = -1;
        if (certificates.isEmpty()) {
            throw new CertPathValidatorException("Certification path is empty.", null, certPath, -1);
        }
        Date t10 = C14725f.t(vVar, new Date());
        Set p10 = vVar.p();
        try {
            TrustAnchor f10 = C14725f.f((X509Certificate) certificates.get(certificates.size() - 1), vVar.v(), vVar.t());
            if (f10 == null) {
                i10 = 1;
                list = certificates;
                try {
                    throw new CertPathValidatorException("Trust anchor for certification path not found.", null, certPath, -1);
                } catch (AnnotatedException e10) {
                    e = e10;
                    throw new CertPathValidatorException(e.getMessage(), e.getUnderlyingException(), certPath, list.size() - i10);
                }
            }
            a(f10.getTrustedCert());
            Hj.v q10 = new v.b(vVar).t(f10).q();
            int i13 = size + 1;
            ArrayList[] arrayListArr2 = new ArrayList[i13];
            for (int i14 = 0; i14 < i13; i14++) {
                arrayListArr2[i14] = new ArrayList();
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add("2.5.29.32.0");
            arrayListArr2[0].add(new I(new ArrayList(), 0, hashSet3, null, new HashSet(), "2.5.29.32.0", false));
            H h10 = new H();
            HashSet hashSet4 = new HashSet();
            int i15 = q10.z() ? 0 : i13;
            int i16 = q10.y() ? 0 : i13;
            if (q10.A()) {
                i13 = 0;
            }
            X509Certificate trustedCert = f10.getTrustedCert();
            try {
                if (trustedCert != null) {
                    a10 = J.f(trustedCert);
                    cAPublicKey = trustedCert.getPublicKey();
                } else {
                    a10 = J.a(f10);
                    cAPublicKey = f10.getCAPublicKey();
                }
                try {
                    r32 = C14725f.i(cAPublicKey);
                    r32.u();
                    r32.x();
                    if (q10.u() != null && !q10.u().Z2((X509Certificate) certificates.get(0))) {
                        throw new ExtCertPathValidatorException("Target certificate in certification path does not match targetConstraints.", null, certPath, 0);
                    }
                    List l10 = q10.l();
                    Iterator it = l10.iterator();
                    while (it.hasNext()) {
                        ((PKIXCertPathChecker) it.next()).init(false);
                    }
                    K k10 = q10.B() ? new K(this.f101608a) : null;
                    int i17 = 1;
                    TrustAnchor trustAnchor = f10;
                    int i18 = size;
                    X509Certificate x509Certificate = null;
                    ?? r52 = i13;
                    int i19 = i16;
                    I i20 = r52;
                    int i21 = i15;
                    int size2 = certificates.size() - 1;
                    int i22 = i21;
                    int i23 = r52;
                    while (size2 >= 0) {
                        int i24 = size - size2;
                        int i25 = size;
                        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(size2);
                        int i26 = size2 == certificates.size() + (-1) ? i17 : 0;
                        try {
                            a(x509Certificate2);
                            List<? extends Certificate> list3 = certificates;
                            int i27 = i22;
                            int i28 = size2;
                            Date date = t10;
                            Date date2 = t10;
                            K k11 = k10;
                            K k12 = k10;
                            H h11 = h10;
                            ?? r72 = cAPublicKey;
                            ArrayList[] arrayListArr3 = arrayListArr2;
                            ?? r82 = i26;
                            TrustAnchor trustAnchor2 = trustAnchor;
                            Hj.v vVar2 = q10;
                            ?? r92 = a10;
                            List list4 = l10;
                            int i29 = i17;
                            N.z(certPath, q10, date, k11, i28, r72, r82, r92, trustedCert);
                            N.A(certPath, i28, h11, this.f101609b);
                            I C10 = N.C(certPath, i28, N.B(certPath, i28, hashSet4, i20, arrayListArr3, r72, this.f101609b));
                            N.D(certPath, i28, C10, i27);
                            if (r92 != i25) {
                                if (x509Certificate2 == null || x509Certificate2.getVersion() != i29) {
                                    N.d(certPath, i28);
                                    arrayListArr = arrayListArr3;
                                    I c10 = N.c(certPath, i28, arrayListArr, C10, i29);
                                    N.e(certPath, i28, h11);
                                    int f11 = N.f(certPath, i28, i27);
                                    int g10 = N.g(certPath, i28, i29);
                                    int h12 = N.h(certPath, i28, r72);
                                    i12 = N.i(certPath, i28, f11);
                                    i11 = N.j(certPath, i28, g10);
                                    int k13 = N.k(certPath, i28, h12);
                                    N.l(certPath, i28);
                                    i18 = N.n(certPath, i28, N.m(certPath, i28, i18));
                                    N.o(certPath, i28);
                                    Set<String> criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                    if (criticalExtensionOIDs != null) {
                                        hashSet2 = new HashSet(criticalExtensionOIDs);
                                        hashSet2.remove(N.f101651n);
                                        hashSet2.remove(N.f101639b);
                                        hashSet2.remove(N.f101640c);
                                        hashSet2.remove(N.f101641d);
                                        hashSet2.remove(N.f101642e);
                                        hashSet2.remove(N.f101644g);
                                        hashSet2.remove(N.f101645h);
                                        hashSet2.remove(N.f101646i);
                                        hashSet2.remove(N.f101648k);
                                        hashSet2.remove(N.f101649l);
                                    } else {
                                        hashSet2 = new HashSet();
                                    }
                                    list2 = list4;
                                    N.p(certPath, i28, hashSet2, list2);
                                    C13228d f12 = J.f(x509Certificate2);
                                    try {
                                        PublicKey o10 = C14725f.o(certPath.getCertificates(), i28, this.f101608a);
                                        C13486b i30 = C14725f.i(o10);
                                        i30.u();
                                        i30.x();
                                        i20 = c10;
                                        i19 = k13;
                                        a10 = f12;
                                        cAPublicKey = o10;
                                        trustedCert = x509Certificate2;
                                        arrayListArr2 = arrayListArr;
                                        l10 = list2;
                                        x509Certificate = x509Certificate2;
                                        i17 = i29;
                                        certificates = list3;
                                        t10 = date2;
                                        q10 = vVar2;
                                        size = i25;
                                        i22 = i12;
                                        trustAnchor = trustAnchor2;
                                        i23 = i11;
                                        size2 = i28 - 1;
                                        h10 = h11;
                                        k10 = k12;
                                    } catch (CertPathValidatorException e11) {
                                        throw new CertPathValidatorException("Next working key could not be retrieved.", e11, certPath, i28);
                                    }
                                } else if (r92 != i29 || !x509Certificate2.equals(trustAnchor2.getTrustedCert())) {
                                    throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, i28);
                                }
                            }
                            int i31 = i18;
                            arrayListArr = arrayListArr3;
                            i11 = i29;
                            list2 = list4;
                            i20 = C10;
                            i19 = i31;
                            i18 = i31;
                            i12 = i27;
                            arrayListArr2 = arrayListArr;
                            l10 = list2;
                            x509Certificate = x509Certificate2;
                            i17 = i29;
                            certificates = list3;
                            t10 = date2;
                            q10 = vVar2;
                            size = i25;
                            i22 = i12;
                            trustAnchor = trustAnchor2;
                            i23 = i11;
                            size2 = i28 - 1;
                            h10 = h11;
                            k10 = k12;
                        } catch (AnnotatedException e12) {
                            throw new CertPathValidatorException(e12.getMessage(), e12.getUnderlyingException(), certPath, size2);
                        }
                    }
                    TrustAnchor trustAnchor3 = trustAnchor;
                    Hj.v vVar3 = q10;
                    ArrayList[] arrayListArr4 = arrayListArr2;
                    List list5 = l10;
                    int i32 = size2;
                    int i33 = i32 + 1;
                    int F10 = N.F(certPath, i33, N.E(i22, x509Certificate));
                    Set<String> criticalExtensionOIDs2 = x509Certificate.getCriticalExtensionOIDs();
                    if (criticalExtensionOIDs2 != null) {
                        hashSet = new HashSet(criticalExtensionOIDs2);
                        hashSet.remove(N.f101651n);
                        hashSet.remove(N.f101639b);
                        hashSet.remove(N.f101640c);
                        hashSet.remove(N.f101641d);
                        hashSet.remove(N.f101642e);
                        hashSet.remove(N.f101644g);
                        hashSet.remove(N.f101645h);
                        hashSet.remove(N.f101646i);
                        hashSet.remove(N.f101648k);
                        hashSet.remove(N.f101649l);
                        hashSet.remove(N.f101647j);
                        hashSet.remove(C13478B.f90549y.J());
                    } else {
                        hashSet = new HashSet();
                    }
                    N.G(certPath, i33, list5, hashSet);
                    I H10 = N.H(certPath, vVar3, p10, i33, arrayListArr4, i20, hashSet4);
                    if (F10 > 0 || H10 != null) {
                        return new PKIXCertPathValidatorResult(trustAnchor3, H10, x509Certificate.getPublicKey());
                    }
                    throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, i32);
                } catch (CertPathValidatorException e13) {
                    throw new ExtCertPathValidatorException("Algorithm identifier of public key of trust anchor could not be read.", e13, certPath, -1);
                }
            } catch (RuntimeException e14) {
                throw new ExtCertPathValidatorException("Subject of trust anchor could not be (re)encoded.", e14, certPath, r32);
            }
        } catch (AnnotatedException e15) {
            e = e15;
            i10 = 1;
            list = certificates;
        }
    }

    public F(boolean z10) {
        this.f101608a = new C12947c();
        this.f101609b = z10;
    }
}
