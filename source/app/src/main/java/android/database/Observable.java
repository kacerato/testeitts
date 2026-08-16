package android.database;

import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/Observable.class
 */
public abstract class Observable<T> {
    protected final ArrayList<T> mObservers;

    public Observable() {
        throw new RuntimeException("Stub!");
    }

    public void registerObserver(T observer) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterObserver(T observer) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterAll() {
        throw new RuntimeException("Stub!");
    }
}
