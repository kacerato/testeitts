package java.security;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/SecureRandomSpi.class
 */
public abstract class SecureRandomSpi implements Serializable {
    protected abstract void engineSetSeed(byte[] bArr);

    protected abstract void engineNextBytes(byte[] bArr);

    protected abstract byte[] engineGenerateSeed(int i10);

    public SecureRandomSpi() {
        throw new RuntimeException("Stub!");
    }
}
