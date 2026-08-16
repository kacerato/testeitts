package javax.crypto;

import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/KeyGenerator.class
 */
public class KeyGenerator {
    protected KeyGenerator(KeyGeneratorSpi keyGenSpi, Provider provider, String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public final String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public static final KeyGenerator getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static final KeyGenerator getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static final KeyGenerator getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final void init(SecureRandom random) {
        throw new RuntimeException("Stub!");
    }

    public final void init(AlgorithmParameterSpec params) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final void init(AlgorithmParameterSpec params, SecureRandom random) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final void init(int keysize) {
        throw new RuntimeException("Stub!");
    }

    public final void init(int keysize, SecureRandom random) {
        throw new RuntimeException("Stub!");
    }

    public final SecretKey generateKey() {
        throw new RuntimeException("Stub!");
    }
}
