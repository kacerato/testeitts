package android.webkit;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebBackForwardList.class
 */
public abstract class WebBackForwardList implements Cloneable, Serializable {
    public abstract WebHistoryItem getCurrentItem();

    public abstract int getCurrentIndex();

    public abstract WebHistoryItem getItemAtIndex(int i10);

    public abstract int getSize();

    public abstract WebBackForwardList m654clone();

    public WebBackForwardList() {
        throw new RuntimeException("Stub!");
    }
}
