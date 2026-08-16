package java.security;

import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/MessageDigest.class
 */
public abstract class MessageDigest extends MessageDigestSpi {
    public MessageDigest(String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public static MessageDigest getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static MessageDigest getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static MessageDigest getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public void update(byte input) {
        throw new RuntimeException("Stub!");
    }

    public void update(byte[] input, int offset, int len) {
        throw new RuntimeException("Stub!");
    }

    public void update(byte[] input) {
        throw new RuntimeException("Stub!");
    }

    public final void update(ByteBuffer input) {
        throw new RuntimeException("Stub!");
    }

    public byte[] digest() {
        throw new RuntimeException("Stub!");
    }

    public int digest(byte[] buf, int offset, int len) throws DigestException {
        throw new RuntimeException("Stub!");
    }

    public byte[] digest(byte[] input) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isEqual(byte[] digesta, byte[] digestb) {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }

    public final String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public final int getDigestLength() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
