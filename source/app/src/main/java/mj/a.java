package Mj;

import Bi.r;
import Oi.C2935k;
import Xi.C3363q;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHGenParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.jcajce.provider.asymmetric.util.n;

public class a extends org.bouncycastle.jcajce.provider.asymmetric.util.b {

    public SecureRandom f15319b;

    public int f15320c = 2048;

    public int f15321d = 0;

    @Override
    public AlgorithmParameters engineGenerateParameters() {
        C2935k c2935k = new C2935k();
        c2935k.b(this.f15320c, n.a(this.f15320c), r.i(this.f15319b));
        C3363q a10 = c2935k.a();
        try {
            AlgorithmParameters a11 = a("DH");
            a11.init(new DHParameterSpec(a10.f(), a10.b(), this.f15321d));
            return a11;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    @Override
    public void engineInit(int i10, SecureRandom secureRandom) {
        this.f15320c = i10;
        this.f15319b = secureRandom;
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DHGenParameterSpec)) {
            throw new InvalidAlgorithmParameterException("DH parameter generator requires a DHGenParameterSpec for initialisation");
        }
        DHGenParameterSpec dHGenParameterSpec = (DHGenParameterSpec) algorithmParameterSpec;
        this.f15320c = dHGenParameterSpec.getPrimeSize();
        this.f15321d = dHGenParameterSpec.getExponentSize();
        this.f15319b = secureRandom;
    }
}
