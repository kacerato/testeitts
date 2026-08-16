package android.content.pm;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/LauncherApps.class
 */
public class LauncherApps {
    public static final String ACTION_CONFIRM_PIN_APPWIDGET = "android.content.pm.action.CONFIRM_PIN_APPWIDGET";
    public static final String ACTION_CONFIRM_PIN_SHORTCUT = "android.content.pm.action.CONFIRM_PIN_SHORTCUT";
    public static final String EXTRA_PIN_ITEM_REQUEST = "android.content.pm.extra.PIN_ITEM_REQUEST";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/LauncherApps$Callback.class
 */
    public static abstract class Callback {
        public abstract void onPackageRemoved(String str, UserHandle userHandle);

        public abstract void onPackageAdded(String str, UserHandle userHandle);

        public abstract void onPackageChanged(String str, UserHandle userHandle);

        public abstract void onPackagesAvailable(String[] strArr, UserHandle userHandle, boolean z10);

        public abstract void onPackagesUnavailable(String[] strArr, UserHandle userHandle, boolean z10);

        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onPackagesSuspended(String[] packageNames, UserHandle user) {
            throw new RuntimeException("Stub!");
        }

        public void onPackagesUnsuspended(String[] packageNames, UserHandle user) {
            throw new RuntimeException("Stub!");
        }

        public void onShortcutsChanged(String packageName, List<ShortcutInfo> shortcuts, UserHandle user) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/LauncherApps$ShortcutQuery.class
 */
    public static class ShortcutQuery {
        public static final int FLAG_GET_KEY_FIELDS_ONLY = 4;
        public static final int FLAG_MATCH_DYNAMIC = 1;
        public static final int FLAG_MATCH_MANIFEST = 8;
        public static final int FLAG_MATCH_PINNED = 2;

        public ShortcutQuery() {
            throw new RuntimeException("Stub!");
        }

        public ShortcutQuery setChangedSince(long changedSince) {
            throw new RuntimeException("Stub!");
        }

        public ShortcutQuery setPackage(String packageName) {
            throw new RuntimeException("Stub!");
        }

        public ShortcutQuery setShortcutIds(List<String> shortcutIds) {
            throw new RuntimeException("Stub!");
        }

        public ShortcutQuery setActivity(ComponentName activity) {
            throw new RuntimeException("Stub!");
        }

        public ShortcutQuery setQueryFlags(int queryFlags) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/LauncherApps$PinItemRequest.class
 */
    public static final class PinItemRequest implements Parcelable {
        public static final Parcelable.Creator<PinItemRequest> CREATOR = null;
        public static final int REQUEST_TYPE_APPWIDGET = 2;
        public static final int REQUEST_TYPE_SHORTCUT = 1;

        PinItemRequest() {
            throw new RuntimeException("Stub!");
        }

        public int getRequestType() {
            throw new RuntimeException("Stub!");
        }

        public ShortcutInfo getShortcutInfo() {
            throw new RuntimeException("Stub!");
        }

        public AppWidgetProviderInfo getAppWidgetProviderInfo(Context context) {
            throw new RuntimeException("Stub!");
        }

        public Bundle getExtras() {
            throw new RuntimeException("Stub!");
        }

        public boolean isValid() {
            throw new RuntimeException("Stub!");
        }

        public boolean accept(Bundle options) {
            throw new RuntimeException("Stub!");
        }

        public boolean accept() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }
    }

    LauncherApps() {
        throw new RuntimeException("Stub!");
    }

    public List<UserHandle> getProfiles() {
        throw new RuntimeException("Stub!");
    }

    public List<LauncherActivityInfo> getActivityList(String packageName, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public LauncherActivityInfo resolveActivity(Intent intent, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public void startMainActivity(ComponentName component, UserHandle user, Rect sourceBounds, Bundle opts) {
        throw new RuntimeException("Stub!");
    }

    public void startAppDetailsActivity(ComponentName component, UserHandle user, Rect sourceBounds, Bundle opts) {
        throw new RuntimeException("Stub!");
    }

    public List<LauncherActivityInfo> getShortcutConfigActivityList(String packageName, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public IntentSender getShortcutConfigActivityIntent(LauncherActivityInfo info) {
        throw new RuntimeException("Stub!");
    }

    public boolean isPackageEnabled(String packageName, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public ApplicationInfo getApplicationInfo(String packageName, int flags, UserHandle user) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public boolean isActivityEnabled(ComponentName component, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasShortcutHostPermission() {
        throw new RuntimeException("Stub!");
    }

    public List<ShortcutInfo> getShortcuts(ShortcutQuery query, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public void pinShortcuts(String packageName, List<String> shortcutIds, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getShortcutIconDrawable(ShortcutInfo shortcut, int density) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getShortcutBadgedIconDrawable(ShortcutInfo shortcut, int density) {
        throw new RuntimeException("Stub!");
    }

    public void startShortcut(String packageName, String shortcutId, Rect sourceBounds, Bundle startActivityOptions, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    public void startShortcut(ShortcutInfo shortcut, Rect sourceBounds, Bundle startActivityOptions) {
        throw new RuntimeException("Stub!");
    }

    public void registerCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public void registerCallback(Callback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public PinItemRequest getPinItemRequest(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
