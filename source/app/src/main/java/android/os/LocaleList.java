package android.os;

import android.os.Parcelable;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/LocaleList.class
 */
public final class LocaleList implements Parcelable {
    public static final Parcelable.Creator<LocaleList> CREATOR = null;

    public LocaleList(Locale... list) {
        throw new RuntimeException("Stub!");
    }

    public Locale get(int index) {
        throw new RuntimeException("Stub!");
    }

    public boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }

    public int size() {
        throw new RuntimeException("Stub!");
    }

    public int indexOf(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object other) {
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
    public void writeToParcel(Parcel dest, int parcelableFlags) {
        throw new RuntimeException("Stub!");
    }

    public String toLanguageTags() {
        throw new RuntimeException("Stub!");
    }

    public static LocaleList getEmptyLocaleList() {
        throw new RuntimeException("Stub!");
    }

    public static LocaleList forLanguageTags(String list) {
        throw new RuntimeException("Stub!");
    }

    public Locale getFirstMatch(String[] supportedLocales) {
        throw new RuntimeException("Stub!");
    }

    public static LocaleList getDefault() {
        throw new RuntimeException("Stub!");
    }

    public static LocaleList getAdjustedDefault() {
        throw new RuntimeException("Stub!");
    }

    public static void setDefault(LocaleList locales) {
        throw new RuntimeException("Stub!");
    }
}
