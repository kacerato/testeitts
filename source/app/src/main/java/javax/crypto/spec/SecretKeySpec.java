package javax.crypto.spec;

import java.security.spec.KeySpec;
import javax.crypto.SecretKey;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/spec/SecretKeySpec.class
 */
public class SecretKeySpec implements KeySpec, SecretKey {
    public SecretKeySpec(byte[] key, String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public SecretKeySpec(byte[] key, int offset, int len, String algorithm) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getFormat() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public byte[] getEncoded() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }
}
