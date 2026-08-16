package javax.crypto;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/Mac.class
 */
public class Mac implements Cloneable {
    protected Mac(MacSpi macSpi, Provider provider, String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public final String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public static final Mac getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static final Mac getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static final Mac getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final int getMacLength() {
        throw new RuntimeException("Stub!");
    }

    public final void init(Key key) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final void init(Key key, AlgorithmParameterSpec params) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final void update(byte input) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final void update(byte[] input) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final void update(byte[] input, int offset, int len) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final void update(ByteBuffer input) {
        throw new RuntimeException("Stub!");
    }

    public final byte[] doFinal() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final void doFinal(byte[] output, int outOffset) throws ShortBufferException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final byte[] doFinal(byte[] input) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final void reset() {
        throw new RuntimeException("Stub!");
    }

    public final Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
