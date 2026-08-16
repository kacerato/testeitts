package android.webkit;

import android.graphics.Bitmap;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebIconDatabase.class
 */
@Deprecated
public abstract class WebIconDatabase {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebIconDatabase$IconListener.class
 */
    @Deprecated
    public interface IconListener {
        void onReceivedIcon(String str, Bitmap bitmap);
    }

    public abstract void open(String str);

    public abstract void close();

    public abstract void removeAllIcons();

    public abstract void requestIconForPageUrl(String str, IconListener iconListener);

    public abstract void retainIconForPageUrl(String str);

    public abstract void releaseIconForPageUrl(String str);

    public WebIconDatabase() {
        throw new RuntimeException("Stub!");
    }

    public static WebIconDatabase getInstance() {
        throw new RuntimeException("Stub!");
    }
}
