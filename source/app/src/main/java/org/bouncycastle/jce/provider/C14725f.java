package org.bouncycastle.jce.provider;

import Hj.p;
import Hj.t;
import dk.InterfaceC12950f;
import fi.C13228d;
import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13486b;
import hi.C13499k;
import hi.C13501m;
import hi.C13512y;
import hi.C13513z;
import j3.C13804a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.URI;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateParsingException;
import java.security.cert.PolicyQualifierInfo;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14503A;
import oh.C14522j;
import oh.C14530n;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.jce.exception.ExtCertPathBuilderException;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.util.StoreException;
import org.eclipse.jdt.internal.core.JavadocConstants;
import uj.InterfaceC15638a;

public class C14725f {

    public static final String f101775n = "2.5.29.32.0";

    public static final int f101777p = 5;

    public static final int f101778q = 6;

    public static final String f101762a = C13478B.f90545u.J();

    public static final String f101763b = C13478B.f90535k.J();

    public static final String f101764c = C13478B.f90546v.J();

    public static final String f101765d = C13478B.f90533i.J();

    public static final String f101766e = C13478B.f90543s.J();

    public static final String f101767f = C13478B.f90531g.J();

    public static final String f101768g = C13478B.f90515A.J();

    public static final String f101769h = C13478B.f90541q.J();

    public static final String f101770i = C13478B.f90540p.J();

    public static final String f101771j = C13478B.f90548x.J();

    public static final String f101772k = C13478B.f90550z.J();

    public static final String f101773l = C13478B.f90544t.J();

    public static final String f101774m = C13478B.f90547w.J();

    public static final String f101776o = C13478B.f90536l.J();

    public static final String[] f101779r = {C13804a.f92557d, "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    public static boolean A(int i10, List[] listArr, C14549x c14549x, Set set) {
        List list = listArr[i10 - 1];
        for (int i11 = 0; i11 < list.size(); i11++) {
            I i12 = (I) list.get(i11);
            if (i12.getExpectedPolicies().contains(c14549x.J())) {
                HashSet hashSet = new HashSet();
                hashSet.add(c14549x.J());
                I i13 = new I(new ArrayList(), i10, hashSet, i12, set, c14549x.J(), false);
                i12.a(i13);
                listArr[i10].add(i13);
                return true;
            }
        }
        return false;
    }

    public static void B(int i10, List[] listArr, C14549x c14549x, Set set) {
        List list = listArr[i10 - 1];
        for (int i11 = 0; i11 < list.size(); i11++) {
            I i12 = (I) list.get(i11);
            if ("2.5.29.32.0".equals(i12.getValidPolicy())) {
                HashSet hashSet = new HashSet();
                hashSet.add(c14549x.J());
                I i13 = new I(new ArrayList(), i10, hashSet, i12, set, c14549x.J(), false);
                i12.a(i13);
                listArr[i10].add(i13);
                return;
            }
        }
    }

    public static I C(I i10, List[] listArr, I i11) {
        I i12 = (I) i11.getParent();
        if (i10 == null) {
            return null;
        }
        if (i12 != null) {
            i12.d(i11);
            D(listArr, i11);
            return i10;
        }
        for (int i13 = 0; i13 < listArr.length; i13++) {
            listArr[i13] = new ArrayList();
        }
        return null;
    }

    public static void D(List[] listArr, I i10) {
        listArr[i10.getDepth()].remove(i10);
        if (i10.c()) {
            Iterator children = i10.getChildren();
            while (children.hasNext()) {
                D(listArr, (I) children.next());
            }
        }
    }

    public static void E(X509Certificate x509Certificate, PublicKey publicKey, String str) throws GeneralSecurityException {
        if (str == null) {
            x509Certificate.verify(publicKey);
        } else {
            x509Certificate.verify(publicKey, str);
        }
    }

    public static void a(Hj.r rVar, Set set, Object obj) throws RecoverableCertPathValidatorException {
        if (set.isEmpty()) {
            if (obj instanceof org.bouncycastle.x509.l) {
                throw new RecoverableCertPathValidatorException("No CRLs found for issuer \"" + ((Object) ((org.bouncycastle.x509.l) obj).f().b()[0]) + JavadocConstants.ANCHOR_PREFIX_END, null, rVar.a(), rVar.b());
            }
            throw new RecoverableCertPathValidatorException("No CRLs found for issuer \"" + gi.e.f89996V.g(J.e((X509Certificate) obj)) + JavadocConstants.ANCHOR_PREFIX_END, null, rVar.a(), rVar.b());
        }
    }

    public static void b(Set set, Hj.t tVar, List list) throws AnnotatedException {
        for (Object obj : list) {
            if (obj instanceof org.bouncycastle.util.t) {
                try {
                    set.addAll(((org.bouncycastle.util.t) obj).a(tVar));
                } catch (StoreException e10) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e10);
                }
            } else {
                try {
                    set.addAll(Hj.t.c(tVar, (CertStore) obj));
                } catch (CertStoreException e11) {
                    throw new AnnotatedException("Problem while picking certificates from certificate store.", e11);
                }
            }
        }
    }

    public static Collection c(X509Certificate x509Certificate, List<CertStore> list, List<Hj.s> list2) throws AnnotatedException {
        byte[] A10;
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(J.e(x509Certificate).getEncoded());
            try {
                byte[] extensionValue = x509Certificate.getExtensionValue(f101774m);
                if (extensionValue != null && (A10 = C13499k.y(AbstractC14551y.F(extensionValue).H()).A()) != null) {
                    x509CertSelector.setSubjectKeyIdentifier(new C0(A10).getEncoded());
                }
            } catch (Exception unused) {
            }
            Hj.t<? extends Certificate> a10 = new t.b(x509CertSelector).a();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                b(linkedHashSet, a10, list);
                b(linkedHashSet, a10, list2);
                return linkedHashSet;
            } catch (AnnotatedException e10) {
                throw new AnnotatedException("Issuer certificate cannot be searched.", e10);
            }
        } catch (Exception e11) {
            throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate could not be set.", e11);
        }
    }

    public static Collection d(Hj.u uVar) throws CertPathBuilderException {
        Hj.v a10 = uVar.a();
        Hj.t u10 = a10.u();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            b(linkedHashSet, u10, a10.n());
            b(linkedHashSet, u10, a10.m());
            if (!linkedHashSet.isEmpty()) {
                return linkedHashSet;
            }
            Certificate b10 = u10.b();
            if (b10 != null) {
                return Collections.singleton(b10);
            }
            throw new CertPathBuilderException("No certificate found matching targetConstraints.");
        } catch (AnnotatedException e10) {
            throw new ExtCertPathBuilderException("Error finding target certificate.", e10);
        }
    }

    public static TrustAnchor e(X509Certificate x509Certificate, Set set) throws AnnotatedException {
        return f(x509Certificate, set, null);
    }

    public static TrustAnchor f(X509Certificate x509Certificate, Set set, String str) throws AnnotatedException {
        X509CertSelector x509CertSelector = new X509CertSelector();
        X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
        x509CertSelector.setSubject(issuerX500Principal);
        Iterator it = set.iterator();
        TrustAnchor trustAnchor = null;
        Exception e10 = null;
        C13228d c13228d = null;
        PublicKey publicKey = null;
        while (it.hasNext() && trustAnchor == null) {
            trustAnchor = (TrustAnchor) it.next();
            if (trustAnchor.getTrustedCert() != null) {
                if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                    publicKey = trustAnchor.getTrustedCert().getPublicKey();
                }
                trustAnchor = null;
            } else {
                if (trustAnchor.getCA() != null && trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null) {
                    if (c13228d == null) {
                        c13228d = C13228d.x(issuerX500Principal.getEncoded());
                    }
                    try {
                        if (c13228d.equals(C13228d.x(trustAnchor.getCA().getEncoded()))) {
                            publicKey = trustAnchor.getCAPublicKey();
                        }
                    } catch (IllegalArgumentException unused) {
                    }
                }
                trustAnchor = null;
            }
            if (publicKey != null) {
                try {
                    E(x509Certificate, publicKey, str);
                } catch (Exception e11) {
                    e10 = e11;
                    trustAnchor = null;
                    publicKey = null;
                }
            }
        }
        if (trustAnchor != null || e10 == null) {
            return trustAnchor;
        }
        throw new AnnotatedException("TrustAnchor found but certificate validation failed.", e10);
    }

    public static List<Hj.s> g(byte[] bArr, Map<C13481E, Hj.s> map) throws CertificateParsingException {
        if (bArr == null) {
            return Collections.EMPTY_LIST;
        }
        C13481E[] y10 = C13482F.w(AbstractC14551y.F(bArr).H()).y();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 != y10.length; i10++) {
            Hj.s sVar = map.get(y10[i10]);
            if (sVar != null) {
                arrayList.add(sVar);
            }
        }
        return arrayList;
    }

    public static List<Hj.o> h(C13501m c13501m, Map<C13481E, Hj.o> map, Date date, InterfaceC12950f interfaceC12950f) throws AnnotatedException {
        if (c13501m == null) {
            return Collections.EMPTY_LIST;
        }
        try {
            C13512y[] v10 = c13501m.v();
            ArrayList arrayList = new ArrayList();
            for (C13512y c13512y : v10) {
                C13513z x10 = c13512y.x();
                if (x10 != null && x10.y() == 0) {
                    for (C13481E c13481e : C13482F.w(x10.x()).y()) {
                        Hj.o oVar = map.get(c13481e);
                        if (oVar != null) {
                            arrayList.add(oVar);
                        }
                    }
                }
            }
            if (arrayList.isEmpty() && org.bouncycastle.util.q.f("org.bouncycastle.x509.enableCRLDP")) {
                try {
                    CertificateFactory r10 = interfaceC12950f.r("X.509");
                    for (C13512y c13512y2 : v10) {
                        C13513z x11 = c13512y2.x();
                        if (x11 != null && x11.y() == 0) {
                            C13481E[] y10 = C13482F.w(x11.x()).y();
                            int i10 = 0;
                            while (true) {
                                if (i10 < y10.length) {
                                    C13481E c13481e2 = y10[i10];
                                    if (c13481e2.g() == 6) {
                                        try {
                                            Hj.o a10 = C14728i.a(r10, date, new URI(((oh.J) c13481e2.x()).getString()));
                                            if (a10 != null) {
                                                arrayList.add(a10);
                                            }
                                        } catch (Exception unused) {
                                            continue;
                                        }
                                    }
                                    i10++;
                                }
                            }
                        }
                    }
                } catch (Exception e10) {
                    throw new AnnotatedException("cannot create certificate factory: " + e10.getMessage(), e10);
                }
            }
            return arrayList;
        } catch (Exception e11) {
            throw new AnnotatedException("Distribution points could not be read.", e11);
        }
    }

    public static C13486b i(PublicKey publicKey) throws CertPathValidatorException {
        try {
            return hi.h0.w(publicKey.getEncoded()).u();
        } catch (Exception e10) {
            throw new ExtCertPathValidatorException("Subject public key cannot be decoded.", e10);
        }
    }

    public static void j(C13512y c13512y, Collection collection, X509CRLSelector x509CRLSelector) throws AnnotatedException {
        ArrayList arrayList = new ArrayList();
        if (c13512y.v() != null) {
            C13481E[] y10 = c13512y.v().y();
            for (int i10 = 0; i10 < y10.length; i10++) {
                if (y10[i10].g() == 4) {
                    try {
                        arrayList.add(C13228d.x(y10[i10].x().r().getEncoded()));
                    } catch (IOException e10) {
                        throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", e10);
                    }
                }
            }
        } else {
            if (c13512y.x() == null) {
                throw new AnnotatedException("CRL issuer is omitted from distribution point but no distributionPoint field present.");
            }
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        Iterator<E> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            try {
                x509CRLSelector.addIssuerName(((C13228d) it2.next()).getEncoded());
            } catch (IOException e11) {
                throw new AnnotatedException("Cannot decode CRL issuer information.", e11);
            }
        }
    }

    public static void k(Date date, X509CRL x509crl, Object obj, C14726g c14726g) throws AnnotatedException {
        X509CRLEntry revokedCertificate;
        C14522j c14522j;
        try {
            if (U.d(x509crl)) {
                revokedCertificate = x509crl.getRevokedCertificate(r(obj));
                if (revokedCertificate == null) {
                    return;
                }
                X500Principal certificateIssuer = revokedCertificate.getCertificateIssuer();
                if (!J.c(obj).equals(certificateIssuer == null ? J.d(x509crl) : J.h(certificateIssuer))) {
                    return;
                }
            } else if (!J.c(obj).equals(J.d(x509crl)) || (revokedCertificate = x509crl.getRevokedCertificate(r(obj))) == null) {
                return;
            }
            if (!revokedCertificate.hasExtensions()) {
                c14522j = null;
            } else {
                if (revokedCertificate.hasUnsupportedCriticalExtension()) {
                    throw new AnnotatedException("CRL entry has unsupported critical extensions.");
                }
                try {
                    c14522j = C14522j.F(n(revokedCertificate, C13478B.f90537m.J()));
                } catch (Exception e10) {
                    throw new AnnotatedException("Reason code CRL entry extension could not be decoded.", e10);
                }
            }
            int L10 = c14522j == null ? 0 : c14522j.L();
            if (date.getTime() >= revokedCertificate.getRevocationDate().getTime() || L10 == 0 || L10 == 1 || L10 == 2 || L10 == 10) {
                c14726g.c(L10);
                c14726g.d(revokedCertificate.getRevocationDate());
            }
        } catch (CRLException e11) {
            throw new AnnotatedException("Failed check for indirect CRL.", e11);
        }
    }

    public static Set l(Hj.r rVar, C13512y c13512y, Object obj, Hj.v vVar, Date date) throws AnnotatedException, RecoverableCertPathValidatorException {
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        try {
            HashSet hashSet = new HashSet();
            hashSet.add(J.c(obj));
            j(c13512y, hashSet, x509CRLSelector);
            if (obj instanceof X509Certificate) {
                x509CRLSelector.setCertificateChecking((X509Certificate) obj);
            }
            Set a10 = C.a(new p.b(x509CRLSelector).h(true).g(), date, vVar.m(), vVar.k());
            a(rVar, a10, obj);
            return a10;
        } catch (AnnotatedException e10) {
            throw new AnnotatedException("Could not get issuer information from distribution point.", e10);
        }
    }

    public static Set m(Date date, X509CRL x509crl, List<CertStore> list, List<Hj.o> list2, InterfaceC12950f interfaceC12950f) throws AnnotatedException {
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        try {
            x509CRLSelector.addIssuerName(J.d(x509crl).getEncoded());
            try {
                oh.B n10 = n(x509crl, f101776o);
                BigInteger H10 = n10 != null ? C14539s.F(n10).H() : null;
                try {
                    byte[] extensionValue = x509crl.getExtensionValue(f101769h);
                    x509CRLSelector.setMinCRLNumber(H10 != null ? H10.add(BigInteger.valueOf(1L)) : null);
                    p.b bVar = new p.b(x509CRLSelector);
                    bVar.j(extensionValue);
                    bVar.k(true);
                    bVar.l(H10);
                    Hj.p<? extends CRL> g10 = bVar.g();
                    Set<X509CRL> a10 = C.a(g10, date, list, list2);
                    if (a10.isEmpty() && org.bouncycastle.util.q.f("org.bouncycastle.x509.enableCRLDP")) {
                        try {
                            CertificateFactory r10 = interfaceC12950f.r("X.509");
                            C13512y[] v10 = C13501m.w(extensionValue).v();
                            for (int i10 = 0; i10 < v10.length; i10++) {
                                C13513z x10 = v10[i10].x();
                                if (x10 != null && x10.y() == 0) {
                                    C13481E[] y10 = C13482F.w(x10.x()).y();
                                    int i11 = 0;
                                    while (true) {
                                        if (i11 < y10.length) {
                                            C13481E c13481e = y10[i10];
                                            if (c13481e.g() == 6) {
                                                try {
                                                    Hj.o a11 = C14728i.a(r10, date, new URI(((oh.J) c13481e.x()).getString()));
                                                    if (a11 != null) {
                                                        a10 = C.a(g10, date, Collections.EMPTY_LIST, Collections.singletonList(a11));
                                                    }
                                                } catch (Exception unused) {
                                                    continue;
                                                }
                                            }
                                            i11++;
                                        }
                                    }
                                }
                            }
                        } catch (Exception e10) {
                            throw new AnnotatedException("cannot create certificate factory: " + e10.getMessage(), e10);
                        }
                    }
                    HashSet hashSet = new HashSet();
                    for (X509CRL x509crl2 : a10) {
                        if (v(x509crl2)) {
                            hashSet.add(x509crl2);
                        }
                    }
                    return hashSet;
                } catch (Exception e11) {
                    throw new AnnotatedException("Issuing distribution point extension value could not be read.", e11);
                }
            } catch (Exception e12) {
                throw new AnnotatedException("CRL number extension could not be extracted from CRL.", e12);
            }
        } catch (IOException e13) {
            throw new AnnotatedException("Cannot extract issuer from CRL.", e13);
        }
    }

    public static oh.B n(X509Extension x509Extension, String str) throws AnnotatedException {
        byte[] extensionValue = x509Extension.getExtensionValue(str);
        if (extensionValue == null) {
            return null;
        }
        return p(str, extensionValue);
    }

    public static PublicKey o(List list, int i10, InterfaceC12950f interfaceC12950f) throws CertPathValidatorException {
        DSAPublicKey dSAPublicKey;
        PublicKey publicKey = ((Certificate) list.get(i10)).getPublicKey();
        if (!(publicKey instanceof DSAPublicKey)) {
            return publicKey;
        }
        DSAPublicKey dSAPublicKey2 = (DSAPublicKey) publicKey;
        if (dSAPublicKey2.getParams() != null) {
            return dSAPublicKey2;
        }
        do {
            i10++;
            if (i10 >= list.size()) {
                throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
            }
            PublicKey publicKey2 = ((X509Certificate) list.get(i10)).getPublicKey();
            if (!(publicKey2 instanceof DSAPublicKey)) {
                throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
            }
            dSAPublicKey = (DSAPublicKey) publicKey2;
        } while (dSAPublicKey.getParams() == null);
        DSAParams params = dSAPublicKey.getParams();
        try {
            return interfaceC12950f.b("DSA").generatePublic(new DSAPublicKeySpec(dSAPublicKey2.getY(), params.getP(), params.getQ(), params.getG()));
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    public static oh.B p(String str, byte[] bArr) throws AnnotatedException {
        try {
            return oh.B.B(AbstractC14551y.F(bArr).H());
        } catch (Exception e10) {
            throw new AnnotatedException("exception processing extension " + str, e10);
        }
    }

    public static final Set q(oh.E e10) throws CertPathValidatorException {
        HashSet hashSet = new HashSet();
        if (e10 == null) {
            return hashSet;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C14503A b10 = C14503A.b(byteArrayOutputStream);
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            try {
                b10.x((InterfaceC14516g) J10.nextElement());
                hashSet.add(new PolicyQualifierInfo(byteArrayOutputStream.toByteArray()));
                byteArrayOutputStream.reset();
            } catch (IOException e11) {
                throw new ExtCertPathValidatorException("Policy qualifier info cannot be decoded.", e11);
            }
        }
        return hashSet;
    }

    public static BigInteger r(Object obj) {
        return ((X509Certificate) obj).getSerialNumber();
    }

    public static Date s(Date date, int i10, CertPath certPath, int i11) throws AnnotatedException {
        if (1 != i10 || i11 <= 0) {
            return date;
        }
        int i12 = i11 - 1;
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i12);
        if (i12 == 0) {
            try {
                byte[] extensionValue = ((X509Certificate) certPath.getCertificates().get(i12)).getExtensionValue(InterfaceC15638a.f120765e.J());
                C14530n J10 = extensionValue != null ? C14530n.J(oh.B.B(extensionValue)) : null;
                if (J10 != null) {
                    try {
                        return J10.I();
                    } catch (ParseException e10) {
                        throw new AnnotatedException("Date from date of cert gen extension could not be parsed.", e10);
                    }
                }
            } catch (IOException unused) {
                throw new AnnotatedException("Date of cert gen extension could not be read.");
            } catch (IllegalArgumentException unused2) {
                throw new AnnotatedException("Date of cert gen extension could not be read.");
            }
        }
        return x509Certificate.getNotBefore();
    }

    public static Date t(Hj.v vVar, Date date) {
        Date w10 = vVar.w();
        return w10 == null ? date : w10;
    }

    public static boolean u(Set set) {
        return set == null || set.contains("2.5.29.32.0") || set.isEmpty();
    }

    public static boolean v(X509CRL x509crl) {
        Set<String> criticalExtensionOIDs = x509crl.getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        return criticalExtensionOIDs.contains(N.f101644g);
    }

    public static boolean w(X509Certificate x509Certificate, Set set, String str) throws AnnotatedException {
        try {
            return f(x509Certificate, set, str) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean x(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectDN().equals(x509Certificate.getIssuerDN());
    }

    public static void y(int i10, List[] listArr, String str, Map map, X509Certificate x509Certificate) throws AnnotatedException, CertPathValidatorException {
        Set set;
        for (I i11 : listArr[i10]) {
            if (i11.getValidPolicy().equals(str)) {
                i11.f101615c = (Set) map.get(str);
                return;
            }
        }
        for (I i12 : listArr[i10]) {
            if ("2.5.29.32.0".equals(i12.getValidPolicy())) {
                try {
                    Enumeration J10 = oh.E.G(n(x509Certificate, f101762a)).J();
                    while (true) {
                        if (!J10.hasMoreElements()) {
                            set = null;
                            break;
                        }
                        try {
                            hi.W u10 = hi.W.u(J10.nextElement());
                            if ("2.5.29.32.0".equals(u10.v().J())) {
                                try {
                                    set = q(u10.x());
                                    break;
                                } catch (CertPathValidatorException e10) {
                                    throw new ExtCertPathValidatorException("Policy qualifier info set could not be built.", e10);
                                }
                            }
                        } catch (Exception e11) {
                            throw new AnnotatedException("Policy information cannot be decoded.", e11);
                        }
                    }
                    Set set2 = set;
                    boolean contains = x509Certificate.getCriticalExtensionOIDs() != null ? x509Certificate.getCriticalExtensionOIDs().contains(f101762a) : false;
                    I i13 = (I) i12.getParent();
                    if ("2.5.29.32.0".equals(i13.getValidPolicy())) {
                        I i14 = new I(new ArrayList(), i10, (Set) map.get(str), i13, set2, str, contains);
                        i13.a(i14);
                        listArr[i10].add(i14);
                        return;
                    }
                    return;
                } catch (Exception e12) {
                    throw new AnnotatedException("Certificate policies cannot be decoded.", e12);
                }
            }
        }
    }

    public static I z(int i10, List[] listArr, String str, I i11) {
        int i12;
        Iterator it = listArr[i10].iterator();
        while (it.hasNext()) {
            I i13 = (I) it.next();
            if (i13.getValidPolicy().equals(str)) {
                ((I) i13.getParent()).d(i13);
                it.remove();
                for (int i14 = i10 - 1; i14 >= 0; i14--) {
                    List list = listArr[i14];
                    while (i12 < list.size()) {
                        I i15 = (I) list.get(i12);
                        i12 = (i15.c() || (i11 = C(i11, listArr, i15)) != null) ? i12 + 1 : 0;
                    }
                }
            }
        }
        return i11;
    }
}
