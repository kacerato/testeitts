package android.security;

import android.content.Context;
import java.security.KeyStore;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/security/KeyStoreParameter.class
 */
@Deprecated
public final class KeyStoreParameter implements KeyStore.ProtectionParameter {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/security/KeyStoreParameter$Builder.class
 */
    @Deprecated
    public static final class Builder {
        public Builder(Context context) {
            throw new RuntimeException("Stub!");
        }

        public Builder setEncryptionRequired(boolean required) {
            throw new RuntimeException("Stub!");
        }

        public KeyStoreParameter build() {
            throw new RuntimeException("Stub!");
        }
    }

    KeyStoreParameter() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEncryptionRequired() {
        throw new RuntimeException("Stub!");
    }
}
