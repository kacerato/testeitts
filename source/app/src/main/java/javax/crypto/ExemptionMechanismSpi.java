package javax.crypto;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/ExemptionMechanismSpi.class
 */
public abstract class ExemptionMechanismSpi {
    protected abstract int engineGetOutputSize(int i10);

    protected abstract void engineInit(Key key) throws InvalidKeyException, ExemptionMechanismException;

    protected abstract void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException, ExemptionMechanismException;

    protected abstract void engineInit(Key key, AlgorithmParameters algorithmParameters) throws InvalidKeyException, InvalidAlgorithmParameterException, ExemptionMechanismException;

    protected abstract byte[] engineGenExemptionBlob() throws ExemptionMechanismException;

    protected abstract int engineGenExemptionBlob(byte[] bArr, int i10) throws ShortBufferException, ExemptionMechanismException;

    public ExemptionMechanismSpi() {
        throw new RuntimeException("Stub!");
    }
}
