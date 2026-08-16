package android.view.autofill;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/autofill/AutofillValue.class
 */
public final class AutofillValue implements Parcelable {
    public static final Parcelable.Creator<AutofillValue> CREATOR = null;

    AutofillValue() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getTextValue() {
        throw new RuntimeException("Stub!");
    }

    public boolean isText() {
        throw new RuntimeException("Stub!");
    }

    public boolean getToggleValue() {
        throw new RuntimeException("Stub!");
    }

    public boolean isToggle() {
        throw new RuntimeException("Stub!");
    }

    public int getListValue() {
        throw new RuntimeException("Stub!");
    }

    public boolean isList() {
        throw new RuntimeException("Stub!");
    }

    public long getDateValue() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDate() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
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
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }

    public static AutofillValue forText(CharSequence value) {
        throw new RuntimeException("Stub!");
    }

    public static AutofillValue forToggle(boolean value) {
        throw new RuntimeException("Stub!");
    }

    public static AutofillValue forList(int value) {
        throw new RuntimeException("Stub!");
    }

    public static AutofillValue forDate(long value) {
        throw new RuntimeException("Stub!");
    }
}
