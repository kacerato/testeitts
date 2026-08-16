package org.bouncycastle.jce.provider;

import Hj.u;
import hi.C13478B;
import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidator;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateParsingException;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.PKIXCertPathBuilderResult;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.util.StoreException;

public class A extends CertPathBuilderSpi {

    public Exception f101601a;

    public static Collection b(org.bouncycastle.x509.k kVar, List list) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof org.bouncycastle.util.t) {
                try {
                    hashSet.addAll(((org.bouncycastle.util.t) obj).a(kVar));
                } catch (StoreException e10) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e10);
                }
            }
        }
        return hashSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final CertPathBuilderResult a(org.bouncycastle.x509.l lVar, X509Certificate x509Certificate, Hj.u uVar, List list) {
        Hj.v a10;
        CertPathBuilderResult certPathBuilderResult = null;
        if (list.contains(x509Certificate) || uVar.b().contains(x509Certificate)) {
            return null;
        }
        if (uVar.c() != -1 && list.size() - 1 > uVar.c()) {
            return null;
        }
        list.add(x509Certificate);
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509", C14720a.f101701e);
            CertPathValidator certPathValidator = CertPathValidator.getInstance("RFC3281", C14720a.f101701e);
            try {
                a10 = uVar.a();
            } catch (AnnotatedException e10) {
                this.f101601a = new AnnotatedException("No valid certification path could be build.", e10);
            }
            if (C14725f.w(x509Certificate, a10.v(), a10.t())) {
                try {
                    CertPath generateCertPath = certificateFactory.generateCertPath((List<? extends Certificate>) list);
                    try {
                        PKIXCertPathValidatorResult pKIXCertPathValidatorResult = (PKIXCertPathValidatorResult) certPathValidator.validate(generateCertPath, uVar);
                        return new PKIXCertPathBuilderResult(generateCertPath, pKIXCertPathValidatorResult.getTrustAnchor(), pKIXCertPathValidatorResult.getPolicyTree(), pKIXCertPathValidatorResult.getPublicKey());
                    } catch (Exception e11) {
                        throw new AnnotatedException("Certification path could not be validated.", e11);
                    }
                } catch (Exception e12) {
                    throw new AnnotatedException("Certification path could not be constructed from certificate list.", e12);
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(a10.n());
            try {
                arrayList.addAll(C14725f.g(x509Certificate.getExtensionValue(C13478B.f90534j.J()), a10.r()));
                HashSet hashSet = new HashSet();
                try {
                    hashSet.addAll(C14725f.c(x509Certificate, a10.m(), arrayList));
                    if (hashSet.isEmpty()) {
                        throw new AnnotatedException("No issuer certificate for certificate in certification path found.");
                    }
                    Iterator<E> it = hashSet.iterator();
                    while (it.hasNext() && certPathBuilderResult == null) {
                        X509Certificate x509Certificate2 = (X509Certificate) it.next();
                        if (!x509Certificate2.getIssuerX500Principal().equals(x509Certificate2.getSubjectX500Principal())) {
                            certPathBuilderResult = a(lVar, x509Certificate2, uVar, list);
                        }
                    }
                    if (certPathBuilderResult == null) {
                        list.remove(x509Certificate);
                    }
                    return certPathBuilderResult;
                } catch (AnnotatedException e13) {
                    throw new AnnotatedException("Cannot find issuer certificate for certificate in certification path.", e13);
                }
            } catch (CertificateParsingException e14) {
                throw new AnnotatedException("No additional X.509 stores can be added from certificate locations.", e14);
            }
            this.f101601a = new AnnotatedException("No valid certification path could be build.", e10);
            if (certPathBuilderResult == null) {
            }
            return certPathBuilderResult;
        } catch (Exception unused) {
            throw new RuntimeException("Exception creating support classes.");
        }
    }

    @Override
    public CertPathBuilderResult engineBuild(CertPathParameters certPathParameters) throws CertPathBuilderException, InvalidAlgorithmParameterException {
        Hj.u uVar;
        boolean z10 = certPathParameters instanceof PKIXBuilderParameters;
        if (!z10 && !(certPathParameters instanceof org.bouncycastle.x509.e) && !(certPathParameters instanceof Hj.u)) {
            throw new InvalidAlgorithmParameterException("Parameters must be an instance of " + PKIXBuilderParameters.class.getName() + " or " + Hj.u.class.getName() + ".");
        }
        new ArrayList();
        if (z10) {
            u.b bVar = new u.b((PKIXBuilderParameters) certPathParameters);
            if (certPathParameters instanceof org.bouncycastle.x509.f) {
                org.bouncycastle.x509.e eVar = (org.bouncycastle.x509.e) certPathParameters;
                bVar.d(eVar.y());
                bVar.f(eVar.z());
                eVar.i();
            }
            uVar = bVar.e();
        } else {
            uVar = (Hj.u) certPathParameters;
        }
        new ArrayList();
        uVar.a().u();
        throw new CertPathBuilderException("TargetConstraints must be an instance of " + org.bouncycastle.x509.k.class.getName() + " for " + getClass().getName() + " class.");
    }
}
