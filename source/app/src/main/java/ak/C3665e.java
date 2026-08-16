package ak;

import java.security.InvalidKeyException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactorySpi;
import javax.crypto.spec.SecretKeySpec;
import oh.C14549x;

public class C3665e extends SecretKeyFactorySpi implements org.bouncycastle.jcajce.provider.symmetric.util.d {

    public String f32326b;

    public C14549x f32327c;

    public C3665e(String str, C14549x c14549x) {
        this.f32326b = str;
        this.f32327c = c14549x;
    }

    @Override
    public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof SecretKeySpec) {
            return new SecretKeySpec(((SecretKeySpec) keySpec).getEncoded(), this.f32326b);
        }
        throw new InvalidKeySpecException("Invalid KeySpec");
    }

    @Override
    public KeySpec engineGetKeySpec(SecretKey secretKey, Class cls) throws InvalidKeySpecException {
        if (cls == null) {
            throw new InvalidKeySpecException("keySpec parameter is null");
        }
        if (secretKey == null) {
            throw new InvalidKeySpecException("key parameter is null");
        }
        if (SecretKeySpec.class.isAssignableFrom(cls)) {
            return new SecretKeySpec(secretKey.getEncoded(), this.f32326b);
        }
        try {
            return (KeySpec) cls.getConstructor(byte[].class).newInstance(secretKey.getEncoded());
        } catch (Exception e10) {
            throw new InvalidKeySpecException(e10.toString());
        }
    }

    @Override
    public SecretKey engineTranslateKey(SecretKey secretKey) throws InvalidKeyException {
        if (secretKey == null) {
            throw new InvalidKeyException("key parameter is null");
        }
        if (secretKey.getAlgorithm().equalsIgnoreCase(this.f32326b)) {
            return new SecretKeySpec(secretKey.getEncoded(), this.f32326b);
        }
        throw new InvalidKeyException("Key not of type " + this.f32326b + ".");
    }
}
