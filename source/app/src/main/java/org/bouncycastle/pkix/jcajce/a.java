package org.bouncycastle.pkix.jcajce;

import Hj.t;
import hi.C13478B;
import hi.C13486b;
import hi.L;
import hi.W;
import hi.h0;
import j3.C13804a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.cert.CRLException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyQualifierInfo;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oh.AbstractC14551y;
import oh.B;
import oh.C14503A;
import oh.C14522j;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import oh.r;
import org.bouncycastle.util.StoreException;

public class a {

    public static final String f101999n = "2.5.29.32.0";

    public static final int f102001p = 5;

    public static final int f102002q = 6;

    public static final String f101986a = C13478B.f90545u.J();

    public static final String f101987b = C13478B.f90535k.J();

    public static final String f101988c = C13478B.f90546v.J();

    public static final String f101989d = C13478B.f90533i.J();

    public static final String f101990e = C13478B.f90543s.J();

    public static final String f101991f = C13478B.f90531g.J();

    public static final String f101992g = C13478B.f90515A.J();

    public static final String f101993h = C13478B.f90541q.J();

    public static final String f101994i = C13478B.f90540p.J();

    public static final String f101995j = C13478B.f90548x.J();

    public static final String f101996k = C13478B.f90550z.J();

    public static final String f101997l = C13478B.f90544t.J();

    public static final String f101998m = C13478B.f90547w.J();

    public static final String f102000o = C13478B.f90536l.J();

    public static final String[] f102003r = {C13804a.f92557d, "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    public static Collection a(t tVar, List list) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof org.bouncycastle.util.t) {
                try {
                    hashSet.addAll(((org.bouncycastle.util.t) obj).a(tVar));
                } catch (StoreException e10) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e10);
                }
            } else {
                try {
                    hashSet.addAll(t.c(tVar, (CertStore) obj));
                } catch (CertStoreException e11) {
                    throw new AnnotatedException("Problem while picking certificates from certificate store.", e11);
                }
            }
        }
        return hashSet;
    }

    public static Collection b(l lVar, List list) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            for (Object obj : list) {
                if (obj instanceof org.bouncycastle.util.t) {
                    try {
                        for (Object obj2 : ((org.bouncycastle.util.t) obj).a(lVar)) {
                            if (obj2 instanceof org.bouncycastle.util.g) {
                                obj2 = certificateFactory.generateCertificate(new ByteArrayInputStream(((org.bouncycastle.util.g) obj2).getEncoded()));
                            } else if (!(obj2 instanceof Certificate)) {
                                throw new AnnotatedException("Unknown object found in certificate store.");
                            }
                            hashSet.add(obj2);
                        }
                    } catch (IOException e10) {
                        throw new AnnotatedException("Problem while extracting certificates from X.509 store.", e10);
                    } catch (CertificateException e11) {
                        throw new AnnotatedException("Problem while extracting certificates from X.509 store.", e11);
                    } catch (StoreException e12) {
                        throw new AnnotatedException("Problem while picking certificates from X.509 store.", e12);
                    }
                } else {
                    try {
                        hashSet.addAll(((CertStore) obj).getCertificates(lVar));
                    } catch (CertStoreException e13) {
                        throw new AnnotatedException("Problem while picking certificates from certificate store.", e13);
                    }
                }
            }
            return hashSet;
        } catch (CertificateException e14) {
            throw new AnnotatedException(e14.getMessage(), e14);
        }
    }

    public static C13486b c(PublicKey publicKey) throws CertPathValidatorException {
        try {
            return h0.w(new r(publicKey.getEncoded()).k()).u();
        } catch (Exception e10) {
            throw new CertPathValidatorException("Subject public key cannot be decoded.", e10);
        }
    }

    public static void d(Date date, X509CRL x509crl, Object obj, b bVar) throws AnnotatedException {
        X509CRLEntry revokedCertificate;
        C14522j F10;
        try {
            if (p(x509crl)) {
                revokedCertificate = x509crl.getRevokedCertificate(k(obj));
                if (revokedCertificate == null) {
                    return;
                }
                X500Principal certificateIssuer = revokedCertificate.getCertificateIssuer();
                if (certificateIssuer == null) {
                    certificateIssuer = g(x509crl);
                }
                if (!e(obj).equals(certificateIssuer)) {
                    return;
                }
            } else if (!e(obj).equals(g(x509crl)) || (revokedCertificate = x509crl.getRevokedCertificate(k(obj))) == null) {
                return;
            }
            if (revokedCertificate.hasExtensions()) {
                try {
                    F10 = C14522j.F(f(revokedCertificate, C13478B.f90537m.J()));
                } catch (Exception e10) {
                    throw new AnnotatedException("Reason code CRL entry extension could not be decoded.", e10);
                }
            } else {
                F10 = null;
            }
            int intValue = F10 == null ? 0 : F10.H().intValue();
            if (date.getTime() >= revokedCertificate.getRevocationDate().getTime() || intValue == 0 || intValue == 1 || intValue == 2 || intValue == 10) {
                bVar.c(intValue);
                bVar.d(revokedCertificate.getRevocationDate());
            }
        } catch (CRLException e11) {
            throw new AnnotatedException("Failed check for indirect CRL.", e11);
        }
    }

    public static X500Principal e(Object obj) {
        if (obj instanceof X509Certificate) {
            return ((X509Certificate) obj).getIssuerX500Principal();
        }
        throw new IllegalArgumentException("unknown certificate type");
    }

    public static B f(X509Extension x509Extension, String str) throws AnnotatedException {
        byte[] extensionValue = x509Extension.getExtensionValue(str);
        if (extensionValue == null) {
            return null;
        }
        return i(str, extensionValue);
    }

    public static X500Principal g(X509CRL x509crl) {
        return x509crl.getIssuerX500Principal();
    }

    public static PublicKey h(List list, int i10) throws CertPathValidatorException {
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
            return KeyFactory.getInstance("DSA").generatePublic(new DSAPublicKeySpec(dSAPublicKey2.getY(), params.getP(), params.getQ(), params.getG()));
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    public static B i(String str, byte[] bArr) throws AnnotatedException {
        try {
            return new r(((AbstractC14551y) new r(bArr).k()).H()).k();
        } catch (Exception e10) {
            throw new AnnotatedException("exception processing extension " + str, e10);
        }
    }

    public static final Set j(E e10) throws CertPathValidatorException {
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
                throw new CertPathValidatorException("Policy qualifier info cannot be decoded.", e11);
            }
        }
        return hashSet;
    }

    public static BigInteger k(Object obj) {
        return ((X509Certificate) obj).getSerialNumber();
    }

    public static X500Principal l(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectX500Principal();
    }

    public static Date m(PKIXParameters pKIXParameters) {
        Date date = pKIXParameters.getDate();
        return date == null ? new Date() : date;
    }

    public static Date n(PKIXParameters pKIXParameters, Date date) {
        Date date2 = pKIXParameters.getDate();
        return date2 == null ? date : date2;
    }

    public static boolean o(Set set) {
        return set == null || set.contains("2.5.29.32.0") || set.isEmpty();
    }

    public static boolean p(X509CRL x509crl) throws CRLException {
        try {
            byte[] extensionValue = x509crl.getExtensionValue(C13478B.f90541q.J());
            if (extensionValue != null) {
                if (L.y(AbstractC14551y.F(extensionValue).H()).B()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            throw new CRLException("Exception reading IssuingDistributionPoint: " + ((Object) e10));
        }
    }

    public static boolean q(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectDN().equals(x509Certificate.getIssuerDN());
    }

    public static void r(int i10, List[] listArr, String str, Map map, X509Certificate x509Certificate) throws AnnotatedException, CertPathValidatorException {
        Set set;
        for (g gVar : listArr[i10]) {
            if (gVar.getValidPolicy().equals(str)) {
                gVar.f((Set) map.get(str));
                return;
            }
        }
        for (g gVar2 : listArr[i10]) {
            if ("2.5.29.32.0".equals(gVar2.getValidPolicy())) {
                try {
                    Enumeration J10 = E.G(f(x509Certificate, f101986a)).J();
                    while (true) {
                        if (!J10.hasMoreElements()) {
                            set = null;
                            break;
                        }
                        try {
                            W u10 = W.u(J10.nextElement());
                            if ("2.5.29.32.0".equals(u10.v().J())) {
                                try {
                                    set = j(u10.x());
                                    break;
                                } catch (CertPathValidatorException e10) {
                                    throw new CertPathValidatorException("Policy qualifier info set could not be built.", e10);
                                }
                            }
                        } catch (Exception e11) {
                            throw new AnnotatedException("Policy information cannot be decoded.", e11);
                        }
                    }
                    Set set2 = set;
                    boolean contains = x509Certificate.getCriticalExtensionOIDs() != null ? x509Certificate.getCriticalExtensionOIDs().contains(f101986a) : false;
                    g gVar3 = (g) gVar2.getParent();
                    if ("2.5.29.32.0".equals(gVar3.getValidPolicy())) {
                        g gVar4 = new g(new ArrayList(), i10, (Set) map.get(str), gVar3, set2, str, contains);
                        gVar3.a(gVar4);
                        listArr[i10].add(gVar4);
                        return;
                    }
                    return;
                } catch (Exception e12) {
                    throw new AnnotatedException("Certificate policies cannot be decoded.", e12);
                }
            }
        }
    }

    public static g s(int i10, List[] listArr, String str, g gVar) {
        int i11;
        Iterator it = listArr[i10].iterator();
        while (it.hasNext()) {
            g gVar2 = (g) it.next();
            if (gVar2.getValidPolicy().equals(str)) {
                ((g) gVar2.getParent()).d(gVar2);
                it.remove();
                for (int i12 = i10 - 1; i12 >= 0; i12--) {
                    List list = listArr[i12];
                    while (i11 < list.size()) {
                        g gVar3 = (g) list.get(i11);
                        i11 = (gVar3.c() || (gVar = v(gVar, listArr, gVar3)) != null) ? i11 + 1 : 0;
                    }
                }
            }
        }
        return gVar;
    }

    public static boolean t(int i10, List[] listArr, C14549x c14549x, Set set) {
        List list = listArr[i10 - 1];
        for (int i11 = 0; i11 < list.size(); i11++) {
            g gVar = (g) list.get(i11);
            if (gVar.getExpectedPolicies().contains(c14549x.J())) {
                HashSet hashSet = new HashSet();
                hashSet.add(c14549x.J());
                g gVar2 = new g(new ArrayList(), i10, hashSet, gVar, set, c14549x.J(), false);
                gVar.a(gVar2);
                listArr[i10].add(gVar2);
                return true;
            }
        }
        return false;
    }

    public static void u(int i10, List[] listArr, C14549x c14549x, Set set) {
        List list = listArr[i10 - 1];
        for (int i11 = 0; i11 < list.size(); i11++) {
            g gVar = (g) list.get(i11);
            if ("2.5.29.32.0".equals(gVar.getValidPolicy())) {
                HashSet hashSet = new HashSet();
                hashSet.add(c14549x.J());
                g gVar2 = new g(new ArrayList(), i10, hashSet, gVar, set, c14549x.J(), false);
                gVar.a(gVar2);
                listArr[i10].add(gVar2);
                return;
            }
        }
    }

    public static g v(g gVar, List[] listArr, g gVar2) {
        g gVar3 = (g) gVar2.getParent();
        if (gVar == null) {
            return null;
        }
        if (gVar3 != null) {
            gVar3.d(gVar2);
            w(listArr, gVar2);
            return gVar;
        }
        for (int i10 = 0; i10 < listArr.length; i10++) {
            listArr[i10] = new ArrayList();
        }
        return null;
    }

    public static void w(List[] listArr, g gVar) {
        listArr[gVar.getDepth()].remove(gVar);
        if (gVar.c()) {
            Iterator children = gVar.getChildren();
            while (children.hasNext()) {
                w(listArr, (g) children.next());
            }
        }
    }

    public static void x(X509Certificate x509Certificate, PublicKey publicKey, String str) throws GeneralSecurityException {
        if (str == null) {
            x509Certificate.verify(publicKey);
        } else {
            x509Certificate.verify(publicKey, str);
        }
    }
}
