package Dl;

import Bi.C2371c;
import Bi.r;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

public class f extends KeyPairGenerator {

    public Rl.c f5288a;

    public f() {
        super("McEliece-CCA2");
    }

    @Override
    public KeyPair generateKeyPair() {
        C2371c a10 = this.f5288a.a();
        return new KeyPair(new b((Rl.h) a10.b()), new a((Rl.g) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        this.f5288a = new Rl.c();
        this.f5288a.b(new Rl.b(secureRandom, new Rl.e()));
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        this.f5288a = new Rl.c();
        Ol.l lVar = (Ol.l) algorithmParameterSpec;
        this.f5288a.b(new Rl.b(r.h(), new Rl.e(lVar.c(), lVar.e(), lVar.a())));
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        this.f5288a = new Rl.c();
        Ol.l lVar = (Ol.l) algorithmParameterSpec;
        this.f5288a.b(new Rl.b(secureRandom, new Rl.e(lVar.c(), lVar.e(), lVar.a())));
    }
}
