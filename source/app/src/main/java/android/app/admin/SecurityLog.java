package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/admin/SecurityLog.class
 */
public class SecurityLog {
    public static final int TAG_ADB_SHELL_CMD = 210002;
    public static final int TAG_ADB_SHELL_INTERACTIVE = 210001;
    public static final int TAG_APP_PROCESS_START = 210005;
    public static final int TAG_KEYGUARD_DISMISSED = 210006;
    public static final int TAG_KEYGUARD_DISMISS_AUTH_ATTEMPT = 210007;
    public static final int TAG_KEYGUARD_SECURED = 210008;
    public static final int TAG_SYNC_RECV_FILE = 210003;
    public static final int TAG_SYNC_SEND_FILE = 210004;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/admin/SecurityLog$SecurityEvent.class
 */
    public static final class SecurityEvent implements Parcelable {
        public static final Parcelable.Creator<SecurityEvent> CREATOR = null;

        SecurityEvent() {
            throw new RuntimeException("Stub!");
        }

        public long getTimeNanos() {
            throw new RuntimeException("Stub!");
        }

        public int getTag() {
            throw new RuntimeException("Stub!");
        }

        public Object getData() {
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

    public SecurityLog() {
        throw new RuntimeException("Stub!");
    }
}
