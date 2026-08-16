package org.bouncycastle.x509;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.PKIXParameters;
import java.security.cert.X509CertSelector;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class e extends f {

    public int f102368n;

    public Set f102369o;

    public e(Set set, org.bouncycastle.util.r rVar) throws InvalidAlgorithmParameterException {
        super(set);
        this.f102368n = 5;
        this.f102369o = Collections.EMPTY_SET;
        u(rVar);
    }

    public static f f(PKIXParameters pKIXParameters) {
        try {
            e eVar = new e(pKIXParameters.getTrustAnchors(), o.a((X509CertSelector) pKIXParameters.getTargetCertConstraints()));
            eVar.r(pKIXParameters);
            return eVar;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    public void A(Set set) {
        if (set == null) {
            Set set2 = Collections.EMPTY_SET;
        } else {
            this.f102369o = new HashSet(set);
        }
    }

    public void B(int i10) {
        if (i10 < -1) {
            throw new InvalidParameterException("The maximum path length parameter can not be less than -1.");
        }
        this.f102368n = i10;
    }

    @Override
    public Object clone() {
        try {
            e eVar = new e(getTrustAnchors(), j());
            eVar.r(this);
            return eVar;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    @Override
    public void r(PKIXParameters pKIXParameters) {
        super.r(pKIXParameters);
        if (pKIXParameters instanceof e) {
            e eVar = (e) pKIXParameters;
            this.f102368n = eVar.f102368n;
            this.f102369o = new HashSet(eVar.f102369o);
        }
        if (pKIXParameters instanceof PKIXBuilderParameters) {
            this.f102368n = ((PKIXBuilderParameters) pKIXParameters).getMaxPathLength();
        }
    }

    public Set y() {
        return Collections.unmodifiableSet(this.f102369o);
    }

    public int z() {
        return this.f102368n;
    }
}
