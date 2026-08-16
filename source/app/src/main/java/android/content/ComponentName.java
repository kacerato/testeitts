package android.content;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/ComponentName.class
 */
public final class ComponentName implements Parcelable, Cloneable, Comparable<ComponentName> {
    public static final Parcelable.Creator<ComponentName> CREATOR = null;

    public ComponentName(String pkg, String cls) {
        throw new RuntimeException("Stub!");
    }

    public ComponentName(Context pkg, String cls) {
        throw new RuntimeException("Stub!");
    }

    public ComponentName(Context pkg, Class<?> cls) {
        throw new RuntimeException("Stub!");
    }

    public ComponentName(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    public static ComponentName createRelative(String pkg, String cls) {
        throw new RuntimeException("Stub!");
    }

    public static ComponentName createRelative(Context pkg, String cls) {
        throw new RuntimeException("Stub!");
    }

    public ComponentName m163clone() {
        throw new RuntimeException("Stub!");
    }

    public String getPackageName() {
        throw new RuntimeException("Stub!");
    }

    public String getClassName() {
        throw new RuntimeException("Stub!");
    }

    public String getShortClassName() {
        throw new RuntimeException("Stub!");
    }

    public String flattenToString() {
        throw new RuntimeException("Stub!");
    }

    public String flattenToShortString() {
        throw new RuntimeException("Stub!");
    }

    public static ComponentName unflattenFromString(String str) {
        throw new RuntimeException("Stub!");
    }

    public String toShortString() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(ComponentName that) {
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

    public static void writeToParcel(ComponentName c10, Parcel out) {
        throw new RuntimeException("Stub!");
    }

    public static ComponentName readFromParcel(Parcel in2) {
        throw new RuntimeException("Stub!");
    }
}
