package android.content.pm;

import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PackageInstaller.class
 */
public class PackageInstaller {
    public static final String ACTION_SESSION_COMMITTED = "android.content.pm.action.SESSION_COMMITTED";
    public static final String ACTION_SESSION_DETAILS = "android.content.pm.action.SESSION_DETAILS";
    public static final String EXTRA_OTHER_PACKAGE_NAME = "android.content.pm.extra.OTHER_PACKAGE_NAME";
    public static final String EXTRA_PACKAGE_NAME = "android.content.pm.extra.PACKAGE_NAME";
    public static final String EXTRA_SESSION = "android.content.pm.extra.SESSION";
    public static final String EXTRA_SESSION_ID = "android.content.pm.extra.SESSION_ID";
    public static final String EXTRA_STATUS = "android.content.pm.extra.STATUS";
    public static final String EXTRA_STATUS_MESSAGE = "android.content.pm.extra.STATUS_MESSAGE";
    public static final String EXTRA_STORAGE_PATH = "android.content.pm.extra.STORAGE_PATH";
    public static final int STATUS_FAILURE = 1;
    public static final int STATUS_FAILURE_ABORTED = 3;
    public static final int STATUS_FAILURE_BLOCKED = 2;
    public static final int STATUS_FAILURE_CONFLICT = 5;
    public static final int STATUS_FAILURE_INCOMPATIBLE = 7;
    public static final int STATUS_FAILURE_INVALID = 4;
    public static final int STATUS_FAILURE_STORAGE = 6;
    public static final int STATUS_PENDING_USER_ACTION = -1;
    public static final int STATUS_SUCCESS = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PackageInstaller$SessionCallback.class
 */
    public static abstract class SessionCallback {
        public abstract void onCreated(int i10);

        public abstract void onBadgingChanged(int i10);

        public abstract void onActiveChanged(int i10, boolean z10);

        public abstract void onProgressChanged(int i10, float f10);

        public abstract void onFinished(int i10, boolean z10);

        public SessionCallback() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PackageInstaller$Session.class
 */
    public static class Session implements Closeable {
        Session() {
            throw new RuntimeException("Stub!");
        }

        public void setStagingProgress(float progress) {
            throw new RuntimeException("Stub!");
        }

        public OutputStream openWrite(String name, long offsetBytes, long lengthBytes) throws IOException {
            throw new RuntimeException("Stub!");
        }

        public void fsync(OutputStream out) throws IOException {
            throw new RuntimeException("Stub!");
        }

        public String[] getNames() throws IOException {
            throw new RuntimeException("Stub!");
        }

        public InputStream openRead(String name) throws IOException {
            throw new RuntimeException("Stub!");
        }

        public void removeSplit(String splitName) throws IOException {
            throw new RuntimeException("Stub!");
        }

        public void commit(IntentSender statusReceiver) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void close() {
            throw new RuntimeException("Stub!");
        }

        public void abandon() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PackageInstaller$SessionParams.class
 */
    public static class SessionParams implements Parcelable {
        public static final Parcelable.Creator<SessionParams> CREATOR = null;
        public static final int MODE_FULL_INSTALL = 1;
        public static final int MODE_INHERIT_EXISTING = 2;

        public SessionParams(int mode) {
            throw new RuntimeException("Stub!");
        }

        public void setInstallLocation(int installLocation) {
            throw new RuntimeException("Stub!");
        }

        public void setSize(long sizeBytes) {
            throw new RuntimeException("Stub!");
        }

        public void setAppPackageName(String appPackageName) {
            throw new RuntimeException("Stub!");
        }

        public void setAppIcon(Bitmap appIcon) {
            throw new RuntimeException("Stub!");
        }

        public void setAppLabel(CharSequence appLabel) {
            throw new RuntimeException("Stub!");
        }

        public void setOriginatingUri(Uri originatingUri) {
            throw new RuntimeException("Stub!");
        }

        public void setOriginatingUid(int originatingUid) {
            throw new RuntimeException("Stub!");
        }

        public void setReferrerUri(Uri referrerUri) {
            throw new RuntimeException("Stub!");
        }

        public void setInstallReason(int installReason) {
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

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PackageInstaller$SessionInfo.class
 */
    public static class SessionInfo implements Parcelable {
        public static final Parcelable.Creator<SessionInfo> CREATOR = null;

        SessionInfo() {
            throw new RuntimeException("Stub!");
        }

        public int getSessionId() {
            throw new RuntimeException("Stub!");
        }

        public String getInstallerPackageName() {
            throw new RuntimeException("Stub!");
        }

        public float getProgress() {
            throw new RuntimeException("Stub!");
        }

        public boolean isActive() {
            throw new RuntimeException("Stub!");
        }

        public boolean isSealed() {
            throw new RuntimeException("Stub!");
        }

        public int getInstallReason() {
            throw new RuntimeException("Stub!");
        }

        public String getAppPackageName() {
            throw new RuntimeException("Stub!");
        }

        public Bitmap getAppIcon() {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getAppLabel() {
            throw new RuntimeException("Stub!");
        }

        public Intent createDetailsIntent() {
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

    PackageInstaller() {
        throw new RuntimeException("Stub!");
    }

    public int createSession(SessionParams params) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public Session openSession(int sessionId) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void updateSessionAppIcon(int sessionId, Bitmap appIcon) {
        throw new RuntimeException("Stub!");
    }

    public void updateSessionAppLabel(int sessionId, CharSequence appLabel) {
        throw new RuntimeException("Stub!");
    }

    public void abandonSession(int sessionId) {
        throw new RuntimeException("Stub!");
    }

    public SessionInfo getSessionInfo(int sessionId) {
        throw new RuntimeException("Stub!");
    }

    public List<SessionInfo> getAllSessions() {
        throw new RuntimeException("Stub!");
    }

    public List<SessionInfo> getMySessions() {
        throw new RuntimeException("Stub!");
    }

    public void uninstall(String packageName, IntentSender statusReceiver) {
        throw new RuntimeException("Stub!");
    }

    public void uninstall(VersionedPackage versionedPackage, IntentSender statusReceiver) {
        throw new RuntimeException("Stub!");
    }

    public void registerSessionCallback(SessionCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void registerSessionCallback(SessionCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterSessionCallback(SessionCallback callback) {
        throw new RuntimeException("Stub!");
    }
}
