package android.webkit;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/GeolocationPermissions.class
 */
public class GeolocationPermissions {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/GeolocationPermissions$Callback.class
 */
    public interface Callback {
        void invoke(String str, boolean z10, boolean z11);
    }

    GeolocationPermissions() {
        throw new RuntimeException("Stub!");
    }

    public static GeolocationPermissions getInstance() {
        throw new RuntimeException("Stub!");
    }

    public void getOrigins(ValueCallback<Set<String>> callback) {
        throw new RuntimeException("Stub!");
    }

    public void getAllowed(String origin, ValueCallback<Boolean> callback) {
        throw new RuntimeException("Stub!");
    }

    public void clear(String origin) {
        throw new RuntimeException("Stub!");
    }

    public void allow(String origin) {
        throw new RuntimeException("Stub!");
    }

    public void clearAll() {
        throw new RuntimeException("Stub!");
    }
}
