package javax.crypto;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/MacSpi.class
 */
public abstract class MacSpi {
    protected abstract int engineGetMacLength();

    protected abstract void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    protected abstract void engineUpdate(byte b10);

    protected abstract void engineUpdate(byte[] bArr, int i10, int i11);

    protected abstract byte[] engineDoFinal();

    protected abstract void engineReset();

    public MacSpi() {
        throw new RuntimeException("Stub!");
    }

    protected void engineUpdate(ByteBuffer input) {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
