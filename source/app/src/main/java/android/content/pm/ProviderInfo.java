package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.PatternMatcher;
import android.util.Printer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/ProviderInfo.class
 */
public final class ProviderInfo extends ComponentInfo implements Parcelable {
    public static final Parcelable.Creator<ProviderInfo> CREATOR = null;
    public static final int FLAG_SINGLE_USER = 1073741824;
    public String authority;
    public int flags;
    public boolean grantUriPermissions;
    public int initOrder;

    @Deprecated
    public boolean isSyncable;
    public boolean multiprocess;
    public String readPermission;
    public String writePermission;
    public PathPermission[] pathPermissions = null;
    public PatternMatcher[] uriPermissionPatterns = null;

    public ProviderInfo() {
        throw new RuntimeException("Stub!");
    }

    public ProviderInfo(ProviderInfo orig) {
        throw new RuntimeException("Stub!");
    }

    public void dump(Printer pw, String prefix) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int parcelableFlags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
