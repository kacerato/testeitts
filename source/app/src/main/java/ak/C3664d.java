package ak;

import Bi.C2378j;
import Bi.G;
import Bi.r;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class C3664d extends KeyGeneratorSpi {

    public String f32321a;

    public int f32322b;

    public int f32323c;

    public C2378j f32324d;

    public boolean f32325e = true;

    public C3664d(String str, int i10, C2378j c2378j) {
        this.f32321a = str;
        this.f32323c = i10;
        this.f32322b = i10;
        this.f32324d = c2378j;
    }

    @Override
    public SecretKey engineGenerateKey() {
        if (this.f32325e) {
            this.f32324d.b(new G(r.h(), this.f32323c));
            this.f32325e = false;
        }
        return new SecretKeySpec(this.f32324d.a(), this.f32321a);
    }

    @Override
    public void engineInit(int i10, SecureRandom secureRandom) {
        if (secureRandom == null) {
            try {
                secureRandom = r.h();
            } catch (IllegalArgumentException e10) {
                throw new InvalidParameterException(e10.getMessage());
            }
        }
        this.f32324d.b(new G(secureRandom, i10));
        this.f32325e = false;
    }

    @Override
    public void engineInit(SecureRandom secureRandom) {
        if (secureRandom != null) {
            this.f32324d.b(new G(secureRandom, this.f32323c));
            this.f32325e = false;
        }
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("Not Implemented");
    }
}
