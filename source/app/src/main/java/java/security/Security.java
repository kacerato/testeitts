package java.security;

import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/Security.class
 */
public final class Security {
    Security() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static String getAlgorithmProperty(String algName, String propName) {
        throw new RuntimeException("Stub!");
    }

    public static synchronized int insertProviderAt(Provider provider, int position) {
        throw new RuntimeException("Stub!");
    }

    public static int addProvider(Provider provider) {
        throw new RuntimeException("Stub!");
    }

    public static synchronized void removeProvider(String name) {
        throw new RuntimeException("Stub!");
    }

    public static Provider[] getProviders() {
        throw new RuntimeException("Stub!");
    }

    public static Provider getProvider(String name) {
        throw new RuntimeException("Stub!");
    }

    public static Provider[] getProviders(String filter) {
        throw new RuntimeException("Stub!");
    }

    public static Provider[] getProviders(Map<String, String> filter) {
        throw new RuntimeException("Stub!");
    }

    public static String getProperty(String key) {
        throw new RuntimeException("Stub!");
    }

    public static void setProperty(String key, String datum) {
        throw new RuntimeException("Stub!");
    }

    public static Set<String> getAlgorithms(String serviceName) {
        throw new RuntimeException("Stub!");
    }
}
