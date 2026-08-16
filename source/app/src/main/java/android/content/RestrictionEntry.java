package android.content;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/RestrictionEntry.class
 */
public class RestrictionEntry implements Parcelable {
    public static final Parcelable.Creator<RestrictionEntry> CREATOR = null;
    public static final int TYPE_BOOLEAN = 1;
    public static final int TYPE_BUNDLE = 7;
    public static final int TYPE_BUNDLE_ARRAY = 8;
    public static final int TYPE_CHOICE = 2;
    public static final int TYPE_INTEGER = 5;
    public static final int TYPE_MULTI_SELECT = 4;
    public static final int TYPE_NULL = 0;
    public static final int TYPE_STRING = 6;

    public RestrictionEntry(int type, String key) {
        throw new RuntimeException("Stub!");
    }

    public RestrictionEntry(String key, String selectedString) {
        throw new RuntimeException("Stub!");
    }

    public RestrictionEntry(String key, boolean selectedState) {
        throw new RuntimeException("Stub!");
    }

    public RestrictionEntry(String key, String[] selectedStrings) {
        throw new RuntimeException("Stub!");
    }

    public RestrictionEntry(String key, int selectedInt) {
        throw new RuntimeException("Stub!");
    }

    public RestrictionEntry(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    public static RestrictionEntry createBundleEntry(String key, RestrictionEntry[] restrictionEntries) {
        throw new RuntimeException("Stub!");
    }

    public static RestrictionEntry createBundleArrayEntry(String key, RestrictionEntry[] restrictionEntries) {
        throw new RuntimeException("Stub!");
    }

    public void setType(int type) {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public String getSelectedString() {
        throw new RuntimeException("Stub!");
    }

    public String[] getAllSelectedStrings() {
        throw new RuntimeException("Stub!");
    }

    public boolean getSelectedState() {
        throw new RuntimeException("Stub!");
    }

    public int getIntValue() {
        throw new RuntimeException("Stub!");
    }

    public void setIntValue(int value) {
        throw new RuntimeException("Stub!");
    }

    public void setSelectedString(String selectedString) {
        throw new RuntimeException("Stub!");
    }

    public void setSelectedState(boolean state) {
        throw new RuntimeException("Stub!");
    }

    public void setAllSelectedStrings(String[] allSelectedStrings) {
        throw new RuntimeException("Stub!");
    }

    public void setChoiceValues(String[] choiceValues) {
        throw new RuntimeException("Stub!");
    }

    public void setChoiceValues(Context context, int stringArrayResId) {
        throw new RuntimeException("Stub!");
    }

    public RestrictionEntry[] getRestrictions() {
        throw new RuntimeException("Stub!");
    }

    public void setRestrictions(RestrictionEntry[] restrictions) {
        throw new RuntimeException("Stub!");
    }

    public String[] getChoiceValues() {
        throw new RuntimeException("Stub!");
    }

    public void setChoiceEntries(String[] choiceEntries) {
        throw new RuntimeException("Stub!");
    }

    public void setChoiceEntries(Context context, int stringArrayResId) {
        throw new RuntimeException("Stub!");
    }

    public String[] getChoiceEntries() {
        throw new RuntimeException("Stub!");
    }

    public String getDescription() {
        throw new RuntimeException("Stub!");
    }

    public void setDescription(String description) {
        throw new RuntimeException("Stub!");
    }

    public String getKey() {
        throw new RuntimeException("Stub!");
    }

    public String getTitle() {
        throw new RuntimeException("Stub!");
    }

    public void setTitle(String title) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
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

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
