package android.webkit;

import android.graphics.Bitmap;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebHistoryItem.class
 */
public abstract class WebHistoryItem implements Cloneable {
    public abstract String getUrl();

    public abstract String getOriginalUrl();

    public abstract String getTitle();

    public abstract Bitmap getFavicon();

    public abstract WebHistoryItem m655clone();

    public WebHistoryItem() {
        throw new RuntimeException("Stub!");
    }
}
