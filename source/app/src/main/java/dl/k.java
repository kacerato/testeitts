package Dl;

import Bi.C2371c;
import Rl.q;
import Rl.r;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

public class k extends KeyPairGenerator {

    public Rl.l f5293a;

    public k() {
        super("McEliece");
    }

    @Override
    public KeyPair generateKeyPair() {
        C2371c a10 = this.f5293a.a();
        return new KeyPair(new d((r) a10.b()), new c((q) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        try {
            initialize(new Ol.m(), secureRandom);
        } catch (InvalidAlgorithmParameterException unused) {
        }
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        this.f5293a = new Rl.l();
        Ol.m mVar = (Ol.m) algorithmParameterSpec;
        this.f5293a.b(new Rl.k(secureRandom, new Rl.o(mVar.b(), mVar.d())));
    }
}
