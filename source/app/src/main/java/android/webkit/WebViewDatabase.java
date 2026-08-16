package android.webkit;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebViewDatabase.class
 */
public abstract class WebViewDatabase {
    @Deprecated
    public abstract boolean hasUsernamePassword();

    @Deprecated
    public abstract void clearUsernamePassword();

    public abstract boolean hasHttpAuthUsernamePassword();

    public abstract void clearHttpAuthUsernamePassword();

    public abstract void setHttpAuthUsernamePassword(String str, String str2, String str3, String str4);

    public abstract String[] getHttpAuthUsernamePassword(String str, String str2);

    @Deprecated
    public abstract boolean hasFormData();

    @Deprecated
    public abstract void clearFormData();

    public WebViewDatabase() {
        throw new RuntimeException("Stub!");
    }

    public static WebViewDatabase getInstance(Context context) {
        throw new RuntimeException("Stub!");
    }
}
