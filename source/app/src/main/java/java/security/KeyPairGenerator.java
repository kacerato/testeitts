package java.security;

import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyPairGenerator.class
 */
public abstract class KeyPairGenerator extends KeyPairGeneratorSpi {
    public KeyPairGenerator(String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public static KeyPairGenerator getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static KeyPairGenerator getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static KeyPairGenerator getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public void initialize(int keysize) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void initialize(int keysize, SecureRandom random) {
        throw new RuntimeException("Stub!");
    }

    public void initialize(AlgorithmParameterSpec params) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void initialize(AlgorithmParameterSpec params, SecureRandom random) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final KeyPair genKeyPair() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public KeyPair generateKeyPair() {
        throw new RuntimeException("Stub!");
    }
}
