package java.security;

import java.nio.ByteBuffer;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/SignatureSpi.class
 */
public abstract class SignatureSpi {
    protected SecureRandom appRandom;

    protected abstract void engineInitVerify(PublicKey publicKey) throws InvalidKeyException;

    protected abstract void engineInitSign(PrivateKey privateKey) throws InvalidKeyException;

    protected abstract void engineUpdate(byte b10) throws SignatureException;

    protected abstract void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException;

    protected abstract byte[] engineSign() throws SignatureException;

    protected abstract boolean engineVerify(byte[] bArr) throws SignatureException;

    @Deprecated
    protected abstract void engineSetParameter(String str, Object obj) throws InvalidParameterException;

    @Deprecated
    protected abstract Object engineGetParameter(String str) throws InvalidParameterException;

    public SignatureSpi() {
        throw new RuntimeException("Stub!");
    }

    protected void engineInitSign(PrivateKey privateKey, SecureRandom random) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    protected void engineUpdate(ByteBuffer input) {
        throw new RuntimeException("Stub!");
    }

    protected int engineSign(byte[] outbuf, int offset, int len) throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    protected boolean engineVerify(byte[] sigBytes, int offset, int length) throws SignatureException {
        throw new RuntimeException("Stub!");
    }

    protected void engineSetParameter(AlgorithmParameterSpec params) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    protected AlgorithmParameters engineGetParameters() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
