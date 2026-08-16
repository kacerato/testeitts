package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/admin/SystemUpdatePolicy.class
 */
public class SystemUpdatePolicy implements Parcelable {
    public static final Parcelable.Creator<SystemUpdatePolicy> CREATOR = null;
    public static final int TYPE_INSTALL_AUTOMATIC = 1;
    public static final int TYPE_INSTALL_WINDOWED = 2;
    public static final int TYPE_POSTPONE = 3;

    SystemUpdatePolicy() {
        throw new RuntimeException("Stub!");
    }

    public static SystemUpdatePolicy createAutomaticInstallPolicy() {
        throw new RuntimeException("Stub!");
    }

    public static SystemUpdatePolicy createWindowedInstallPolicy(int startTime, int endTime) {
        throw new RuntimeException("Stub!");
    }

    public static SystemUpdatePolicy createPostponeInstallPolicy() {
        throw new RuntimeException("Stub!");
    }

    public int getPolicyType() {
        throw new RuntimeException("Stub!");
    }

    public int getInstallWindowStart() {
        throw new RuntimeException("Stub!");
    }

    public int getInstallWindowEnd() {
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
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
