package javax.crypto;

import java.security.InvalidKeyException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/SecretKeyFactorySpi.class
 */
public abstract class SecretKeyFactorySpi {
    protected abstract SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException;

    protected abstract KeySpec engineGetKeySpec(SecretKey secretKey, Class<?> cls) throws InvalidKeySpecException;

    protected abstract SecretKey engineTranslateKey(SecretKey secretKey) throws InvalidKeyException;

    public SecretKeyFactorySpi() {
        throw new RuntimeException("Stub!");
    }
}
