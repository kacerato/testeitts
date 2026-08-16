package android.view.inputmethod;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/CorrectionInfo.class
 */
public final class CorrectionInfo implements Parcelable {
    public static final Parcelable.Creator<CorrectionInfo> CREATOR = null;

    public CorrectionInfo(int offset, CharSequence oldText, CharSequence newText) {
        throw new RuntimeException("Stub!");
    }

    public int getOffset() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getOldText() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getNewText() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
