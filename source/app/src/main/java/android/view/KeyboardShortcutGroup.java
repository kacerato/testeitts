package android.view;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/KeyboardShortcutGroup.class
 */
public final class KeyboardShortcutGroup implements Parcelable {
    public static final Parcelable.Creator<KeyboardShortcutGroup> CREATOR = null;

    public KeyboardShortcutGroup(CharSequence label, List<KeyboardShortcutInfo> items) {
        throw new RuntimeException("Stub!");
    }

    public KeyboardShortcutGroup(CharSequence label) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLabel() {
        throw new RuntimeException("Stub!");
    }

    public List<KeyboardShortcutInfo> getItems() {
        throw new RuntimeException("Stub!");
    }

    public void addItem(KeyboardShortcutInfo item) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
