package javax.crypto;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/SecretKeyFactory.class
 */
public class SecretKeyFactory {
    protected SecretKeyFactory(SecretKeyFactorySpi keyFacSpi, Provider provider, String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public static final SecretKeyFactory getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static final SecretKeyFactory getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static final SecretKeyFactory getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public final SecretKey generateSecret(KeySpec keySpec) throws InvalidKeySpecException {
        throw new RuntimeException("Stub!");
    }

    public final KeySpec getKeySpec(SecretKey key, Class<?> keySpec) throws InvalidKeySpecException {
        throw new RuntimeException("Stub!");
    }

    public final SecretKey translateKey(SecretKey key) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }
}
