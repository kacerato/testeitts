package android.view.inputmethod;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/InputMethodSubtype.class
 */
public final class InputMethodSubtype implements Parcelable {
    public static final Parcelable.Creator<InputMethodSubtype> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder.class
 */
    public static class InputMethodSubtypeBuilder {
        public InputMethodSubtypeBuilder() {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setIsAuxiliary(boolean isAuxiliary) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setOverridesImplicitlyEnabledSubtype(boolean overridesImplicitlyEnabledSubtype) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setIsAsciiCapable(boolean isAsciiCapable) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setSubtypeIconResId(int subtypeIconResId) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setSubtypeNameResId(int subtypeNameResId) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setSubtypeId(int subtypeId) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setSubtypeLocale(String subtypeLocale) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setLanguageTag(String languageTag) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setSubtypeMode(String subtypeMode) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtypeBuilder setSubtypeExtraValue(String subtypeExtraValue) {
            throw new RuntimeException("Stub!");
        }

        public InputMethodSubtype build() {
            throw new RuntimeException("Stub!");
        }
    }

    @Deprecated
    public InputMethodSubtype(int nameId, int iconId, String locale, String mode, String extraValue, boolean isAuxiliary, boolean overridesImplicitlyEnabledSubtype) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public InputMethodSubtype(int nameId, int iconId, String locale, String mode, String extraValue, boolean isAuxiliary, boolean overridesImplicitlyEnabledSubtype, int id2) {
        throw new RuntimeException("Stub!");
    }

    public int getNameResId() {
        throw new RuntimeException("Stub!");
    }

    public int getIconResId() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String getLocale() {
        throw new RuntimeException("Stub!");
    }

    public String getLanguageTag() {
        throw new RuntimeException("Stub!");
    }

    public String getMode() {
        throw new RuntimeException("Stub!");
    }

    public String getExtraValue() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAuxiliary() {
        throw new RuntimeException("Stub!");
    }

    public boolean overridesImplicitlyEnabledSubtype() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAsciiCapable() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getDisplayName(Context context, String packageName, ApplicationInfo appInfo) {
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

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int parcelableFlags) {
        throw new RuntimeException("Stub!");
    }
}
