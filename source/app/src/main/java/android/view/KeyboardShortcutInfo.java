package android.view;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/KeyboardShortcutInfo.class
 */
public final class KeyboardShortcutInfo implements Parcelable {
    public static final Parcelable.Creator<KeyboardShortcutInfo> CREATOR = null;

    public KeyboardShortcutInfo(CharSequence label, int keycode, int modifiers) {
        throw new RuntimeException("Stub!");
    }

    public KeyboardShortcutInfo(CharSequence label, char baseCharacter, int modifiers) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLabel() {
        throw new RuntimeException("Stub!");
    }

    public int getKeycode() {
        throw new RuntimeException("Stub!");
    }

    public char getBaseCharacter() {
        throw new RuntimeException("Stub!");
    }

    public int getModifiers() {
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
