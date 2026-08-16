package org.bouncycastle.pkix.jcajce;

import Hj.o;
import Hj.p;
import Hj.t;
import Hj.v;
import dk.InterfaceC12950f;
import fi.C13228d;
import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13501m;
import hi.C13512y;
import hi.C13513z;
import hi.L;
import java.io.IOException;
import java.math.BigInteger;
import java.security.PublicKey;
import java.security.cert.CRLException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oh.AbstractC14551y;
import oh.B;
import oh.C14522j;
import oh.C14539s;
import oh.C14549x;
import org.bouncycastle.util.StoreException;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class j {

    public static final String f102045a = C13478B.f90541q.J();

    public static void a(Set set, Object obj) throws CRLNotFoundException {
        if (set.isEmpty()) {
            throw new CRLNotFoundException("No CRLs found for issuer \"" + gi.e.f89996V.g(j((X509Certificate) obj)) + JavadocConstants.ANCHOR_PREFIX_END);
        }
    }

    public static void b(LinkedHashSet linkedHashSet, t tVar, List list) throws AnnotatedException {
        for (Object obj : list) {
            if (obj instanceof org.bouncycastle.util.t) {
                try {
                    linkedHashSet.addAll(((org.bouncycastle.util.t) obj).a(tVar));
                } catch (StoreException e10) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e10);
                }
            } else {
                try {
                    linkedHashSet.addAll(t.c(tVar, (CertStore) obj));
                } catch (CertStoreException e11) {
                    throw new AnnotatedException("Problem while picking certificates from certificate store.", e11);
                }
            }
        }
    }

    public static List<o> c(C13501m c13501m, Map<C13481E, o> map) throws AnnotatedException {
        if (c13501m == null) {
            return Collections.emptyList();
        }
        try {
            C13512y[] v10 = c13501m.v();
            ArrayList arrayList = new ArrayList();
            for (C13512y c13512y : v10) {
                C13513z x10 = c13512y.x();
                if (x10 != null && x10.y() == 0) {
                    for (C13481E c13481e : C13482F.w(x10.x()).y()) {
                        o oVar = map.get(c13481e);
                        if (oVar != null) {
                            arrayList.add(oVar);
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e10) {
            throw new AnnotatedException("Distribution points could not be read.", e10);
        }
    }

    public static void d(C13512y c13512y, Collection collection, X509CRLSelector x509CRLSelector) throws AnnotatedException {
        ArrayList arrayList = new ArrayList();
        if (c13512y.v() != null) {
            C13481E[] y10 = c13512y.v().y();
            for (int i10 = 0; i10 < y10.length; i10++) {
                if (y10[i10].g() == 4) {
                    try {
                        arrayList.add(C13228d.x(y10[i10].x()));
                    } catch (IllegalArgumentException e10) {
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

    public static void e(Date date, X509CRL x509crl, Object obj, b bVar) throws AnnotatedException {
        X509CRLEntry revokedCertificate;
        try {
            boolean p10 = p(x509crl);
            X509Certificate x509Certificate = (X509Certificate) obj;
            C13228d j10 = j(x509Certificate);
            if ((p10 || j10.equals(i(x509crl))) && (revokedCertificate = x509crl.getRevokedCertificate(x509Certificate.getSerialNumber())) != null) {
                if (p10) {
                    X500Principal certificateIssuer = revokedCertificate.getCertificateIssuer();
                    if (!j10.equals(certificateIssuer == null ? i(x509crl) : n(certificateIssuer))) {
                        return;
                    }
                }
                int i10 = 0;
                if (revokedCertificate.hasExtensions()) {
                    try {
                        C14522j F10 = C14522j.F(h(revokedCertificate, C13478B.f90537m));
                        if (F10 != null) {
                            i10 = F10.L();
                        }
                    } catch (Exception e10) {
                        throw new AnnotatedException("Reason code CRL entry extension could not be decoded.", e10);
                    }
                }
                Date revocationDate = revokedCertificate.getRevocationDate();
                if (!date.before(revocationDate) || i10 == 0 || i10 == 1 || i10 == 2 || i10 == 10) {
                    bVar.c(i10);
                    bVar.d(revocationDate);
                }
            }
        } catch (CRLException e11) {
            throw new AnnotatedException("Failed check for indirect CRL.", e11);
        }
    }

    public static Set f(C13512y c13512y, Object obj, Date date, List list, List list2) throws AnnotatedException, CRLNotFoundException {
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        try {
            HashSet hashSet = new HashSet();
            hashSet.add(j((X509Certificate) obj));
            d(c13512y, hashSet, x509CRLSelector);
            if (obj instanceof X509Certificate) {
                x509CRLSelector.setCertificateChecking((X509Certificate) obj);
            }
            Set b10 = e.b(new p.b(x509CRLSelector).h(true).g(), date, list, list2);
            a(b10, obj);
            return b10;
        } catch (AnnotatedException e10) {
            throw new AnnotatedException("Could not get issuer information from distribution point.", e10);
        }
    }

    public static Set g(Date date, X509CRL x509crl, List<CertStore> list, List<o> list2) throws AnnotatedException {
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        try {
            x509CRLSelector.addIssuerName(x509crl.getIssuerX500Principal().getEncoded());
            try {
                B h10 = h(x509crl, C13478B.f90536l);
                BigInteger H10 = h10 != null ? C14539s.F(h10).H() : null;
                try {
                    byte[] extensionValue = x509crl.getExtensionValue(f102045a);
                    x509CRLSelector.setMinCRLNumber(H10 != null ? H10.add(BigInteger.valueOf(1L)) : null);
                    p.b bVar = new p.b(x509CRLSelector);
                    bVar.j(extensionValue);
                    bVar.k(true);
                    bVar.l(H10);
                    Set<X509CRL> b10 = e.b(bVar.g(), date, list, list2);
                    HashSet hashSet = new HashSet();
                    for (X509CRL x509crl2 : b10) {
                        if (o(x509crl2)) {
                            hashSet.add(x509crl2);
                        }
                    }
                    return hashSet;
                } catch (Exception e10) {
                    throw new AnnotatedException("issuing distribution point extension value could not be read", e10);
                }
            } catch (Exception e11) {
                throw new AnnotatedException("cannot extract CRL number extension from CRL", e11);
            }
        } catch (IOException e12) {
            throw new AnnotatedException("cannot extract issuer from CRL.", e12);
        }
    }

    public static B h(X509Extension x509Extension, C14549x c14549x) throws AnnotatedException {
        byte[] extensionValue = x509Extension.getExtensionValue(c14549x.J());
        if (extensionValue == null) {
            return null;
        }
        return l(c14549x, extensionValue);
    }

    public static C13228d i(X509CRL x509crl) {
        return n(x509crl.getIssuerX500Principal());
    }

    public static C13228d j(X509Certificate x509Certificate) {
        return n(x509Certificate.getIssuerX500Principal());
    }

    public static PublicKey k(List list, int i10, InterfaceC12950f interfaceC12950f) throws CertPathValidatorException {
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

    public static B l(C14549x c14549x, byte[] bArr) throws AnnotatedException {
        try {
            return B.B(AbstractC14551y.F(bArr).H());
        } catch (Exception e10) {
            throw new AnnotatedException("exception processing extension " + ((Object) c14549x), e10);
        }
    }

    public static Date m(v vVar, Date date) {
        Date w10 = vVar.w();
        return w10 == null ? date : w10;
    }

    public static C13228d n(X500Principal x500Principal) {
        return C13228d.x(x500Principal.getEncoded());
    }

    public static boolean o(X509CRL x509crl) {
        Set<String> criticalExtensionOIDs = x509crl.getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        return criticalExtensionOIDs.contains(h.f102038c);
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
            throw new CRLException("exception reading IssuingDistributionPoint", e10);
        }
    }
}
