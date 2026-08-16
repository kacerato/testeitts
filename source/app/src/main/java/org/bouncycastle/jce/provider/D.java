package org.bouncycastle.jce.provider;

import Hj.u;
import Hj.v;
import hi.C13478B;
import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathParameters;
import java.security.cert.CertificateParsingException;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.PKIXCertPathBuilderResult;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.jcajce.provider.asymmetric.x509.CertificateFactory;

public class D extends CertPathBuilderSpi {

    public final boolean f101603a;

    public Exception f101604b;

    public D() {
        this(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CertPathBuilderResult a(X509Certificate x509Certificate, Hj.u uVar, List list) {
        CertPathBuilderResult certPathBuilderResult = null;
        if (list.contains(x509Certificate) || uVar.b().contains(x509Certificate)) {
            return null;
        }
        if (uVar.c() != -1 && list.size() - 1 > uVar.c()) {
            return null;
        }
        list.add(x509Certificate);
        try {
            CertificateFactory certificateFactory = new CertificateFactory();
            F f10 = new F(this.f101603a);
            try {
            } catch (AnnotatedException e10) {
                this.f101604b = e10;
            }
            if (C14725f.w(x509Certificate, uVar.a().v(), uVar.a().t())) {
                try {
                    CertPath engineGenerateCertPath = certificateFactory.engineGenerateCertPath(list);
                    try {
                        PKIXCertPathValidatorResult pKIXCertPathValidatorResult = (PKIXCertPathValidatorResult) f10.engineValidate(engineGenerateCertPath, uVar);
                        return new PKIXCertPathBuilderResult(engineGenerateCertPath, pKIXCertPathValidatorResult.getTrustAnchor(), pKIXCertPathValidatorResult.getPolicyTree(), pKIXCertPathValidatorResult.getPublicKey());
                    } catch (Exception e11) {
                        throw new AnnotatedException("Certification path could not be validated.", e11);
                    }
                } catch (Exception e12) {
                    throw new AnnotatedException("Certification path could not be constructed from certificate list.", e12);
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(uVar.a().n());
            try {
                arrayList.addAll(C14725f.g(x509Certificate.getExtensionValue(C13478B.f90534j.J()), uVar.a().r()));
                HashSet hashSet = new HashSet();
                try {
                    hashSet.addAll(C14725f.c(x509Certificate, uVar.a().m(), arrayList));
                    if (hashSet.isEmpty()) {
                        throw new AnnotatedException("No issuer certificate for certificate in certification path found.");
                    }
                    Iterator<E> it = hashSet.iterator();
                    while (it.hasNext() && certPathBuilderResult == null) {
                        certPathBuilderResult = a((X509Certificate) it.next(), uVar, list);
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
            this.f101604b = e10;
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
        Exception exc;
        u.b bVar;
        if (certPathParameters instanceof PKIXBuilderParameters) {
            PKIXBuilderParameters pKIXBuilderParameters = (PKIXBuilderParameters) certPathParameters;
            v.b bVar2 = new v.b(pKIXBuilderParameters);
            if (certPathParameters instanceof org.bouncycastle.x509.f) {
                org.bouncycastle.x509.e eVar = (org.bouncycastle.x509.e) certPathParameters;
                Iterator it = eVar.d().iterator();
                while (it.hasNext()) {
                    bVar2.n((Hj.s) it.next());
                }
                bVar = new u.b(bVar2.q());
                bVar.d(eVar.y());
                bVar.f(eVar.z());
            } else {
                bVar = new u.b(pKIXBuilderParameters);
            }
            uVar = bVar.e();
        } else {
            if (!(certPathParameters instanceof Hj.u)) {
                throw new InvalidAlgorithmParameterException("Parameters must be an instance of " + PKIXBuilderParameters.class.getName() + " or " + Hj.u.class.getName() + ".");
            }
            uVar = (Hj.u) certPathParameters;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = C14725f.d(uVar).iterator();
        CertPathBuilderResult certPathBuilderResult = null;
        while (it2.hasNext() && certPathBuilderResult == null) {
            certPathBuilderResult = a((X509Certificate) it2.next(), uVar, arrayList);
        }
        if (certPathBuilderResult == null && (exc = this.f101604b) != null) {
            if (exc instanceof AnnotatedException) {
                throw new CertPathBuilderException(this.f101604b.getMessage(), this.f101604b.getCause());
            }
            throw new CertPathBuilderException("Possible certificate chain could not be validated.", this.f101604b);
        }
        if (certPathBuilderResult == null && this.f101604b == null) {
            throw new CertPathBuilderException("Unable to find certificate chain.");
        }
        return certPathBuilderResult;
    }

    public D(boolean z10) {
        this.f101603a = z10;
    }
}
