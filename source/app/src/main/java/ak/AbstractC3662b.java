package ak;

import dk.C12947c;
import dk.InterfaceC12950f;
import java.security.AlgorithmParameterGeneratorSpi;
import java.security.AlgorithmParameters;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;

public abstract class AbstractC3662b extends AlgorithmParameterGeneratorSpi {

    public SecureRandom f32319b;

    public final InterfaceC12950f f32318a = new C12947c();

    public int f32320c = 1024;

    public final AlgorithmParameters a(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return this.f32318a.l(str);
    }

    @Override
    public void engineInit(int i10, SecureRandom secureRandom) {
        this.f32320c = i10;
        this.f32319b = secureRandom;
    }
}
