package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.PatternMatcher;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PathPermission.class
 */
public class PathPermission extends PatternMatcher {
    public static final Parcelable.Creator<PathPermission> CREATOR = null;

    public PathPermission(String pattern, int type, String readPermission, String writePermission) {
        super((Parcel) null);
        throw new RuntimeException("Stub!");
    }

    public PathPermission(Parcel src) {
        super((Parcel) null);
        throw new RuntimeException("Stub!");
    }

    public String getReadPermission() {
        throw new RuntimeException("Stub!");
    }

    public String getWritePermission() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
