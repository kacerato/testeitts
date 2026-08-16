package El;

import Bi.C2371c;
import Bi.G;
import Bi.r;
import hl.C13532e;
import hl.g;
import hl.h;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

public class e extends KeyPairGenerator {

    public C13532e f6058a;

    public SecureRandom f6059b;

    public boolean f6060c;

    public e() {
        super("NH");
        this.f6058a = new C13532e();
        this.f6059b = r.h();
        this.f6060c = false;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f6060c) {
            this.f6058a.b(new G(this.f6059b, 1024));
            this.f6060c = true;
        }
        C2371c a10 = this.f6058a.a();
        return new KeyPair(new b((h) a10.b()), new a((g) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        if (i10 != 1024) {
            throw new IllegalArgumentException("strength must be 1024 bits");
        }
        this.f6058a.b(new G(secureRandom, 1024));
        this.f6060c = true;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("parameter object not recognised");
    }
}
