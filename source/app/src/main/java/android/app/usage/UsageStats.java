package android.app.usage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/usage/UsageStats.class
 */
public final class UsageStats implements Parcelable {
    public static final Parcelable.Creator<UsageStats> CREATOR = null;

    public UsageStats(UsageStats stats) {
        throw new RuntimeException("Stub!");
    }

    public String getPackageName() {
        throw new RuntimeException("Stub!");
    }

    public long getFirstTimeStamp() {
        throw new RuntimeException("Stub!");
    }

    public long getLastTimeStamp() {
        throw new RuntimeException("Stub!");
    }

    public long getLastTimeUsed() {
        throw new RuntimeException("Stub!");
    }

    public long getTotalTimeInForeground() {
        throw new RuntimeException("Stub!");
    }

    public void add(UsageStats right) {
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
}
