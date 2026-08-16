package android.webkit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/CookieManager.class
 */
public abstract class CookieManager {
    public abstract void setAcceptCookie(boolean z10);

    public abstract boolean acceptCookie();

    public abstract void setAcceptThirdPartyCookies(WebView webView, boolean z10);

    public abstract boolean acceptThirdPartyCookies(WebView webView);

    public abstract void setCookie(String str, String str2);

    public abstract void setCookie(String str, String str2, ValueCallback<Boolean> valueCallback);

    public abstract String getCookie(String str);

    @Deprecated
    public abstract void removeSessionCookie();

    public abstract void removeSessionCookies(ValueCallback<Boolean> valueCallback);

    @Deprecated
    public abstract void removeAllCookie();

    public abstract void removeAllCookies(ValueCallback<Boolean> valueCallback);

    public abstract boolean hasCookies();

    @Deprecated
    public abstract void removeExpiredCookie();

    public abstract void flush();

    public CookieManager() {
        throw new RuntimeException("Stub!");
    }

    protected Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    public static CookieManager getInstance() {
        throw new RuntimeException("Stub!");
    }

    public static boolean allowFileSchemeCookies() {
        throw new RuntimeException("Stub!");
    }

    public static void setAcceptFileSchemeCookies(boolean accept) {
        throw new RuntimeException("Stub!");
    }
}
