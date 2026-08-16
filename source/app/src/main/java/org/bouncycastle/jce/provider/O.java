package org.bouncycastle.jce.provider;

import Hj.t;
import Hj.u;
import Hj.v;
import dk.InterfaceC12950f;
import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13501m;
import hi.C13512y;
import hi.C13513z;
import hi.m0;
import hi.z0;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;

public class O {

    public static final String f101657a = C13478B.f90523I.J();

    public static final String f101658b = C13478B.f90522H.J();

    public static final String f101659c = C13478B.f90544t.J();

    public static final String f101660d = C13478B.f90516B.J();

    public static void a(org.bouncycastle.x509.l lVar, Set set, Set set2) throws CertPathValidatorException {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (lVar.b(str) != null) {
                throw new CertPathValidatorException("Attribute certificate contains prohibited attribute: " + str + ".");
            }
        }
        Iterator it2 = set2.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            if (lVar.b(str2) == null) {
                throw new CertPathValidatorException("Attribute certificate does not contain necessary attribute: " + str2 + ".");
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00fa, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(C13512y c13512y, org.bouncycastle.x509.l lVar, Hj.v vVar, Date date, Date date2, X509Certificate x509Certificate, C14726g c14726g, P p10, List list, InterfaceC12950f interfaceC12950f) throws AnnotatedException, RecoverableCertPathValidatorException {
        Iterator it;
        X509CRL x509crl;
        P t10;
        X509CRL x509crl2;
        if (lVar.getExtensionValue(z0.f91020G.J()) != null) {
            return;
        }
        if (date2.getTime() > date.getTime()) {
            throw new AnnotatedException("Validation time is in future.");
        }
        Iterator it2 = C14725f.l(new Hj.r(vVar, date2, null, -1, x509Certificate, null), c13512y, lVar, vVar, date2).iterator();
        boolean z10 = false;
        AnnotatedException e10 = null;
        while (it2.hasNext() && c14726g.a() == 11 && !p10.e()) {
            try {
                x509crl = (X509CRL) it2.next();
                t10 = N.t(x509crl, c13512y);
            } catch (AnnotatedException e11) {
                e10 = e11;
                it = it2;
            }
            if (t10.c(p10)) {
                it = it2;
                try {
                    PublicKey v10 = N.v(x509crl, N.u(x509crl, lVar, null, null, vVar, list, interfaceC12950f));
                    if (vVar.C()) {
                        try {
                            x509crl2 = N.w(C14725f.m(date, x509crl, vVar.m(), vVar.k(), interfaceC12950f), v10);
                        } catch (AnnotatedException e12) {
                            e10 = e12;
                        }
                    } else {
                        x509crl2 = null;
                    }
                    if (vVar.x() != 1 && lVar.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                        throw new AnnotatedException("No valid CRL for current time found.");
                        break;
                    }
                    N.q(c13512y, lVar, x509crl);
                    N.r(c13512y, lVar, x509crl);
                    N.s(x509crl2, x509crl, vVar);
                    N.x(date2, x509crl2, lVar, c14726g, vVar);
                    N.y(date2, x509crl, lVar, c14726g);
                    if (c14726g.a() == 8) {
                        c14726g.c(11);
                    }
                    p10.a(t10);
                    z10 = true;
                } catch (AnnotatedException e13) {
                    e10 = e13;
                }
                it2 = it;
            } else {
                continue;
            }
        }
        throw e10;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void c(org.bouncycastle.x509.l lVar, Hj.v vVar, Date date, Date date2, X509Certificate x509Certificate, List list, InterfaceC12950f interfaceC12950f) throws CertPathValidatorException {
        boolean z10;
        String str;
        AnnotatedException annotatedException;
        if (!vVar.B()) {
            return;
        }
        if (lVar.getExtensionValue(f101658b) != null) {
            if (lVar.getExtensionValue(f101659c) != null || lVar.getExtensionValue(f101660d) != null) {
                throw new CertPathValidatorException("No rev avail extension is set, but also an AC revocation pointer.");
            }
            return;
        }
        try {
            C13501m w10 = C13501m.w(C14725f.n(lVar, f101659c));
            List arrayList = new ArrayList();
            try {
                arrayList.addAll(C14725f.h(w10, vVar.q(), date2, interfaceC12950f));
                v.b bVar = new v.b(vVar);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    bVar.m((Hj.o) arrayList);
                }
                Hj.v q10 = bVar.q();
                C14726g c14726g = new C14726g();
                P p10 = new P();
                String str2 = "No valid CRL for distribution point found.";
                boolean z11 = true;
                if (w10 != null) {
                    try {
                        C13512y[] v10 = w10.v();
                        int i10 = 0;
                        z10 = false;
                        for (int i11 = 11; i10 < v10.length && c14726g.a() == i11 && !p10.e(); i11 = 11) {
                            try {
                                int i12 = i10;
                                str = str2;
                                try {
                                    b(v10[i10], lVar, (Hj.v) q10.clone(), date, date2, x509Certificate, c14726g, p10, list, interfaceC12950f);
                                    i10 = i12 + 1;
                                    str2 = str;
                                    z10 = true;
                                } catch (AnnotatedException e10) {
                                    e = e10;
                                    annotatedException = new AnnotatedException(str, e);
                                    if (c14726g.a() == 11) {
                                    }
                                    z11 = z10;
                                    if (!z11) {
                                    }
                                }
                            } catch (AnnotatedException e11) {
                                e = e11;
                                str = str2;
                            }
                        }
                        str = str2;
                        annotatedException = null;
                    } catch (Exception e12) {
                        throw new ExtCertPathValidatorException("Distribution points could not be read.", e12);
                    }
                } else {
                    str = "No valid CRL for distribution point found.";
                    annotatedException = null;
                    z10 = false;
                }
                if (c14726g.a() == 11) {
                    try {
                    } catch (AnnotatedException e13) {
                        annotatedException = new AnnotatedException(str, e13);
                    }
                    if (!p10.e()) {
                        try {
                            b(new C13512y(new C13513z(0, new C13482F(new C13481E(4, J.c(lVar)))), null, null), lVar, (Hj.v) q10.clone(), date, date2, x509Certificate, c14726g, p10, list, interfaceC12950f);
                            if (!z11) {
                                throw new ExtCertPathValidatorException("No valid CRL found.", annotatedException);
                            }
                            if (c14726g.a() == 11) {
                                if (!p10.e() && c14726g.a() == 11) {
                                    c14726g.c(12);
                                }
                                if (c14726g.a() == 12) {
                                    throw new CertPathValidatorException("Attribute certificate status could not be determined.");
                                }
                                return;
                            }
                            throw new CertPathValidatorException(("Attribute certificate revocation after " + ((Object) c14726g.b())) + ", reason: " + N.f101656s[c14726g.a()]);
                        } catch (Exception e14) {
                            throw new AnnotatedException("Issuer from certificate for CRL could not be reencoded.", e14);
                        }
                    }
                }
                z11 = z10;
                if (!z11) {
                }
            } catch (AnnotatedException e15) {
                throw new CertPathValidatorException("No additional CRL locations could be decoded from CRL distribution point extension.", e15);
            }
        } catch (AnnotatedException e16) {
            throw new CertPathValidatorException("CRL distribution point extension could not be read.", e16);
        }
    }

    public static CertPath d(org.bouncycastle.x509.l lVar, Hj.v vVar) throws CertPathValidatorException {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (lVar.getHolder().e() != null) {
            X509CertSelector x509CertSelector = new X509CertSelector();
            x509CertSelector.setSerialNumber(lVar.getHolder().j());
            for (Principal principal : lVar.getHolder().e()) {
                try {
                    if (principal instanceof X500Principal) {
                        x509CertSelector.setIssuer(((X500Principal) principal).getEncoded());
                    }
                    C14725f.b(linkedHashSet, new t.b(x509CertSelector).a(), vVar.m());
                } catch (IOException e10) {
                    throw new ExtCertPathValidatorException("Unable to encode X500 principal.", e10);
                } catch (AnnotatedException e11) {
                    throw new ExtCertPathValidatorException("Public key certificate for attribute certificate cannot be searched.", e11);
                }
            }
            if (linkedHashSet.isEmpty()) {
                throw new CertPathValidatorException("Public key certificate specified in base certificate ID for attribute certificate cannot be found.");
            }
        }
        if (lVar.getHolder().d() != null) {
            org.bouncycastle.x509.o oVar = new org.bouncycastle.x509.o();
            for (Principal principal2 : lVar.getHolder().d()) {
                try {
                    if (principal2 instanceof X500Principal) {
                        oVar.setIssuer(((X500Principal) principal2).getEncoded());
                    }
                    C14725f.b(linkedHashSet, new t.b(oVar).a(), vVar.m());
                } catch (IOException e12) {
                    throw new ExtCertPathValidatorException("Unable to encode X500 principal.", e12);
                } catch (AnnotatedException e13) {
                    throw new ExtCertPathValidatorException("Public key certificate for attribute certificate cannot be searched.", e13);
                }
            }
            if (linkedHashSet.isEmpty()) {
                throw new CertPathValidatorException("Public key certificate specified in entity name for attribute certificate cannot be found.");
            }
        }
        v.b bVar = new v.b(vVar);
        Iterator<E> it = linkedHashSet.iterator();
        ExtCertPathValidatorException extCertPathValidatorException = null;
        CertPathBuilderResult certPathBuilderResult = null;
        while (it.hasNext()) {
            org.bouncycastle.x509.o oVar2 = new org.bouncycastle.x509.o();
            oVar2.setCertificate((X509Certificate) it.next());
            bVar.s(new t.b(oVar2).a());
            try {
                try {
                    certPathBuilderResult = CertPathBuilder.getInstance("PKIX", C14720a.f101701e).build(new u.b(bVar.q()).e());
                } catch (InvalidAlgorithmParameterException e14) {
                    throw new RuntimeException(e14.getMessage());
                } catch (CertPathBuilderException e15) {
                    extCertPathValidatorException = new ExtCertPathValidatorException("Certification path for public key certificate of attribute certificate could not be build.", e15);
                }
            } catch (NoSuchAlgorithmException e16) {
                throw new ExtCertPathValidatorException("Support class could not be created.", e16);
            } catch (NoSuchProviderException e17) {
                throw new ExtCertPathValidatorException("Support class could not be created.", e17);
            }
        }
        if (extCertPathValidatorException == null) {
            return certPathBuilderResult.getCertPath();
        }
        throw extCertPathValidatorException;
    }

    public static CertPathValidatorResult e(CertPath certPath, Hj.v vVar) throws CertPathValidatorException {
        try {
            try {
                return CertPathValidator.getInstance("PKIX", C14720a.f101701e).validate(certPath, vVar);
            } catch (InvalidAlgorithmParameterException e10) {
                throw new RuntimeException(e10.getMessage());
            } catch (CertPathValidatorException e11) {
                throw new ExtCertPathValidatorException("Certification path for issuer certificate of attribute certificate could not be validated.", e11);
            }
        } catch (NoSuchAlgorithmException e12) {
            throw new ExtCertPathValidatorException("Support class could not be created.", e12);
        } catch (NoSuchProviderException e13) {
            throw new ExtCertPathValidatorException("Support class could not be created.", e13);
        }
    }

    public static void f(X509Certificate x509Certificate, Hj.v vVar) throws CertPathValidatorException {
        boolean[] keyUsage = x509Certificate.getKeyUsage();
        if (keyUsage != null && ((keyUsage.length <= 0 || !keyUsage[0]) && (keyUsage.length <= 1 || !keyUsage[1]))) {
            throw new CertPathValidatorException("Attribute certificate issuer public key cannot be used to validate digital signatures.");
        }
        if (x509Certificate.getBasicConstraints() != -1) {
            throw new CertPathValidatorException("Attribute certificate issuer is also a public key certificate issuer.");
        }
    }

    public static void g(X509Certificate x509Certificate, Set set) throws CertPathValidatorException {
        Iterator it = set.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            TrustAnchor trustAnchor = (TrustAnchor) it.next();
            if (x509Certificate.getSubjectX500Principal().getName(X500Principal.RFC2253).equals(trustAnchor.getCAName()) || x509Certificate.equals(trustAnchor.getTrustedCert())) {
                z10 = true;
            }
        }
        if (!z10) {
            throw new CertPathValidatorException("Attribute certificate issuer is not directly trusted.");
        }
    }

    public static void h(org.bouncycastle.x509.l lVar, Date date) throws CertPathValidatorException {
        try {
            lVar.checkValidity(date);
        } catch (CertificateExpiredException e10) {
            throw new ExtCertPathValidatorException("Attribute certificate is not valid.", e10);
        } catch (CertificateNotYetValidException e11) {
            throw new ExtCertPathValidatorException("Attribute certificate is not valid.", e11);
        }
    }

    public static void i(org.bouncycastle.x509.l lVar, CertPath certPath, CertPath certPath2, Hj.v vVar, Set set) throws CertPathValidatorException {
        Set<String> criticalExtensionOIDs = lVar.getCriticalExtensionOIDs();
        String str = f101657a;
        if (criticalExtensionOIDs.contains(str)) {
            try {
                m0.u(C14725f.n(lVar, str));
            } catch (IllegalArgumentException e10) {
                throw new ExtCertPathValidatorException("Target information extension could not be read.", e10);
            } catch (AnnotatedException e11) {
                throw new ExtCertPathValidatorException("Target information extension could not be read.", e11);
            }
        }
        criticalExtensionOIDs.remove(str);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((org.bouncycastle.x509.g) it.next()).a(lVar, certPath, certPath2, criticalExtensionOIDs);
        }
        if (criticalExtensionOIDs.isEmpty()) {
            return;
        }
        throw new CertPathValidatorException("Attribute certificate contains unsupported critical extensions: " + ((Object) criticalExtensionOIDs));
    }
}
