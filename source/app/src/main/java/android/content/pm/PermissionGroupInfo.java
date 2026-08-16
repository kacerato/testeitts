package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PermissionGroupInfo.class
 */
public class PermissionGroupInfo extends PackageItemInfo implements Parcelable {
    public static final Parcelable.Creator<PermissionGroupInfo> CREATOR = null;
    public static final int FLAG_PERSONAL_INFO = 1;
    public int descriptionRes;
    public int flags;
    public CharSequence nonLocalizedDescription;
    public int priority;

    public PermissionGroupInfo() {
        throw new RuntimeException("Stub!");
    }

    public PermissionGroupInfo(PermissionGroupInfo orig) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence loadDescription(PackageManager pm2) {
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
}
