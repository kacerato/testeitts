package java.security;

import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyPairGeneratorSpi.class
 */
public abstract class KeyPairGeneratorSpi {
    public abstract void initialize(int i10, SecureRandom secureRandom);

    public abstract KeyPair generateKeyPair();

    public KeyPairGeneratorSpi() {
        throw new RuntimeException("Stub!");
    }

    public void initialize(AlgorithmParameterSpec params, SecureRandom random) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }
}
