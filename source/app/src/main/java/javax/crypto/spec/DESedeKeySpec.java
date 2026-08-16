package javax.crypto.spec;

import java.security.InvalidKeyException;
import java.security.spec.KeySpec;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/spec/DESedeKeySpec.class
 */
public class DESedeKeySpec implements KeySpec {
    public static final int DES_EDE_KEY_LEN = 24;

    public DESedeKeySpec(byte[] key) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public DESedeKeySpec(byte[] key, int offset) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }

    public byte[] getKey() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isParityAdjusted(byte[] key, int offset) throws InvalidKeyException {
        throw new RuntimeException("Stub!");
    }
}
