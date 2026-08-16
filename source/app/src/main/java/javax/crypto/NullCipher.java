package javax.crypto;

import java.security.Provider;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/NullCipher.class
 */
public class NullCipher extends Cipher {
    public NullCipher() {
        super((CipherSpi) null, (Provider) null, (String) null);
        throw new RuntimeException("Stub!");
    }
}
