package javax.crypto;

import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/KeyGeneratorSpi.class
 */
public abstract class KeyGeneratorSpi {
    protected abstract void engineInit(SecureRandom secureRandom);

    protected abstract void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException;

    protected abstract void engineInit(int i10, SecureRandom secureRandom);

    protected abstract SecretKey engineGenerateKey();

    public KeyGeneratorSpi() {
        throw new RuntimeException("Stub!");
    }
}
