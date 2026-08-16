package org.bouncycastle.jce.provider;

import Hj.v;
import dk.C12947c;
import dk.InterfaceC12950f;
import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.PKIXParameters;
import java.util.Date;
import java.util.HashSet;

public class B extends CertPathValidatorSpi {

    public final InterfaceC12950f f101602a = new C12947c();

    @Override
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertPathValidatorException, InvalidAlgorithmParameterException {
        Hj.v vVar;
        if (!(certPathParameters instanceof org.bouncycastle.x509.f) && !(certPathParameters instanceof Hj.v)) {
            throw new InvalidAlgorithmParameterException("Parameters must be a " + org.bouncycastle.x509.f.class.getName() + " instance.");
        }
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        if (certPathParameters instanceof PKIXParameters) {
            v.b bVar = new v.b((PKIXParameters) certPathParameters);
            if (certPathParameters instanceof org.bouncycastle.x509.f) {
                org.bouncycastle.x509.f fVar = (org.bouncycastle.x509.f) certPathParameters;
                bVar.v(fVar.n());
                bVar.w(fVar.l());
                fVar.e();
                fVar.h();
                fVar.g();
            }
            vVar = bVar.q();
        } else {
            vVar = (Hj.v) certPathParameters;
        }
        C14725f.t(vVar, new Date());
        vVar.u();
        throw new InvalidAlgorithmParameterException("TargetConstraints must be an instance of " + org.bouncycastle.x509.k.class.getName() + " for " + getClass().getName() + " class.");
    }
}
