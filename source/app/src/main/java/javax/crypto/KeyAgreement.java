package javax.crypto;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/KeyAgreement.class
 */
public class KeyAgreement {
    protected KeyAgreement(KeyAgreementSpi keyAgreeSpi, Provider provider, String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public final String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public static final KeyAgreement getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static final KeyAgreement getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static final KeyAgreement getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final void init(Key key) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final void init(Key key, SecureRandom random) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final void init(Key key, AlgorithmParameterSpec params) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final void init(Key key, AlgorithmParameterSpec params, SecureRandom random) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final Key doPhase(Key key, boolean lastPhase) throws InvalidKeyException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final byte[] generateSecret() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final int generateSecret(byte[] sharedSecret, int offset) throws IllegalStateException, ShortBufferException {
        throw new RuntimeException("Stub!");
    }

    public final SecretKey generateSecret(String algorithm) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        throw new RuntimeException("Stub!");
    }
}
