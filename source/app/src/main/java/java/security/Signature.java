package java.security;

import java.nio.ByteBuffer;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/Signature.class
 */
public abstract class Signature extends SignatureSpi {
    protected static final int SIGN = 2;
    protected static final int UNINITIALIZED = 0;
    protected static final int VERIFY = 3;
    protected int state;

    public Signature(String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public static Signature getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static Signature getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static Signature getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final void initVerify(PublicKey publicKey) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final void initVerify(java.security.cert.Certificate certificate) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final void initSign(PrivateKey privateKey) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final void initSign(PrivateKey privateKey, SecureRandom random) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public final byte[] sign() throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    public final int sign(byte[] outbuf, int offset, int len) throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    public final boolean verify(byte[] signature) throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    public final boolean verify(byte[] signature, int offset, int length) throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    public final void update(byte b10) throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    public final void update(byte[] data) throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    public final void update(byte[] data, int off, int len) throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    public final void update(ByteBuffer data) throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    public final String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void setParameter(String param, Object value) throws InvalidParameterException {
        throw new RuntimeException("Stub!");
    }

    public final void setParameter(AlgorithmParameterSpec params) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final AlgorithmParameters getParameters() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final Object getParameter(String param) throws InvalidParameterException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
