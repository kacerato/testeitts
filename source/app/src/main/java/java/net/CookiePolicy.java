package java.net;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/CookiePolicy.class
 */
public interface CookiePolicy {
    public static final CookiePolicy ACCEPT_ALL = null;
    public static final CookiePolicy ACCEPT_NONE = null;
    public static final CookiePolicy ACCEPT_ORIGINAL_SERVER = null;

    boolean shouldAccept(URI uri, HttpCookie httpCookie);
}
