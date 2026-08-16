package android.security;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/security/KeyChain.class
 */
public final class KeyChain {
    public static final String ACTION_KEYCHAIN_CHANGED = "android.security.action.KEYCHAIN_CHANGED";
    public static final String ACTION_KEY_ACCESS_CHANGED = "android.security.action.KEY_ACCESS_CHANGED";

    @Deprecated
    public static final String ACTION_STORAGE_CHANGED = "android.security.STORAGE_CHANGED";
    public static final String ACTION_TRUST_STORE_CHANGED = "android.security.action.TRUST_STORE_CHANGED";
    public static final String EXTRA_CERTIFICATE = "CERT";
    public static final String EXTRA_KEY_ACCESSIBLE = "android.security.extra.KEY_ACCESSIBLE";
    public static final String EXTRA_KEY_ALIAS = "android.security.extra.KEY_ALIAS";
    public static final String EXTRA_NAME = "name";
    public static final String EXTRA_PKCS12 = "PKCS12";

    public KeyChain() {
        throw new RuntimeException("Stub!");
    }

    public static Intent createInstallIntent() {
        throw new RuntimeException("Stub!");
    }

    public static void choosePrivateKeyAlias(Activity activity, KeyChainAliasCallback response, String[] keyTypes, Principal[] issuers, String host, int port, String alias) {
        throw new RuntimeException("Stub!");
    }

    public static void choosePrivateKeyAlias(Activity activity, KeyChainAliasCallback response, String[] keyTypes, Principal[] issuers, Uri uri, String alias) {
        throw new RuntimeException("Stub!");
    }

    public static PrivateKey getPrivateKey(Context context, String alias) throws KeyChainException, InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public static X509Certificate[] getCertificateChain(Context context, String alias) throws KeyChainException, InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public static boolean isKeyAlgorithmSupported(String algorithm) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static boolean isBoundKeyAlgorithm(String algorithm) {
        throw new RuntimeException("Stub!");
    }
}
