package android.view;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/WindowId.class
 */
public class WindowId implements Parcelable {
    public static final Parcelable.Creator<WindowId> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/WindowId$FocusObserver.class
 */
    public static abstract class FocusObserver {
        public abstract void onFocusGained(WindowId windowId);

        public abstract void onFocusLost(WindowId windowId);

        public FocusObserver() {
            throw new RuntimeException("Stub!");
        }
    }

    WindowId() {
        throw new RuntimeException("Stub!");
    }

    public boolean isFocused() {
        throw new RuntimeException("Stub!");
    }

    public void registerFocusObserver(FocusObserver observer) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterFocusObserver(FocusObserver observer) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object otherObj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }
}
