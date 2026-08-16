package Qj;

import Bi.r;
import Oi.w;
import Xi.C3336c0;
import hk.n;
import hk.p;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

public class a extends org.bouncycastle.jcajce.provider.asymmetric.util.b {

    public SecureRandom f22439b;

    public int f22440c = 1024;

    @Override
    public AlgorithmParameters engineGenerateParameters() {
        w wVar = new w();
        SecureRandom secureRandom = this.f22439b;
        if (secureRandom != null) {
            wVar.b(this.f22440c, 2, secureRandom);
        } else {
            wVar.b(this.f22440c, 2, r.h());
        }
        C3336c0 a10 = wVar.a();
        try {
            AlgorithmParameters a11 = a("GOST3410");
            a11.init(new n(new p(a10.b(), a10.c(), a10.a())));
            return a11;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    @Override
    public void engineInit(int i10, SecureRandom secureRandom) {
        this.f22440c = i10;
        this.f22439b = secureRandom;
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for GOST3410 parameter generation.");
    }
}
