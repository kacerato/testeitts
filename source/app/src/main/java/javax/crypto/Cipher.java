package javax.crypto;

import java.nio.ByteBuffer;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/Cipher.class
 */
public class Cipher {
    public static final int DECRYPT_MODE = 2;
    public static final int ENCRYPT_MODE = 1;
    public static final int PRIVATE_KEY = 2;
    public static final int PUBLIC_KEY = 1;
    public static final int SECRET_KEY = 3;
    public static final int UNWRAP_MODE = 4;
    public static final int WRAP_MODE = 3;

    public Cipher(CipherSpi cipherSpi, Provider provider, String transformation) {
        throw new RuntimeException("Stub!");
    }

    public static final Cipher getInstance(String transformation) throws NoSuchAlgorithmException, NoSuchPaddingException {
        throw new RuntimeException("Stub!");
    }

    public static final Cipher getInstance(String transformation, String provider) throws NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException {
        throw new RuntimeException("Stub!");
    }

    public static final Cipher getInstance(String transformation, Provider provider) throws NoSuchAlgorithmException, NoSuchPaddingException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public final int getBlockSize() {
        throw new RuntimeException("Stub!");
    }

    public final int getOutputSize(int inputLen) {
        throw new RuntimeException("Stub!");
    }

    public final byte[] getIV() {
        throw new RuntimeException("Stub!");
    }

    public final AlgorithmParameters getParameters() {
        throw new RuntimeException("Stub!");
    }

    public final ExemptionMechanism getExemptionMechanism() {
        throw new RuntimeException("Stub!");
    }

    public final void init(int opmode, Key key) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final void init(int opmode, Key key, SecureRandom random) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final void init(int opmode, Key key, AlgorithmParameterSpec params) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final void init(int opmode, Key key, AlgorithmParameterSpec params, SecureRandom random) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final void init(int opmode, Key key, AlgorithmParameters params) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final void init(int opmode, Key key, AlgorithmParameters params, SecureRandom random) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final void init(int opmode, Certificate certificate) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final void init(int opmode, Certificate certificate, SecureRandom random) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final byte[] update(byte[] input) {
        throw new RuntimeException("Stub!");
    }

    public final byte[] update(byte[] input, int inputOffset, int inputLen) {
        throw new RuntimeException("Stub!");
    }

    public final int update(byte[] input, int inputOffset, int inputLen, byte[] output) throws ShortBufferException {
        throw new RuntimeException("Stub!");
    }

    public final int update(byte[] input, int inputOffset, int inputLen, byte[] output, int outputOffset) throws ShortBufferException {
        throw new RuntimeException("Stub!");
    }

    public final int update(ByteBuffer input, ByteBuffer output) throws ShortBufferException {
        throw new RuntimeException("Stub!");
    }

    public final byte[] doFinal() throws IllegalBlockSizeException, BadPaddingException {
        throw new RuntimeException("Stub!");
    }

    public final int doFinal(byte[] output, int outputOffset) throws IllegalBlockSizeException, ShortBufferException, BadPaddingException {
        throw new RuntimeException("Stub!");
    }

    public final byte[] doFinal(byte[] input) throws IllegalBlockSizeException, BadPaddingException {
        throw new RuntimeException("Stub!");
    }

    public final byte[] doFinal(byte[] input, int inputOffset, int inputLen) throws IllegalBlockSizeException, BadPaddingException {
        throw new RuntimeException("Stub!");
    }

    public final int doFinal(byte[] input, int inputOffset, int inputLen, byte[] output) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        throw new RuntimeException("Stub!");
    }

    public final int doFinal(byte[] input, int inputOffset, int inputLen, byte[] output, int outputOffset) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        throw new RuntimeException("Stub!");
    }

    public final int doFinal(ByteBuffer input, ByteBuffer output) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        throw new RuntimeException("Stub!");
    }

    public final byte[] wrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final Key unwrap(byte[] wrappedKey, String wrappedKeyAlgorithm, int wrappedKeyType) throws InvalidKeyException, NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static final int getMaxAllowedKeyLength(String transformation) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static final AlgorithmParameterSpec getMaxAllowedParameterSpec(String transformation) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final void updateAAD(byte[] src) {
        throw new RuntimeException("Stub!");
    }

    public final void updateAAD(byte[] src, int offset, int len) {
        throw new RuntimeException("Stub!");
    }

    public final void updateAAD(ByteBuffer src) {
        throw new RuntimeException("Stub!");
    }
}
