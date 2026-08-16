package org.bouncycastle.operator.jcajce;

import Qk.C3017j;
import Xh.t;
import Xh.x;
import hi.C13486b;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import oh.A0;
import oh.B;
import oh.C0;
import oh.C14549x;

public class a {
    public C13486b a(C14549x c14549x, AlgorithmParameters algorithmParameters) throws InvalidAlgorithmParameterException {
        try {
            return new C13486b(c14549x, B.B(algorithmParameters.getEncoded()));
        } catch (IOException e10) {
            throw new InvalidAlgorithmParameterException("unable to encode parameters object: " + e10.getMessage());
        }
    }

    public C13486b b(C14549x c14549x, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof OAEPParameterSpec)) {
            throw new InvalidAlgorithmParameterException("unknown parameter spec passed.");
        }
        OAEPParameterSpec oAEPParameterSpec = OAEPParameterSpec.DEFAULT;
        if (algorithmParameterSpec.equals(oAEPParameterSpec)) {
            return new C13486b(c14549x, new x(x.f29164e, x.f29165f, x.f29166g));
        }
        OAEPParameterSpec oAEPParameterSpec2 = (OAEPParameterSpec) algorithmParameterSpec;
        PSource pSource = oAEPParameterSpec2.getPSource();
        if (!oAEPParameterSpec2.getMGFAlgorithm().equals(oAEPParameterSpec.getMGFAlgorithm())) {
            throw new InvalidAlgorithmParameterException("only " + oAEPParameterSpec.getMGFAlgorithm() + " mask generator supported.");
        }
        C13486b a10 = new C3017j().a(oAEPParameterSpec2.getDigestAlgorithm());
        if (a10.x() == null) {
            a10 = new C13486b(a10.u(), A0.f98776c);
        }
        C13486b a11 = new C3017j().a(((MGF1ParameterSpec) oAEPParameterSpec2.getMGFParameters()).getDigestAlgorithm());
        if (a11.x() == null) {
            a11 = new C13486b(a11.u(), A0.f98776c);
        }
        return new C13486b(c14549x, new x(a10, new C13486b(t.f29037O0, a11), new C13486b(t.f29041P0, new C0(((PSource.PSpecified) pSource).getValue()))));
    }
}
