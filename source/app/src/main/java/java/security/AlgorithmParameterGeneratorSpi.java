package java.security;

import java.security.spec.AlgorithmParameterSpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/AlgorithmParameterGeneratorSpi.class
 */
public abstract class AlgorithmParameterGeneratorSpi {
    protected abstract void engineInit(int i10, SecureRandom secureRandom);

    protected abstract void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException;

    protected abstract AlgorithmParameters engineGenerateParameters();

    public AlgorithmParameterGeneratorSpi() {
        throw new RuntimeException("Stub!");
    }
}
