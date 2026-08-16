package android.webkit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebResourceError.class
 */
public abstract class WebResourceError {
    public abstract int getErrorCode();

    public abstract CharSequence getDescription();

    WebResourceError() {
        throw new RuntimeException("Stub!");
    }
}
