package javax.crypto;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/ExemptionMechanism.class
 */
public class ExemptionMechanism {
    protected ExemptionMechanism(ExemptionMechanismSpi exmechSpi, Provider provider, String mechanism) {
        throw new RuntimeException("Stub!");
    }

    public final String getName() {
        throw new RuntimeException("Stub!");
    }

    public static final ExemptionMechanism getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static final ExemptionMechanism getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static final ExemptionMechanism getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isCryptoAllowed(Key key) throws ExemptionMechanismException {
        throw new RuntimeException("Stub!");
    }

    public final int getOutputSize(int inputLen) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final void init(Key key) throws InvalidKeyException, ExemptionMechanismException {
        throw new RuntimeException("Stub!");
    }

    public final void init(Key key, AlgorithmParameterSpec params) throws InvalidKeyException, InvalidAlgorithmParameterException, ExemptionMechanismException {
        throw new RuntimeException("Stub!");
    }

    public final void init(Key key, AlgorithmParameters params) throws InvalidKeyException, InvalidAlgorithmParameterException, ExemptionMechanismException {
        throw new RuntimeException("Stub!");
    }

    public final byte[] genExemptionBlob() throws IllegalStateException, ExemptionMechanismException {
        throw new RuntimeException("Stub!");
    }

    public final int genExemptionBlob(byte[] output) throws IllegalStateException, ShortBufferException, ExemptionMechanismException {
        throw new RuntimeException("Stub!");
    }

    public final int genExemptionBlob(byte[] output, int outputOffset) throws IllegalStateException, ShortBufferException, ExemptionMechanismException {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }
}
