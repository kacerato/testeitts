package android.view.textservice;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/textservice/SpellCheckerSubtype.class
 */
public final class SpellCheckerSubtype implements Parcelable {
    public static final Parcelable.Creator<SpellCheckerSubtype> CREATOR = null;

    @Deprecated
    public SpellCheckerSubtype(int nameId, String locale, String extraValue) {
        throw new RuntimeException("Stub!");
    }

    public int getNameResId() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String getLocale() {
        throw new RuntimeException("Stub!");
    }

    public String getLanguageTag() {
        throw new RuntimeException("Stub!");
    }

    public String getExtraValue() {
        throw new RuntimeException("Stub!");
    }

    public boolean containsExtraValueKey(String key) {
        throw new RuntimeException("Stub!");
    }

    public String getExtraValueOf(String key) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getDisplayName(Context context, String packageName, ApplicationInfo appInfo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int parcelableFlags) {
        throw new RuntimeException("Stub!");
    }
}
