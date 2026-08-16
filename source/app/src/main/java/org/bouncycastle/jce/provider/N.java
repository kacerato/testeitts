package org.bouncycastle.jce.provider;

import Hj.t;
import Hj.u;
import Hj.v;
import ak.C3667g;
import dk.InterfaceC12950f;
import fi.C13227c;
import fi.C13228d;
import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13500l;
import hi.C13501m;
import hi.C13512y;
import hi.C13513z;
import j3.C13804a;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;

public class N {

    public static final String f101653p = "2.5.29.32.0";

    public static final int f101654q = 5;

    public static final int f101655r = 6;

    public static final Class f101638a = C3667g.a(N.class, "java.security.cert.PKIXRevocationChecker");

    public static final String f101639b = C13478B.f90545u.J();

    public static final String f101640c = C13478B.f90546v.J();

    public static final String f101641d = C13478B.f90515A.J();

    public static final String f101642e = C13478B.f90541q.J();

    public static final String f101643f = C13478B.f90550z.J();

    public static final String f101644g = C13478B.f90540p.J();

    public static final String f101645h = C13478B.f90548x.J();

    public static final String f101646i = C13478B.f90535k.J();

    public static final String f101647j = C13478B.f90544t.J();

    public static final String f101648k = C13478B.f90533i.J();

    public static final String f101649l = C13478B.f90543s.J();

    public static final String f101650m = C13478B.f90547w.J();

    public static final String f101651n = C13478B.f90531g.J();

    public static final String f101652o = C13478B.f90536l.J();

    public static final String[] f101656s = {C13804a.f92557d, "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    public static void A(CertPath certPath, int i10, H h10, boolean z10) throws CertPathValidatorException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i10);
        int size = certificates.size();
        int i11 = size - i10;
        if (!C14725f.x(x509Certificate) || (i11 >= size && !z10)) {
            try {
                oh.E G10 = oh.E.G(J.f(x509Certificate));
                try {
                    h10.e(G10);
                    h10.c(G10);
                    try {
                        C13482F w10 = C13482F.w(C14725f.n(x509Certificate, f101648k));
                        C13227c[] A10 = C13228d.x(G10).A(gi.c.f89937I);
                        for (int i12 = 0; i12 != A10.length; i12++) {
                            C13481E c13481e = new C13481E(1, ((oh.J) A10[i12].x().x()).getString());
                            try {
                                h10.d(c13481e);
                                h10.b(c13481e);
                            } catch (PKIXNameConstraintValidatorException e10) {
                                throw new CertPathValidatorException("Subtree check for certificate subject alternative email failed.", e10, certPath, i10);
                            }
                        }
                        if (w10 != null) {
                            try {
                                C13481E[] y10 = w10.y();
                                for (int i13 = 0; i13 < y10.length; i13++) {
                                    try {
                                        h10.d(y10[i13]);
                                        h10.b(y10[i13]);
                                    } catch (PKIXNameConstraintValidatorException e11) {
                                        throw new CertPathValidatorException("Subtree check for certificate subject alternative name failed.", e11, certPath, i10);
                                    }
                                }
                            } catch (Exception e12) {
                                throw new CertPathValidatorException("Subject alternative name contents could not be decoded.", e12, certPath, i10);
                            }
                        }
                    } catch (Exception e13) {
                        throw new CertPathValidatorException("Subject alternative name extension could not be decoded.", e13, certPath, i10);
                    }
                } catch (PKIXNameConstraintValidatorException e14) {
                    throw new CertPathValidatorException("Subtree check for certificate subject failed.", e14, certPath, i10);
                }
            } catch (Exception e15) {
                throw new CertPathValidatorException("Exception extracting subject name when checking subtrees.", e15, certPath, i10);
            }
        }
    }

    public static I B(CertPath certPath, int i10, Set set, I i11, List[] listArr, int i12, boolean z10) throws CertPathValidatorException {
        String str;
        int i13;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i10);
        int size = certificates.size();
        int i14 = size - i10;
        try {
            oh.E G10 = oh.E.G(C14725f.n(x509Certificate, f101639b));
            if (G10 == null || i11 == null) {
                return null;
            }
            Enumeration J10 = G10.J();
            HashSet hashSet = new HashSet();
            while (J10.hasMoreElements()) {
                hi.W u10 = hi.W.u(J10.nextElement());
                C14549x v10 = u10.v();
                hashSet.add(v10.J());
                if (!"2.5.29.32.0".equals(v10.J())) {
                    try {
                        Set q10 = C14725f.q(u10.x());
                        if (!C14725f.A(i14, listArr, v10, q10)) {
                            C14725f.B(i14, listArr, v10, q10);
                        }
                    } catch (CertPathValidatorException e10) {
                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be build.", e10, certPath, i10);
                    }
                }
            }
            if (set.isEmpty() || set.contains("2.5.29.32.0")) {
                set.clear();
                set.addAll(hashSet);
            } else {
                HashSet hashSet2 = new HashSet();
                for (Object obj : set) {
                    if (hashSet.contains(obj)) {
                        hashSet2.add(obj);
                    }
                }
                set.clear();
                set.addAll(hashSet2);
            }
            if (i12 > 0 || ((i14 < size || z10) && C14725f.x(x509Certificate))) {
                Enumeration J11 = G10.J();
                while (true) {
                    if (!J11.hasMoreElements()) {
                        break;
                    }
                    hi.W u11 = hi.W.u(J11.nextElement());
                    if ("2.5.29.32.0".equals(u11.v().J())) {
                        Set q11 = C14725f.q(u11.x());
                        List list = listArr[i14 - 1];
                        for (int i15 = 0; i15 < list.size(); i15++) {
                            I i16 = (I) list.get(i15);
                            for (Object obj2 : i16.getExpectedPolicies()) {
                                if (obj2 instanceof String) {
                                    str = (String) obj2;
                                } else if (obj2 instanceof C14549x) {
                                    str = ((C14549x) obj2).J();
                                }
                                String str2 = str;
                                Iterator children = i16.getChildren();
                                boolean z11 = false;
                                while (children.hasNext()) {
                                    if (str2.equals(((I) children.next()).getValidPolicy())) {
                                        z11 = true;
                                    }
                                }
                                if (!z11) {
                                    HashSet hashSet3 = new HashSet();
                                    hashSet3.add(str2);
                                    I i17 = new I(new ArrayList(), i14, hashSet3, i16, q11, str2, false);
                                    i16.a(i17);
                                    listArr[i14].add(i17);
                                }
                            }
                        }
                    }
                }
            }
            I i18 = i11;
            for (int i19 = i14 - 1; i19 >= 0; i19--) {
                List list2 = listArr[i19];
                while (i13 < list2.size()) {
                    I i20 = (I) list2.get(i13);
                    i13 = (i20.c() || (i18 = C14725f.C(i18, listArr, i20)) != null) ? i13 + 1 : 0;
                }
            }
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null) {
                boolean contains = criticalExtensionOIDs.contains(f101639b);
                List list3 = listArr[i14];
                for (int i21 = 0; i21 < list3.size(); i21++) {
                    ((I) list3.get(i21)).e(contains);
                }
            }
            return i18;
        } catch (AnnotatedException e11) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e11, certPath, i10);
        }
    }

    public static I C(CertPath certPath, int i10, I i11) throws CertPathValidatorException {
        try {
            if (oh.E.G(C14725f.n((X509Certificate) certPath.getCertificates().get(i10), f101639b)) == null) {
                return null;
            }
            return i11;
        } catch (AnnotatedException e10) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e10, certPath, i10);
        }
    }

    public static void D(CertPath certPath, int i10, I i11, int i12) throws CertPathValidatorException {
        if (i12 <= 0 && i11 == null) {
            throw new ExtCertPathValidatorException("No valid policy tree found when one expected.", null, certPath, i10);
        }
    }

    public static int E(int i10, X509Certificate x509Certificate) {
        return (C14725f.x(x509Certificate) || i10 == 0) ? i10 : i10 - 1;
    }

    public static int F(CertPath certPath, int i10, int i11) throws CertPathValidatorException {
        try {
            oh.E G10 = oh.E.G(C14725f.n((X509Certificate) certPath.getCertificates().get(i10), f101645h));
            if (G10 != null) {
                Enumeration J10 = G10.J();
                while (J10.hasMoreElements()) {
                    oh.M m10 = (oh.M) J10.nextElement();
                    if (m10.g() == 0) {
                        try {
                            if (C14539s.G(m10, false).O() == 0) {
                                return 0;
                            }
                        } catch (Exception e10) {
                            throw new ExtCertPathValidatorException("Policy constraints requireExplicitPolicy field could not be decoded.", e10, certPath, i10);
                        }
                    }
                }
            }
            return i11;
        } catch (AnnotatedException e11) {
            throw new ExtCertPathValidatorException("Policy constraints could not be decoded.", e11, certPath, i10);
        }
    }

    public static void G(CertPath certPath, int i10, List list, Set set) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i10);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e10) {
                throw new ExtCertPathValidatorException(e10.getMessage(), e10, certPath, i10);
            } catch (Exception e11) {
                throw new CertPathValidatorException("Additional certificate path checker failed.", e11, certPath, i10);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + ((Object) set), null, certPath, i10);
    }

    public static I H(CertPath certPath, Hj.v vVar, Set set, int i10, List[] listArr, I i11, Set set2) throws CertPathValidatorException {
        int size = certPath.getCertificates().size();
        if (i11 == null) {
            if (vVar.z()) {
                throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i10);
            }
            return null;
        }
        if (!C14725f.u(set)) {
            HashSet<I> hashSet = new HashSet();
            for (List list : listArr) {
                for (int i12 = 0; i12 < list.size(); i12++) {
                    I i13 = (I) list.get(i12);
                    if ("2.5.29.32.0".equals(i13.getValidPolicy())) {
                        Iterator children = i13.getChildren();
                        while (children.hasNext()) {
                            I i14 = (I) children.next();
                            if (!"2.5.29.32.0".equals(i14.getValidPolicy())) {
                                hashSet.add(i14);
                            }
                        }
                    }
                }
            }
            for (I i15 : hashSet) {
                if (!set.contains(i15.getValidPolicy())) {
                    i11 = C14725f.C(i11, listArr, i15);
                }
            }
            if (i11 != null) {
                for (int i16 = size - 1; i16 >= 0; i16--) {
                    List list2 = listArr[i16];
                    for (int i17 = 0; i17 < list2.size(); i17++) {
                        I i18 = (I) list2.get(i17);
                        if (!i18.c()) {
                            i11 = C14725f.C(i11, listArr, i18);
                        }
                    }
                }
            }
        } else if (vVar.z()) {
            if (set2.isEmpty()) {
                throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i10);
            }
            HashSet hashSet2 = new HashSet();
            for (List list3 : listArr) {
                for (int i19 = 0; i19 < list3.size(); i19++) {
                    I i20 = (I) list3.get(i19);
                    if ("2.5.29.32.0".equals(i20.getValidPolicy())) {
                        Iterator children2 = i20.getChildren();
                        while (children2.hasNext()) {
                            hashSet2.add(children2.next());
                        }
                    }
                }
            }
            Iterator<E> it = hashSet2.iterator();
            while (it.hasNext()) {
                set2.contains(((I) it.next()).getValidPolicy());
            }
            for (int i21 = size - 1; i21 >= 0; i21--) {
                List list4 = listArr[i21];
                for (int i22 = 0; i22 < list4.size(); i22++) {
                    I i23 = (I) list4.get(i22);
                    if (!i23.c()) {
                        i11 = C14725f.C(i11, listArr, i23);
                    }
                }
            }
        }
        return i11;
    }

    public static void a(Hj.r rVar, C13512y c13512y, Hj.v vVar, Date date, Date date2, X509Certificate x509Certificate, X509Certificate x509Certificate2, PublicKey publicKey, C14726g c14726g, P p10, List list, InterfaceC12950f interfaceC12950f) throws AnnotatedException, RecoverableCertPathValidatorException {
        Iterator it;
        X509CRL x509crl;
        Set<String> criticalExtensionOIDs;
        if (date2.getTime() > date.getTime()) {
            throw new AnnotatedException("Validation time is in future.");
        }
        Iterator it2 = C14725f.l(rVar, c13512y, x509Certificate, vVar, date2).iterator();
        boolean z10 = false;
        AnnotatedException e10 = null;
        while (it2.hasNext() && c14726g.a() == 11 && !p10.e()) {
            try {
                X509CRL x509crl2 = (X509CRL) it2.next();
                P t10 = t(x509crl2, c13512y);
                if (t10.c(p10)) {
                    it = it2;
                    AnnotatedException annotatedException = e10;
                    try {
                        PublicKey v10 = v(x509crl2, u(x509crl2, x509Certificate, x509Certificate2, publicKey, vVar, list, interfaceC12950f));
                        if (vVar.C()) {
                            try {
                                x509crl = w(C14725f.m(date2, x509crl2, vVar.m(), vVar.k(), interfaceC12950f), v10);
                            } catch (AnnotatedException e11) {
                                e10 = e11;
                                it2 = it;
                            }
                        } else {
                            x509crl = null;
                        }
                        if (vVar.x() != 1 && x509Certificate.getNotAfter().getTime() < x509crl2.getThisUpdate().getTime()) {
                            throw new AnnotatedException("No valid CRL for current time found.");
                        }
                        q(c13512y, x509Certificate, x509crl2);
                        r(c13512y, x509Certificate, x509crl2);
                        s(x509crl, x509crl2, vVar);
                        x(date2, x509crl, x509Certificate, c14726g, vVar);
                        y(date2, x509crl2, x509Certificate, c14726g);
                        if (c14726g.a() == 8) {
                            c14726g.c(11);
                        }
                        p10.a(t10);
                        Set<String> criticalExtensionOIDs2 = x509crl2.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs2 != null) {
                            HashSet hashSet = new HashSet(criticalExtensionOIDs2);
                            hashSet.remove(C13478B.f90541q.J());
                            hashSet.remove(C13478B.f90540p.J());
                            if (!hashSet.isEmpty()) {
                                throw new AnnotatedException("CRL contains unsupported critical extensions.");
                            }
                        }
                        if (x509crl != null && (criticalExtensionOIDs = x509crl.getCriticalExtensionOIDs()) != null) {
                            HashSet hashSet2 = new HashSet(criticalExtensionOIDs);
                            hashSet2.remove(C13478B.f90541q.J());
                            hashSet2.remove(C13478B.f90540p.J());
                            if (!hashSet2.isEmpty()) {
                                throw new AnnotatedException("Delta CRL contains unsupported critical extension.");
                            }
                        }
                        it2 = it;
                        z10 = true;
                        e10 = annotatedException;
                    } catch (AnnotatedException e12) {
                        e10 = e12;
                    }
                } else {
                    continue;
                }
            } catch (AnnotatedException e13) {
                e10 = e13;
                it = it2;
            }
        }
        AnnotatedException annotatedException2 = e10;
        if (!z10) {
            throw annotatedException2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(Hj.r rVar, Hj.v vVar, Date date, Date date2, X509Certificate x509Certificate, X509Certificate x509Certificate2, PublicKey publicKey, List list, InterfaceC12950f interfaceC12950f) throws AnnotatedException, RecoverableCertPathValidatorException {
        AnnotatedException e10;
        boolean z10;
        int i10;
        C14726g c14726g;
        int i11;
        C13512y[] c13512yArr;
        int i12;
        C14726g c14726g2;
        C14726g c14726g3;
        try {
            C13501m w10 = C13501m.w(C14725f.n(x509Certificate, f101647j));
            v.b bVar = new v.b(vVar);
            try {
                Iterator<Hj.o> it = C14725f.h(w10, vVar.q(), date2, interfaceC12950f).iterator();
                while (it.hasNext()) {
                    bVar.m(it.next());
                }
                C14726g c14726g4 = new C14726g();
                P p10 = new P();
                Hj.v q10 = bVar.q();
                boolean z11 = true;
                int i13 = 11;
                Object obj = null;
                if (w10 != null) {
                    try {
                        C13512y[] v10 = w10.v();
                        if (v10 != null) {
                            e10 = null;
                            int i14 = 0;
                            z10 = false;
                            while (i14 < v10.length && c14726g4.a() == i13 && !p10.e()) {
                                try {
                                    i11 = i14;
                                    c13512yArr = v10;
                                    i12 = i13;
                                    c14726g2 = c14726g4;
                                    try {
                                        a(rVar, v10[i14], q10, date, date2, x509Certificate, x509Certificate2, publicKey, c14726g4, p10, list, interfaceC12950f);
                                        z10 = true;
                                    } catch (AnnotatedException e11) {
                                        e10 = e11;
                                    }
                                } catch (AnnotatedException e12) {
                                    e10 = e12;
                                    i11 = i14;
                                    c13512yArr = v10;
                                    i12 = i13;
                                    c14726g2 = c14726g4;
                                }
                                i14 = i11 + 1;
                                i13 = i12;
                                v10 = c13512yArr;
                                c14726g4 = c14726g2;
                                obj = null;
                            }
                            i10 = i13;
                            c14726g = c14726g4;
                            if (c14726g.a() == i10) {
                                try {
                                } catch (AnnotatedException e13) {
                                    e10 = e13;
                                }
                                if (!p10.e()) {
                                    try {
                                        a(rVar, new C13512y(new C13513z(0, new C13482F(new C13481E(4, J.e(x509Certificate)))), null, null), (Hj.v) vVar.clone(), date, date2, x509Certificate, x509Certificate2, publicKey, c14726g, p10, list, interfaceC12950f);
                                        if (!z11) {
                                            if (e10 == null) {
                                                throw new AnnotatedException("No valid CRL found.", e10);
                                            }
                                            throw e10;
                                        }
                                        if (c14726g.a() == i10) {
                                            if (p10.e() || c14726g.a() != i10) {
                                                c14726g3 = c14726g;
                                            } else {
                                                c14726g3 = c14726g;
                                                c14726g3.c(12);
                                            }
                                            if (c14726g3.a() == 12) {
                                                throw new AnnotatedException("Certificate status could not be determined.");
                                            }
                                            return;
                                        }
                                        C14726g c14726g5 = c14726g;
                                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z");
                                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                                        throw new AnnotatedException(("Certificate revocation after " + simpleDateFormat.format(c14726g5.b())) + ", reason: " + f101656s[c14726g5.a()]);
                                    } catch (RuntimeException e14) {
                                        throw new AnnotatedException("Issuer from certificate for CRL could not be reencoded.", e14);
                                    }
                                }
                            }
                            z11 = z10;
                            if (!z11) {
                            }
                        }
                    } catch (Exception e15) {
                        throw new AnnotatedException("Distribution points could not be read.", e15);
                    }
                }
                i10 = 11;
                c14726g = c14726g4;
                e10 = null;
                z10 = false;
                if (c14726g.a() == i10) {
                }
                z11 = z10;
                if (!z11) {
                }
            } catch (AnnotatedException e16) {
                throw new AnnotatedException("No additional CRL locations could be decoded from CRL distribution point extension.", e16);
            }
        } catch (Exception e17) {
            throw new AnnotatedException("CRL distribution point extension could not be read.", e17);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00aa, code lost:
    
        r5 = r20[r3].iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b4, code lost:
    
        if (r5.hasNext() == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b6, code lost:
    
        r6 = (org.bouncycastle.jce.provider.I) r5.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c6, code lost:
    
        if ("2.5.29.32.0".equals(r6.getValidPolicy()) == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d0, code lost:
    
        r5 = ((oh.E) org.bouncycastle.jce.provider.C14725f.n(r4, org.bouncycastle.jce.provider.N.f101639b)).J();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d8, code lost:
    
        if (r5.hasMoreElements() == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00da, code lost:
    
        r7 = hi.W.u(r5.nextElement());
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ee, code lost:
    
        if ("2.5.29.32.0".equals(r7.v().J()) == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f0, code lost:
    
        r5 = org.bouncycastle.jce.provider.C14725f.q(r7.x());
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f8, code lost:
    
        r10 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0112, code lost:
    
        if (r4.getCriticalExtensionOIDs() == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0114, code lost:
    
        r12 = r4.getCriticalExtensionOIDs().contains(org.bouncycastle.jce.provider.N.f101639b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0121, code lost:
    
        r9 = (org.bouncycastle.jce.provider.I) r6.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0130, code lost:
    
        if ("2.5.29.32.0".equals(r9.getValidPolicy()) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0132, code lost:
    
        r8 = new org.bouncycastle.jce.provider.I(new java.util.ArrayList(), r3, (java.util.Set) r13.get(r11), r9, r10, r11, r12);
        r9.a(r8);
        r20[r3].add(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0120, code lost:
    
        r12 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00fa, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0102, code lost:
    
        throw new org.bouncycastle.jce.exception.ExtCertPathValidatorException("Policy qualifier info set could not be decoded.", r0, r18, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0103, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x010b, code lost:
    
        throw new java.security.cert.CertPathValidatorException("Policy information could not be decoded.", r0, r18, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x010c, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0156, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x015e, code lost:
    
        throw new org.bouncycastle.jce.exception.ExtCertPathValidatorException("Certificate policies extension could not be decoded.", r0, r18, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01b3, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static I c(CertPath certPath, int i10, List[] listArr, I i11, int i12) throws CertPathValidatorException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i10);
        int size = certificates.size() - i10;
        try {
            oh.E G10 = oh.E.G(C14725f.n(x509Certificate, f101640c));
            if (G10 == null) {
                return i11;
            }
            HashMap hashMap = new HashMap();
            HashSet<String> hashSet = new HashSet();
            boolean z10 = false;
            for (int i13 = 0; i13 < G10.size(); i13++) {
                oh.E e10 = (oh.E) G10.I(i13);
                String J10 = ((C14549x) e10.I(0)).J();
                String J11 = ((C14549x) e10.I(1)).J();
                if (hashMap.containsKey(J10)) {
                    ((Set) hashMap.get(J10)).add(J11);
                } else {
                    HashSet hashSet2 = new HashSet();
                    hashSet2.add(J11);
                    hashMap.put(J10, hashSet2);
                    hashSet.add(J10);
                }
            }
            I i14 = i11;
            for (String str : hashSet) {
                if (i12 > 0) {
                    Iterator it = listArr[size].iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        I i15 = (I) it.next();
                        if (i15.getValidPolicy().equals(str)) {
                            i15.f101615c = (Set) hashMap.get(str);
                            break;
                        }
                    }
                } else if (i12 <= 0) {
                    Iterator it2 = listArr[size].iterator();
                    while (it2.hasNext()) {
                        I i16 = (I) it2.next();
                        if (i16.getValidPolicy().equals(str)) {
                            ((I) i16.getParent()).d(i16);
                            it2.remove();
                            for (int i17 = size - 1; i17 >= 0; i17--) {
                                List list = listArr[i17];
                                I i18 = i14;
                                for (int i19 = 0; i19 < list.size(); i19++) {
                                    I i20 = (I) list.get(i19);
                                    if (!i20.c() && (i18 = C14725f.C(i18, listArr, i20)) == null) {
                                        break;
                                    }
                                }
                                i14 = i18;
                            }
                        }
                    }
                }
                z10 = false;
            }
            return i14;
        } catch (AnnotatedException e11) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e11, certPath, i10);
        }
    }

    public static void d(CertPath certPath, int i10) throws CertPathValidatorException {
        try {
            oh.E G10 = oh.E.G(C14725f.n((X509Certificate) certPath.getCertificates().get(i10), f101640c));
            if (G10 != null) {
                for (int i11 = 0; i11 < G10.size(); i11++) {
                    try {
                        oh.E G11 = oh.E.G(G10.I(i11));
                        C14549x K10 = C14549x.K(G11.I(0));
                        C14549x K11 = C14549x.K(G11.I(1));
                        if ("2.5.29.32.0".equals(K10.J())) {
                            throw new CertPathValidatorException("IssuerDomainPolicy is anyPolicy", null, certPath, i10);
                        }
                        if ("2.5.29.32.0".equals(K11.J())) {
                            throw new CertPathValidatorException("SubjectDomainPolicy is anyPolicy", null, certPath, i10);
                        }
                    } catch (Exception e10) {
                        throw new ExtCertPathValidatorException("Policy mappings extension contents could not be decoded.", e10, certPath, i10);
                    }
                }
            }
        } catch (AnnotatedException e11) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e11, certPath, i10);
        }
    }

    public static void e(CertPath certPath, int i10, H h10) throws CertPathValidatorException {
        try {
            oh.E G10 = oh.E.G(C14725f.n((X509Certificate) certPath.getCertificates().get(i10), f101649l));
            hi.P y10 = G10 != null ? hi.P.y(G10) : null;
            if (y10 != null) {
                hi.H[] z10 = y10.z();
                if (z10 != null) {
                    try {
                        h10.h(z10);
                    } catch (Exception e10) {
                        throw new ExtCertPathValidatorException("Permitted subtrees cannot be build from name constraints extension.", e10, certPath, i10);
                    }
                }
                hi.H[] x10 = y10.x();
                if (x10 != null) {
                    for (int i11 = 0; i11 != x10.length; i11++) {
                        try {
                            h10.a(x10[i11]);
                        } catch (Exception e11) {
                            throw new ExtCertPathValidatorException("Excluded subtrees cannot be build from name constraints extension.", e11, certPath, i10);
                        }
                    }
                }
            }
        } catch (Exception e12) {
            throw new ExtCertPathValidatorException("Name constraints extension could not be decoded.", e12, certPath, i10);
        }
    }

    public static int f(CertPath certPath, int i10, int i11) {
        return (C14725f.x((X509Certificate) certPath.getCertificates().get(i10)) || i11 == 0) ? i11 : i11 - 1;
    }

    public static int g(CertPath certPath, int i10, int i11) {
        return (C14725f.x((X509Certificate) certPath.getCertificates().get(i10)) || i11 == 0) ? i11 : i11 - 1;
    }

    public static int h(CertPath certPath, int i10, int i11) {
        return (C14725f.x((X509Certificate) certPath.getCertificates().get(i10)) || i11 == 0) ? i11 : i11 - 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        r3 = oh.C14539s.G(r1, false).O();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
    
        if (r3 >= r5) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int i(CertPath certPath, int i10, int i11) throws CertPathValidatorException {
        try {
            oh.E G10 = oh.E.G(C14725f.n((X509Certificate) certPath.getCertificates().get(i10), f101645h));
            if (G10 != null) {
                Enumeration J10 = G10.J();
                while (true) {
                    if (!J10.hasMoreElements()) {
                        break;
                    }
                    try {
                        oh.M R10 = oh.M.R(J10.nextElement());
                        if (R10.g() == 0) {
                            break;
                        }
                    } catch (IllegalArgumentException e10) {
                        throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", e10, certPath, i10);
                    }
                }
            }
            return i11;
        } catch (Exception e11) {
            throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", e11, certPath, i10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
    
        r4 = oh.C14539s.G(r1, false).O();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
    
        if (r4 >= r6) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int j(CertPath certPath, int i10, int i11) throws CertPathValidatorException {
        try {
            oh.E G10 = oh.E.G(C14725f.n((X509Certificate) certPath.getCertificates().get(i10), f101645h));
            if (G10 != null) {
                Enumeration J10 = G10.J();
                while (true) {
                    if (!J10.hasMoreElements()) {
                        break;
                    }
                    try {
                        oh.M R10 = oh.M.R(J10.nextElement());
                        if (R10.g() == 1) {
                            break;
                        }
                    } catch (IllegalArgumentException e10) {
                        throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", e10, certPath, i10);
                    }
                }
            }
            return i11;
        } catch (Exception e11) {
            throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", e11, certPath, i10);
        }
    }

    public static int k(CertPath certPath, int i10, int i11) throws CertPathValidatorException {
        int O10;
        try {
            C14539s F10 = C14539s.F(C14725f.n((X509Certificate) certPath.getCertificates().get(i10), f101641d));
            return (F10 == null || (O10 = F10.O()) >= i11) ? i11 : O10;
        } catch (Exception e10) {
            throw new ExtCertPathValidatorException("Inhibit any-policy extension cannot be decoded.", e10, certPath, i10);
        }
    }

    public static void l(CertPath certPath, int i10) throws CertPathValidatorException {
        try {
            C13500l v10 = C13500l.v(C14725f.n((X509Certificate) certPath.getCertificates().get(i10), f101646i));
            if (v10 == null) {
                throw new CertPathValidatorException("Intermediate certificate lacks BasicConstraints", null, certPath, i10);
            }
            if (!v10.z()) {
                throw new CertPathValidatorException("Not a CA certificate", null, certPath, i10);
            }
        } catch (Exception e10) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e10, certPath, i10);
        }
    }

    public static int m(CertPath certPath, int i10, int i11) throws CertPathValidatorException {
        if (C14725f.x((X509Certificate) certPath.getCertificates().get(i10))) {
            return i11;
        }
        if (i11 > 0) {
            return i11 - 1;
        }
        throw new ExtCertPathValidatorException("Max path length not greater than zero", null, certPath, i10);
    }

    public static int n(CertPath certPath, int i10, int i11) throws CertPathValidatorException {
        C14539s y10;
        try {
            C13500l v10 = C13500l.v(C14725f.n((X509Certificate) certPath.getCertificates().get(i10), f101646i));
            return (v10 == null || !v10.z() || (y10 = v10.y()) == null) ? i11 : Math.min(i11, y10.M());
        } catch (Exception e10) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e10, certPath, i10);
        }
    }

    public static void o(CertPath certPath, int i10) throws CertPathValidatorException {
        boolean[] keyUsage = ((X509Certificate) certPath.getCertificates().get(i10)).getKeyUsage();
        if (keyUsage != null) {
            if (keyUsage.length <= 5 || !keyUsage[5]) {
                throw new ExtCertPathValidatorException("Issuer certificate keyusage extension is critical and does not permit key signing.", null, certPath, i10);
            }
        }
    }

    public static void p(CertPath certPath, int i10, Set set, List list) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i10);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e10) {
                throw new CertPathValidatorException(e10.getMessage(), e10.getCause(), certPath, i10);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + ((Object) set), null, certPath, i10);
    }

    public static void q(C13512y c13512y, Object obj, X509CRL x509crl) throws AnnotatedException {
        oh.B n10 = C14725f.n(x509crl, f101642e);
        boolean z10 = true;
        boolean z11 = n10 != null && hi.L.y(n10).B();
        try {
            byte[] encoded = J.d(x509crl).getEncoded();
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
            } else if (!J.d(x509crl).equals(J.c(obj))) {
                z10 = false;
            }
            if (!z10) {
                throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
            }
        } catch (IOException e11) {
            throw new AnnotatedException("Exception encoding CRL issuer: " + e11.getMessage(), e11);
        }
    }

    public static void r(C13512y c13512y, Object obj, X509CRL x509crl) throws AnnotatedException {
        int i10;
        C13481E[] c13481eArr;
        try {
            hi.L y10 = hi.L.y(C14725f.n(x509crl, f101642e));
            if (y10 != null) {
                if (y10.x() != null) {
                    C13513z x10 = hi.L.y(y10).x();
                    ArrayList arrayList = new ArrayList();
                    if (x10.y() == 0) {
                        for (C13481E c13481e : C13482F.w(x10.x()).y()) {
                            arrayList.add(c13481e);
                        }
                    }
                    if (x10.y() == 1) {
                        C14518h c14518h = new C14518h();
                        try {
                            Enumeration J10 = oh.E.G(J.d(x509crl)).J();
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
                                c13481eArr[0] = new C13481E(J.c(obj));
                            } catch (Exception e11) {
                                throw new AnnotatedException("Could not read certificate issuer.", e11);
                            }
                        }
                        y12 = c13481eArr;
                        for (int i11 = 0; i11 < y12.length; i11++) {
                            Enumeration J11 = oh.E.G(y12[i11].x().r()).J();
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
                    C13500l v10 = C13500l.v(C14725f.n((X509Extension) obj, f101646i));
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

    public static void s(X509CRL x509crl, X509CRL x509crl2, Hj.v vVar) throws AnnotatedException {
        if (x509crl == null) {
            return;
        }
        if (x509crl.hasUnsupportedCriticalExtension()) {
            throw new AnnotatedException("delta CRL has unsupported critical extensions");
        }
        try {
            String str = f101642e;
            hi.L y10 = hi.L.y(C14725f.n(x509crl2, str));
            if (vVar.C()) {
                if (!J.d(x509crl).equals(J.d(x509crl2))) {
                    throw new AnnotatedException("Complete CRL issuer does not match delta CRL issuer.");
                }
                try {
                    hi.L y11 = hi.L.y(C14725f.n(x509crl, str));
                    if (y10 != null ? !y10.equals(y11) : y11 != null) {
                        throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                    }
                    try {
                        String str2 = f101650m;
                        oh.B n10 = C14725f.n(x509crl2, str2);
                        try {
                            oh.B n11 = C14725f.n(x509crl, str2);
                            if (n10 == null) {
                                throw new AnnotatedException("CRL authority key identifier is null.");
                            }
                            if (n11 == null) {
                                throw new AnnotatedException("Delta CRL authority key identifier is null.");
                            }
                            if (!n10.A(n11)) {
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
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e13);
        }
    }

    public static P t(X509CRL x509crl, C13512y c13512y) throws AnnotatedException {
        try {
            hi.L y10 = hi.L.y(C14725f.n(x509crl, f101642e));
            if (y10 != null && y10.A() != null && c13512y.A() != null) {
                return new P(c13512y.A()).d(new P(y10.A()));
            }
            if ((y10 == null || y10.A() == null) && c13512y.A() == null) {
                return P.f101661b;
            }
            return (c13512y.A() == null ? P.f101661b : new P(c13512y.A())).d(y10 == null ? P.f101661b : new P(y10.A()));
        } catch (Exception e10) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Set u(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, Hj.v vVar, List list, InterfaceC12950f interfaceC12950f) throws AnnotatedException {
        int i10;
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(J.d(x509crl).getEncoded());
            Hj.t<? extends Certificate> a10 = new t.b(x509CertSelector).a();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                C14725f.b(linkedHashSet, a10, vVar.n());
                C14725f.b(linkedHashSet, a10, vVar.m());
                linkedHashSet.add(x509Certificate);
                Iterator<E> it = linkedHashSet.iterator();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
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
                            CertPathBuilderSpi e10 = f101638a != null ? new E(true) : new D(true);
                            X509CertSelector x509CertSelector2 = new X509CertSelector();
                            x509CertSelector2.setCertificate(x509Certificate2);
                            v.b s10 = new v.b(vVar).s(new t.b(x509CertSelector2).a());
                            if (list.contains(x509Certificate2)) {
                                s10.r(false);
                            } else {
                                s10.r(true);
                            }
                            List<? extends Certificate> certificates = e10.engineBuild(new u.b(s10.q()).e()).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(C14725f.o(certificates, 0, interfaceC12950f));
                        } catch (CertPathBuilderException e11) {
                            throw new AnnotatedException("CertPath for CRL signer failed to validate.", e11);
                        } catch (CertPathValidatorException e12) {
                            throw new AnnotatedException("Public key of issuer certificate of CRL could not be retrieved.", e12);
                        } catch (Exception e13) {
                            throw new AnnotatedException(e13.getMessage());
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
            } catch (AnnotatedException e14) {
                throw new AnnotatedException("Issuer certificate for CRL cannot be searched.", e14);
            }
        } catch (IOException e15) {
            throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate for CRL could not be set.", e15);
        }
    }

    public static PublicKey v(X509CRL x509crl, Set set) throws AnnotatedException {
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

    public static X509CRL w(Set set, PublicKey publicKey) throws AnnotatedException {
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

    public static void x(Date date, X509CRL x509crl, Object obj, C14726g c14726g, Hj.v vVar) throws AnnotatedException {
        if (!vVar.C() || x509crl == null) {
            return;
        }
        C14725f.k(date, x509crl, obj, c14726g);
    }

    public static void y(Date date, X509CRL x509crl, Object obj, C14726g c14726g) throws AnnotatedException {
        if (c14726g.a() == 11) {
            C14725f.k(date, x509crl, obj, c14726g);
        }
    }

    public static void z(CertPath certPath, Hj.v vVar, Date date, Hj.q qVar, int i10, PublicKey publicKey, boolean z10, C13228d c13228d, X509Certificate x509Certificate) throws CertPathValidatorException {
        X509Certificate x509Certificate2 = (X509Certificate) certPath.getCertificates().get(i10);
        if (!z10) {
            try {
                C14725f.E(x509Certificate2, publicKey, vVar.t());
            } catch (GeneralSecurityException e10) {
                throw new ExtCertPathValidatorException("Could not validate certificate signature.", e10, certPath, i10);
            }
        }
        try {
            Date s10 = C14725f.s(date, vVar.x(), certPath, i10);
            try {
                x509Certificate2.checkValidity(s10);
                if (qVar != null) {
                    qVar.b(new Hj.r(vVar, s10, certPath, i10, x509Certificate, publicKey));
                    qVar.check(x509Certificate2);
                }
                C13228d e11 = J.e(x509Certificate2);
                if (e11.equals(c13228d)) {
                    return;
                }
                throw new ExtCertPathValidatorException("IssuerName(" + ((Object) e11) + ") does not match SubjectName(" + ((Object) c13228d) + ") of signing certificate.", null, certPath, i10);
            } catch (CertificateExpiredException e12) {
                throw new ExtCertPathValidatorException("Could not validate certificate: " + e12.getMessage(), e12, certPath, i10);
            } catch (CertificateNotYetValidException e13) {
                throw new ExtCertPathValidatorException("Could not validate certificate: " + e13.getMessage(), e13, certPath, i10);
            }
        } catch (AnnotatedException e14) {
            throw new ExtCertPathValidatorException("Could not validate time of certificate.", e14, certPath, i10);
        }
    }
}
