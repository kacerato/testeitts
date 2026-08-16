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
import java.security.cert.PKIXRevocationChecker;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;

public class G extends CertPathValidatorSpi {

    public final InterfaceC12950f f101610a;

    public final boolean f101611b;

    public G() {
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

    @Override
    public PKIXCertPathChecker engineGetRevocationChecker() {
        return new M(this.f101610a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6, types: [int] */
    /* JADX WARN: Type inference failed for: r3v8, types: [hi.b] */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.security.cert.PKIXCertPathChecker, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean] */
    @Override
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertPathValidatorException, InvalidAlgorithmParameterException {
        Hj.v vVar;
        int i10;
        List<? extends Certificate> list;
        C13228d a10;
        PublicKey cAPublicKey;
        HashSet hashSet;
        int i11;
        ArrayList arrayList;
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
            ArrayList arrayList2 = new ArrayList();
            Hj.q qVar = null;
            for (?? r52 : q10.l()) {
                r52.init(false);
                if (!(r52 instanceof PKIXRevocationChecker)) {
                    arrayList2.add(r52);
                } else {
                    if (qVar != null) {
                        throw new CertPathValidatorException("only one PKIXRevocationChecker allowed");
                    }
                    qVar = r52 instanceof Hj.q ? (Hj.q) r52 : new Q(r52);
                }
            }
            if (q10.B() && qVar == null) {
                qVar = new M(this.f101610a);
            }
            Hj.q qVar2 = qVar;
            int i13 = size + 1;
            ArrayList[] arrayListArr = new ArrayList[i13];
            for (int i14 = 0; i14 < i13; i14++) {
                arrayListArr[i14] = new ArrayList();
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add("2.5.29.32.0");
            arrayListArr[0].add(new I(new ArrayList(), 0, hashSet3, null, new HashSet(), "2.5.29.32.0", false));
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
                    int i17 = 1;
                    int size2 = certificates.size() - 1;
                    int i18 = size;
                    X509Certificate x509Certificate = null;
                    int i19 = i16;
                    ?? r53 = i13;
                    int i20 = i15;
                    I i21 = r53;
                    int i22 = r53;
                    while (size2 >= 0) {
                        int i23 = size - size2;
                        int i24 = size;
                        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(size2);
                        int i25 = size2 == certificates.size() + (-1) ? i17 : 0;
                        try {
                            a(x509Certificate2);
                            int i26 = size2;
                            List<? extends Certificate> list2 = certificates;
                            H h11 = h10;
                            Date date = t10;
                            ArrayList[] arrayListArr2 = arrayListArr;
                            Hj.v vVar2 = q10;
                            int i27 = i20;
                            ArrayList arrayList3 = arrayList2;
                            ?? r82 = i25;
                            TrustAnchor trustAnchor = f10;
                            int i28 = i17;
                            N.z(certPath, q10, t10, qVar2, i26, cAPublicKey, r82, a10, trustedCert);
                            N.A(certPath, i26, h11, this.f101611b);
                            I C10 = N.C(certPath, i26, N.B(certPath, i26, hashSet4, i21, arrayListArr2, i19, this.f101611b));
                            N.D(certPath, i26, C10, i27);
                            if (i23 != i24) {
                                if (x509Certificate2 == null || x509Certificate2.getVersion() != i28) {
                                    N.d(certPath, i26);
                                    arrayListArr = arrayListArr2;
                                    I c10 = N.c(certPath, i26, arrayListArr, C10, i28);
                                    N.e(certPath, i26, h11);
                                    int f11 = N.f(certPath, i26, i27);
                                    int g10 = N.g(certPath, i26, i28);
                                    int h12 = N.h(certPath, i26, i19);
                                    i27 = N.i(certPath, i26, f11);
                                    i12 = N.j(certPath, i26, g10);
                                    i11 = N.k(certPath, i26, h12);
                                    N.l(certPath, i26);
                                    i18 = N.n(certPath, i26, N.m(certPath, i26, i18));
                                    N.o(certPath, i26);
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
                                    arrayList = arrayList3;
                                    N.p(certPath, i26, hashSet2, arrayList);
                                    C13228d f12 = J.f(x509Certificate2);
                                    try {
                                        PublicKey o10 = C14725f.o(certPath.getCertificates(), i26, this.f101610a);
                                        C13486b i29 = C14725f.i(o10);
                                        i29.u();
                                        i29.x();
                                        i21 = c10;
                                        a10 = f12;
                                        cAPublicKey = o10;
                                        trustedCert = x509Certificate2;
                                        i20 = i27;
                                        i19 = i11;
                                        arrayList2 = arrayList;
                                        i17 = i28;
                                        f10 = trustAnchor;
                                        t10 = date;
                                        i22 = i12;
                                        h10 = h11;
                                        x509Certificate = x509Certificate2;
                                        certificates = list2;
                                        size = i24;
                                        size2 = i26 - 1;
                                        q10 = vVar2;
                                    } catch (CertPathValidatorException e11) {
                                        throw new CertPathValidatorException("Next working key could not be retrieved.", e11, certPath, i26);
                                    }
                                } else if (i23 != i28 || !x509Certificate2.equals(trustAnchor.getTrustedCert())) {
                                    throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, i26);
                                }
                            }
                            i11 = i19;
                            arrayListArr = arrayListArr2;
                            arrayList = arrayList3;
                            i12 = i28;
                            i21 = C10;
                            i18 = i18;
                            i20 = i27;
                            i19 = i11;
                            arrayList2 = arrayList;
                            i17 = i28;
                            f10 = trustAnchor;
                            t10 = date;
                            i22 = i12;
                            h10 = h11;
                            x509Certificate = x509Certificate2;
                            certificates = list2;
                            size = i24;
                            size2 = i26 - 1;
                            q10 = vVar2;
                        } catch (AnnotatedException e12) {
                            throw new CertPathValidatorException(e12.getMessage(), e12.getUnderlyingException(), certPath, size2);
                        }
                    }
                    Hj.v vVar3 = q10;
                    ArrayList arrayList4 = arrayList2;
                    TrustAnchor trustAnchor2 = f10;
                    X509Certificate x509Certificate3 = x509Certificate;
                    int i30 = size2;
                    int i31 = i30 + 1;
                    int F10 = N.F(certPath, i31, N.E(i20, x509Certificate3));
                    Set<String> criticalExtensionOIDs2 = x509Certificate3.getCriticalExtensionOIDs();
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
                    N.G(certPath, i31, arrayList4, hashSet);
                    I H10 = N.H(certPath, vVar3, p10, i31, arrayListArr, i21, hashSet4);
                    if (F10 > 0 || H10 != null) {
                        return new PKIXCertPathValidatorResult(trustAnchor2, H10, x509Certificate3.getPublicKey());
                    }
                    throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, i30);
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

    public G(boolean z10) {
        this.f101610a = new C12947c();
        this.f101611b = z10;
    }
}
