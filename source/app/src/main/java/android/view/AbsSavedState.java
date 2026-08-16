package android.view;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/AbsSavedState.class
 */
public abstract class AbsSavedState implements Parcelable {
    public static final Parcelable.Creator<AbsSavedState> CREATOR = null;
    public static final AbsSavedState EMPTY_STATE = null;

    public AbsSavedState(Parcelable superState) {
        throw new RuntimeException("Stub!");
    }

    public AbsSavedState(Parcel source) {
        throw new RuntimeException("Stub!");
    }

    public AbsSavedState(Parcel source, ClassLoader loader) {
        throw new RuntimeException("Stub!");
    }

    public final Parcelable getSuperState() {
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
