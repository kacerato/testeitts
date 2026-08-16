package android.database;

import android.net.Uri;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/ContentObservable.class
 */
public class ContentObservable extends Observable<ContentObserver> {
    public ContentObservable() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void registerObserver(ContentObserver observer) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void dispatchChange(boolean selfChange) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchChange(boolean selfChange, Uri uri) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void notifyChange(boolean selfChange) {
        throw new RuntimeException("Stub!");
    }
}
