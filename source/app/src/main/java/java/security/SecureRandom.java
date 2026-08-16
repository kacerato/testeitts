package java.security;

import java.util.Random;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/SecureRandom.class
 */
public class SecureRandom extends Random {
    public SecureRandom() {
        throw new RuntimeException("Stub!");
    }

    public SecureRandom(byte[] seed) {
        throw new RuntimeException("Stub!");
    }

    public SecureRandom(SecureRandomSpi secureRandomSpi, Provider provider) {
        throw new RuntimeException("Stub!");
    }

    public static SecureRandom getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static SecureRandom getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static SecureRandom getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setSeed(byte[] seed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setSeed(long seed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void nextBytes(byte[] bytes) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected final int next(int numBits) {
        throw new RuntimeException("Stub!");
    }

    public static byte[] getSeed(int numBytes) {
        throw new RuntimeException("Stub!");
    }

    public byte[] generateSeed(int numBytes) {
        throw new RuntimeException("Stub!");
    }

    public static SecureRandom getInstanceStrong() throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }
}
