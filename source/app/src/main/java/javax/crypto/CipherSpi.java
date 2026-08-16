package javax.crypto;

import java.nio.ByteBuffer;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/CipherSpi.class
 */
public abstract class CipherSpi {
    protected abstract void engineSetMode(String str) throws NoSuchAlgorithmException;

    protected abstract void engineSetPadding(String str) throws NoSuchPaddingException;

    protected abstract int engineGetBlockSize();

    protected abstract int engineGetOutputSize(int i10);

    protected abstract byte[] engineGetIV();

    protected abstract AlgorithmParameters engineGetParameters();

    protected abstract void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException;

    protected abstract void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    protected abstract void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    protected abstract byte[] engineUpdate(byte[] bArr, int i10, int i11);

    protected abstract int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException;

    public abstract byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException;

    protected abstract int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException;

    public CipherSpi() {
        throw new RuntimeException("Stub!");
    }

    protected int engineUpdate(ByteBuffer input, ByteBuffer output) throws ShortBufferException {
        throw new RuntimeException("Stub!");
    }

    protected int engineDoFinal(ByteBuffer input, ByteBuffer output) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        throw new RuntimeException("Stub!");
    }

    protected byte[] engineWrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    protected Key engineUnwrap(byte[] wrappedKey, String wrappedKeyAlgorithm, int wrappedKeyType) throws InvalidKeyException, NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    protected int engineGetKeySize(Key key) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    protected void engineUpdateAAD(byte[] src, int offset, int len) {
        throw new RuntimeException("Stub!");
    }

    protected void engineUpdateAAD(ByteBuffer src) {
        throw new RuntimeException("Stub!");
    }
}
