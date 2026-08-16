package android.app.admin;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.UserHandle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/admin/DeviceAdminReceiver.class
 */
public class DeviceAdminReceiver extends BroadcastReceiver {
    public static final String ACTION_DEVICE_ADMIN_DISABLED = "android.app.action.DEVICE_ADMIN_DISABLED";
    public static final String ACTION_DEVICE_ADMIN_DISABLE_REQUESTED = "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED";
    public static final String ACTION_DEVICE_ADMIN_ENABLED = "android.app.action.DEVICE_ADMIN_ENABLED";
    public static final String ACTION_LOCK_TASK_ENTERING = "android.app.action.LOCK_TASK_ENTERING";
    public static final String ACTION_LOCK_TASK_EXITING = "android.app.action.LOCK_TASK_EXITING";
    public static final String ACTION_PASSWORD_CHANGED = "android.app.action.ACTION_PASSWORD_CHANGED";
    public static final String ACTION_PASSWORD_EXPIRING = "android.app.action.ACTION_PASSWORD_EXPIRING";
    public static final String ACTION_PASSWORD_FAILED = "android.app.action.ACTION_PASSWORD_FAILED";
    public static final String ACTION_PASSWORD_SUCCEEDED = "android.app.action.ACTION_PASSWORD_SUCCEEDED";
    public static final String ACTION_PROFILE_PROVISIONING_COMPLETE = "android.app.action.PROFILE_PROVISIONING_COMPLETE";
    public static final int BUGREPORT_FAILURE_FAILED_COMPLETING = 0;
    public static final int BUGREPORT_FAILURE_FILE_NO_LONGER_AVAILABLE = 1;
    public static final String DEVICE_ADMIN_META_DATA = "android.app.device_admin";
    public static final String EXTRA_DISABLE_WARNING = "android.app.extra.DISABLE_WARNING";
    public static final String EXTRA_LOCK_TASK_PACKAGE = "android.app.extra.LOCK_TASK_PACKAGE";

    public DeviceAdminReceiver() {
        throw new RuntimeException("Stub!");
    }

    public DevicePolicyManager getManager(Context context) {
        throw new RuntimeException("Stub!");
    }

    public ComponentName getWho(Context context) {
        throw new RuntimeException("Stub!");
    }

    public void onEnabled(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence onDisableRequested(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onDisabled(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onPasswordChanged(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onPasswordChanged(Context context, Intent intent, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onPasswordFailed(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onPasswordFailed(Context context, Intent intent, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onPasswordSucceeded(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onPasswordSucceeded(Context context, Intent intent, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onPasswordExpiring(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onPasswordExpiring(Context context, Intent intent, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public void onProfileProvisioningComplete(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onReadyForUserInitialization(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onLockTaskModeEntering(Context context, Intent intent, String pkg) {
        throw new RuntimeException("Stub!");
    }

    public void onLockTaskModeExiting(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public String onChoosePrivateKeyAlias(Context context, Intent intent, int uid, Uri uri, String alias) {
        throw new RuntimeException("Stub!");
    }

    public void onSystemUpdatePending(Context context, Intent intent, long receivedTime) {
        throw new RuntimeException("Stub!");
    }

    public void onBugreportSharingDeclined(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onBugreportShared(Context context, Intent intent, String bugreportHash) {
        throw new RuntimeException("Stub!");
    }

    public void onBugreportFailed(Context context, Intent intent, int failureCode) {
        throw new RuntimeException("Stub!");
    }

    public void onSecurityLogsAvailable(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onNetworkLogsAvailable(Context context, Intent intent, long batchToken, int networkLogsCount) {
        throw new RuntimeException("Stub!");
    }

    public void onUserAdded(Context context, Intent intent, UserHandle newUser) {
        throw new RuntimeException("Stub!");
    }

    public void onUserRemoved(Context context, Intent intent, UserHandle removedUser) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
