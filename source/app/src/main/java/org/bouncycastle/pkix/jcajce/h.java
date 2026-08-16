package org.bouncycastle.pkix.jcajce;

import Hj.p;
import Hj.t;
import Hj.u;
import Hj.v;
import dk.InterfaceC12950f;
import fi.C13228d;
import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13500l;
import hi.C13501m;
import hi.C13512y;
import hi.C13513z;
import hi.L;
import java.io.IOException;
import java.security.PublicKey;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class h {

    public static final String f102036a = C13478B.f90541q.J();

    public static final String f102037b = C13478B.f90550z.J();

    public static final String f102038c = C13478B.f90540p.J();

    public static final String f102039d = C13478B.f90535k.J();

    public static final String f102040e = C13478B.f90547w.J();

    public static final int f102041f = 5;

    public static final int f102042g = 6;

    public static void a(C13512y c13512y, v vVar, Date date, Date date2, X509Certificate x509Certificate, X509Certificate x509Certificate2, PublicKey publicKey, b bVar, i iVar, List list, InterfaceC12950f interfaceC12950f) throws AnnotatedException, CRLNotFoundException {
        Iterator it;
        Set<String> criticalExtensionOIDs;
        if (date2.getTime() > date.getTime()) {
            throw new AnnotatedException("Validation time is in future.");
        }
        Iterator it2 = j.f(c13512y, x509Certificate, date2, vVar.m(), vVar.k()).iterator();
        boolean z10 = false;
        AnnotatedException e10 = null;
        while (it2.hasNext() && bVar.a() == 11 && !iVar.e()) {
            try {
                X509CRL x509crl = (X509CRL) it2.next();
                i g10 = g(x509crl, c13512y);
                if (g10.c(iVar)) {
                    it = it2;
                    AnnotatedException annotatedException = e10;
                    try {
                        X509CRL j10 = vVar.C() ? j(j.g(date2, x509crl, vVar.m(), vVar.k()), i(x509crl, h(x509crl, x509Certificate, x509Certificate2, publicKey, vVar, list, interfaceC12950f))) : null;
                        if (vVar.x() != 1 && x509Certificate.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                            throw new AnnotatedException("No valid CRL for current time found.");
                        }
                        d(c13512y, x509Certificate, x509crl);
                        e(c13512y, x509Certificate, x509crl);
                        f(j10, x509crl, vVar);
                        k(date2, j10, x509Certificate, bVar, vVar);
                        l(date2, x509crl, x509Certificate, bVar);
                        if (bVar.a() == 8) {
                            bVar.c(11);
                        }
                        iVar.a(g10);
                        Set<String> criticalExtensionOIDs2 = x509crl.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs2 != null) {
                            HashSet hashSet = new HashSet(criticalExtensionOIDs2);
                            hashSet.remove(C13478B.f90541q.J());
                            hashSet.remove(C13478B.f90540p.J());
                            if (!hashSet.isEmpty()) {
                                throw new AnnotatedException("CRL contains unsupported critical extensions.");
                            }
                        }
                        if (j10 != null && (criticalExtensionOIDs = j10.getCriticalExtensionOIDs()) != null) {
                            HashSet hashSet2 = new HashSet(criticalExtensionOIDs);
                            hashSet2.remove(C13478B.f90541q.J());
                            hashSet2.remove(C13478B.f90540p.J());
                            if (!hashSet2.isEmpty()) {
                                throw new AnnotatedException("Delta CRL contains unsupported critical extension.");
                            }
                        }
                        z10 = true;
                        it2 = it;
                        e10 = annotatedException;
                    } catch (AnnotatedException e11) {
                        e10 = e11;
                        it2 = it;
                    }
                } else {
                    continue;
                }
            } catch (AnnotatedException e12) {
                e10 = e12;
                it = it2;
            }
        }
        AnnotatedException annotatedException2 = e10;
        if (!z10) {
            throw annotatedException2;
        }
    }

    public static Set b(v vVar, Date date, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        if (vVar.C()) {
            try {
                C14549x c14549x = C13478B.f90550z;
                C13501m w10 = C13501m.w(j.h(x509Certificate, c14549x));
                if (w10 == null) {
                    try {
                        w10 = C13501m.w(j.h(x509crl, c14549x));
                    } catch (AnnotatedException e10) {
                        throw new AnnotatedException("Freshest CRL extension could not be decoded from CRL.", e10);
                    }
                }
                if (w10 != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(vVar.k());
                    try {
                        arrayList.addAll(j.c(w10, vVar.q()));
                        try {
                            hashSet.addAll(j.g(date, x509crl, vVar.m(), arrayList));
                        } catch (AnnotatedException e11) {
                            throw new AnnotatedException("Exception obtaining delta CRLs.", e11);
                        }
                    } catch (AnnotatedException e12) {
                        throw new AnnotatedException("No new delta CRL locations could be added from Freshest CRL extension.", e12);
                    }
                }
            } catch (AnnotatedException e13) {
                throw new AnnotatedException("Freshest CRL extension could not be decoded from certificate.", e13);
            }
        }
        return hashSet;
    }

    public static Set[] c(v vVar, Date date, Date date2, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        x509CRLSelector.setCertificateChecking(x509Certificate);
        try {
            x509CRLSelector.addIssuerName(x509crl.getIssuerX500Principal().getEncoded());
            Set b10 = e.b(new p.b(x509CRLSelector).h(true).g(), date2, vVar.m(), vVar.k());
            HashSet hashSet = new HashSet();
            if (vVar.C()) {
                try {
                    hashSet.addAll(j.g(date2, x509crl, vVar.m(), vVar.k()));
                } catch (AnnotatedException e10) {
                    throw new AnnotatedException("Exception obtaining delta CRLs.", e10);
                }
            }
            return new Set[]{b10, hashSet};
        } catch (IOException e11) {
            throw new AnnotatedException("Cannot extract issuer from CRL." + ((Object) e11), e11);
        }
    }

    public static void d(C13512y c13512y, Object obj, X509CRL x509crl) throws AnnotatedException {
        B h10 = j.h(x509crl, C13478B.f90541q);
        boolean z10 = true;
        boolean z11 = h10 != null && L.y(h10).B();
        byte[] encoded = x509crl.getIssuerX500Principal().getEncoded();
        if (c13512y.v() != null) {
            C13481E[] y10 = c13512y.v().y();
            boolean z12 = false;
            for (int i10 = 0; i10 < y10.length; i10++) {
                if (y10[i10].g() == 4) {
                    try {
                        if (org.bouncycastle.util.a.g(y10[i10].x().r().getEncoded(), encoded)) {
                            z12 = true;
                        }
                    } catch (IOException e10) {
                        throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", e10);
                    }
                }
            }
            if (z12 && !z11) {
                throw new AnnotatedException("Distribution point contains cRLIssuer field but CRL is not indirect.");
            }
            if (!z12) {
                throw new AnnotatedException("CRL issuer of CRL does not match CRL issuer of distribution point.");
            }
            z10 = z12;
        } else if (!x509crl.getIssuerX500Principal().equals(((X509Certificate) obj).getIssuerX500Principal())) {
            z10 = false;
        }
        if (!z10) {
            throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
        }
    }

    public static void e(C13512y c13512y, Object obj, X509CRL x509crl) throws AnnotatedException {
        int i10;
        C13481E[] c13481eArr;
        try {
            L y10 = L.y(j.h(x509crl, C13478B.f90541q));
            if (y10 != null) {
                if (y10.x() != null) {
                    C13513z x10 = L.y(y10).x();
                    ArrayList arrayList = new ArrayList();
                    if (x10.y() == 0) {
                        for (C13481E c13481e : C13482F.w(x10.x()).y()) {
                            arrayList.add(c13481e);
                        }
                    }
                    if (x10.y() == 1) {
                        C14518h c14518h = new C14518h();
                        try {
                            Enumeration J10 = E.G(x509crl.getIssuerX500Principal().getEncoded()).J();
                            while (J10.hasMoreElements()) {
                                c14518h.a((InterfaceC14516g) J10.nextElement());
                            }
                            c14518h.a(x10.x());
                            arrayList.add(new C13481E(C13228d.x(new G0(c14518h))));
                        } catch (Exception e10) {
                            throw new AnnotatedException("Could not read CRL issuer.", e10);
                        }
                    }
                    if (c13512y.x() == null) {
                        if (c13512y.v() == null) {
                            throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                        }
                        C13481E[] y11 = c13512y.v().y();
                        while (i10 < y11.length) {
                            i10 = arrayList.contains(y11[i10]) ? 0 : i10 + 1;
                        }
                        throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                    }
                    C13513z x11 = c13512y.x();
                    C13481E[] y12 = x11.y() == 0 ? C13482F.w(x11.x()).y() : null;
                    if (x11.y() == 1) {
                        if (c13512y.v() != null) {
                            c13481eArr = c13512y.v().y();
                        } else {
                            c13481eArr = new C13481E[1];
                            try {
                                c13481eArr[0] = new C13481E(C13228d.x(((X509Certificate) obj).getIssuerX500Principal().getEncoded()));
                            } catch (Exception e11) {
                                throw new AnnotatedException("Could not read certificate issuer.", e11);
                            }
                        }
                        y12 = c13481eArr;
                        for (int i11 = 0; i11 < y12.length; i11++) {
                            Enumeration J11 = E.G(y12[i11].x().r()).J();
                            C14518h c14518h2 = new C14518h();
                            while (J11.hasMoreElements()) {
                                c14518h2.a((InterfaceC14516g) J11.nextElement());
                            }
                            c14518h2.a(x11.x());
                            y12[i11] = new C13481E(C13228d.x(new G0(c14518h2)));
                        }
                    }
                    if (y12 != null) {
                        while (i10 < y12.length) {
                            i10 = arrayList.contains(y12[i10]) ? 0 : i10 + 1;
                        }
                    }
                    throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                }
                try {
                    C13500l v10 = C13500l.v(j.h((X509Extension) obj, C13478B.f90535k));
                    if (obj instanceof X509Certificate) {
                        if (y10.E() && v10 != null && v10.z()) {
                            throw new AnnotatedException("CA Cert CRL only contains user certificates.");
                        }
                        if (y10.D() && (v10 == null || !v10.z())) {
                            throw new AnnotatedException("End CRL only contains CA certificates.");
                        }
                    }
                    if (y10.C()) {
                        throw new AnnotatedException("onlyContainsAttributeCerts boolean is asserted.");
                    }
                } catch (Exception e12) {
                    throw new AnnotatedException("Basic constraints extension could not be decoded.", e12);
                }
            }
        } catch (Exception e13) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e13);
        }
    }

    public static void f(X509CRL x509crl, X509CRL x509crl2, v vVar) throws AnnotatedException {
        if (x509crl == null) {
            return;
        }
        try {
            C14549x c14549x = C13478B.f90541q;
            L y10 = L.y(j.h(x509crl2, c14549x));
            if (vVar.C()) {
                if (!x509crl.getIssuerX500Principal().equals(x509crl2.getIssuerX500Principal())) {
                    throw new AnnotatedException("complete CRL issuer does not match delta CRL issuer");
                }
                try {
                    L y11 = L.y(j.h(x509crl, c14549x));
                    if (y10 != null ? !y10.equals(y11) : y11 != null) {
                        throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                    }
                    try {
                        C14549x c14549x2 = C13478B.f90547w;
                        B h10 = j.h(x509crl2, c14549x2);
                        try {
                            B h11 = j.h(x509crl, c14549x2);
                            if (h10 == null) {
                                throw new AnnotatedException("CRL authority key identifier is null.");
                            }
                            if (h11 == null) {
                                throw new AnnotatedException("Delta CRL authority key identifier is null.");
                            }
                            if (!h10.A(h11)) {
                                throw new AnnotatedException("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
                            }
                        } catch (AnnotatedException e10) {
                            throw new AnnotatedException("Authority key identifier extension could not be extracted from delta CRL.", e10);
                        }
                    } catch (AnnotatedException e11) {
                        throw new AnnotatedException("Authority key identifier extension could not be extracted from complete CRL.", e11);
                    }
                } catch (Exception e12) {
                    throw new AnnotatedException("Issuing distribution point extension from delta CRL could not be decoded.", e12);
                }
            }
        } catch (Exception e13) {
            throw new AnnotatedException("issuing distribution point extension could not be decoded.", e13);
        }
    }

    public static i g(X509CRL x509crl, C13512y c13512y) throws AnnotatedException {
        try {
            L y10 = L.y(j.h(x509crl, C13478B.f90541q));
            if (y10 != null && y10.A() != null && c13512y.A() != null) {
                return new i(c13512y.A()).d(new i(y10.A()));
            }
            if ((y10 == null || y10.A() == null) && c13512y.A() == null) {
                return i.f102043b;
            }
            return (c13512y.A() == null ? i.f102043b : new i(c13512y.A())).d(y10 == null ? i.f102043b : new i(y10.A()));
        } catch (Exception e10) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Set h(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, v vVar, List list, InterfaceC12950f interfaceC12950f) throws AnnotatedException {
        int i10;
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(x509crl.getIssuerX500Principal().getEncoded());
            t<? extends Certificate> a10 = new t.b(x509CertSelector).a();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                j.b(linkedHashSet, a10, vVar.n());
                j.b(linkedHashSet, a10, vVar.m());
                linkedHashSet.add(x509Certificate);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Iterator<E> it = linkedHashSet.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (x509Certificate2.equals(x509Certificate)) {
                        arrayList.add(x509Certificate2);
                        arrayList2.add(publicKey);
                    } else {
                        try {
                            CertPathBuilder t10 = interfaceC12950f.t("PKIX");
                            X509CertSelector x509CertSelector2 = new X509CertSelector();
                            x509CertSelector2.setCertificate(x509Certificate2);
                            v.b s10 = new v.b(vVar).s(new t.b(x509CertSelector2).a());
                            if (list.contains(x509Certificate2)) {
                                s10.r(false);
                            } else {
                                s10.r(true);
                            }
                            List<? extends Certificate> certificates = t10.build(new u.b(s10.q()).e()).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(j.k(certificates, 0, interfaceC12950f));
                        } catch (CertPathBuilderException e10) {
                            throw new AnnotatedException("CertPath for CRL signer failed to validate.", e10);
                        } catch (CertPathValidatorException e11) {
                            throw new AnnotatedException("Public key of issuer certificate of CRL could not be retrieved.", e11);
                        } catch (Exception e12) {
                            throw new AnnotatedException(e12.getMessage());
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                AnnotatedException annotatedException = null;
                for (i10 = 0; i10 < arrayList.size(); i10++) {
                    boolean[] keyUsage = ((X509Certificate) arrayList.get(i10)).getKeyUsage();
                    if (keyUsage == null || (keyUsage.length > 6 && keyUsage[6])) {
                        hashSet.add(arrayList2.get(i10));
                    } else {
                        annotatedException = new AnnotatedException("Issuer certificate key usage extension does not permit CRL signing.");
                    }
                }
                if (hashSet.isEmpty() && annotatedException == null) {
                    throw new AnnotatedException("Cannot find a valid issuer certificate.");
                }
                if (!hashSet.isEmpty() || annotatedException == null) {
                    return hashSet;
                }
                throw annotatedException;
            } catch (AnnotatedException e13) {
                throw new AnnotatedException("Issuer certificate for CRL cannot be searched.", e13);
            }
        } catch (IOException e14) {
            throw new AnnotatedException("subject criteria for certificate selector to find issuer certificate for CRL could not be set", e14);
        }
    }

    public static PublicKey i(X509CRL x509crl, Set set) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e10 = null;
        while (it.hasNext()) {
            PublicKey publicKey = (PublicKey) it.next();
            try {
                x509crl.verify(publicKey);
                return publicKey;
            } catch (Exception e11) {
                e10 = e11;
            }
        }
        throw new AnnotatedException("Cannot verify CRL.", e10);
    }

    public static X509CRL j(Set set, PublicKey publicKey) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e10 = null;
        while (it.hasNext()) {
            X509CRL x509crl = (X509CRL) it.next();
            try {
                x509crl.verify(publicKey);
                return x509crl;
            } catch (Exception e11) {
                e10 = e11;
            }
        }
        if (e10 == null) {
            return null;
        }
        throw new AnnotatedException("Cannot verify delta CRL.", e10);
    }

    public static void k(Date date, X509CRL x509crl, Object obj, b bVar, v vVar) throws AnnotatedException {
        if (!vVar.C() || x509crl == null) {
            return;
        }
        j.e(date, x509crl, obj, bVar);
    }

    public static void l(Date date, X509CRL x509crl, Object obj, b bVar) throws AnnotatedException {
        if (bVar.a() == 11) {
            j.e(date, x509crl, obj, bVar);
        }
    }
}
