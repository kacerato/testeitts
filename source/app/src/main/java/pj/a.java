package Pj;

import Bi.r;
import Oi.t;
import Xi.W;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHGenParameterSpec;
import javax.crypto.spec.DHParameterSpec;

public class a extends org.bouncycastle.jcajce.provider.asymmetric.util.b {

    public SecureRandom f21537b;

    public int f21538c = 1024;

    public int f21539d = 0;

    @Override
    public AlgorithmParameters engineGenerateParameters() {
        t tVar = new t();
        SecureRandom secureRandom = this.f21537b;
        if (secureRandom != null) {
            tVar.b(this.f21538c, 20, secureRandom);
        } else {
            tVar.b(this.f21538c, 20, r.h());
        }
        W a10 = tVar.a();
        try {
            AlgorithmParameters a11 = a("ElGamal");
            a11.init(new DHParameterSpec(a10.c(), a10.a(), this.f21539d));
            return a11;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    @Override
    public void engineInit(int i10, SecureRandom secureRandom) {
        this.f21538c = i10;
        this.f21537b = secureRandom;
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DHGenParameterSpec)) {
            throw new InvalidAlgorithmParameterException("DH parameter generator requires a DHGenParameterSpec for initialisation");
        }
        DHGenParameterSpec dHGenParameterSpec = (DHGenParameterSpec) algorithmParameterSpec;
        this.f21538c = dHGenParameterSpec.getPrimeSize();
        this.f21539d = dHGenParameterSpec.getExponentSize();
        this.f21537b = secureRandom;
    }
}
