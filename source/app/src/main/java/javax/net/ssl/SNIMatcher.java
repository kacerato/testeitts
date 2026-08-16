package javax.net.ssl;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SNIMatcher.class
 */
public abstract class SNIMatcher {
    public abstract boolean matches(SNIServerName sNIServerName);

    protected SNIMatcher(int type) {
        throw new RuntimeException("Stub!");
    }

    public final int getType() {
        throw new RuntimeException("Stub!");
    }
}
