package android.service.notification;

import android.app.Notification;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/notification/StatusBarNotification.class
 */
public class StatusBarNotification implements Parcelable {
    public static final Parcelable.Creator<StatusBarNotification> CREATOR = null;

    @Deprecated
    public StatusBarNotification(String pkg, String opPkg, int id2, String tag, int uid, int initialPid, int score, Notification notification, UserHandle user, long postTime) {
        throw new RuntimeException("Stub!");
    }

    public StatusBarNotification(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    public boolean isGroup() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public StatusBarNotification m538clone() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean isOngoing() {
        throw new RuntimeException("Stub!");
    }

    public boolean isClearable() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int getUserId() {
        throw new RuntimeException("Stub!");
    }

    public String getPackageName() {
        throw new RuntimeException("Stub!");
    }

    public int getId() {
        throw new RuntimeException("Stub!");
    }

    public String getTag() {
        throw new RuntimeException("Stub!");
    }

    public Notification getNotification() {
        throw new RuntimeException("Stub!");
    }

    public UserHandle getUser() {
        throw new RuntimeException("Stub!");
    }

    public long getPostTime() {
        throw new RuntimeException("Stub!");
    }

    public String getKey() {
        throw new RuntimeException("Stub!");
    }

    public String getGroupKey() {
        throw new RuntimeException("Stub!");
    }

    public void setOverrideGroupKey(String overrideGroupKey) {
        throw new RuntimeException("Stub!");
    }

    public String getOverrideGroupKey() {
        throw new RuntimeException("Stub!");
    }
}
