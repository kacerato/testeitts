package androidx.core.content;

import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.RestrictionsManager;
import android.content.pm.LauncherApps;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.hardware.ConsumerIrManager;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.print.PrintManager;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.BuildCompat;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.ObjectsCompat;
import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.concurrent.Executor;

public class ContextCompat {
    private static final String DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION_SUFFIX = ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
    public static final int RECEIVER_EXPORTED = 2;
    public static final int RECEIVER_NOT_EXPORTED = 4;
    public static final int RECEIVER_VISIBLE_TO_INSTANT_APPS = 1;
    private static final String TAG = "ContextCompat";
    private static final Object sLock = new Object();
    private static final Object sSync = new Object();
    private static TypedValue sTempValue;

    public static class Api16Impl {
        private Api16Impl() {
        }

        public static void startActivities(Context context, Intent[] intentArr, Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        public static void startActivity(Context context, Intent intent, Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    public static class Api19Impl {
        private Api19Impl() {
        }

        public static File[] getExternalCacheDirs(Context context) {
            return context.getExternalCacheDirs();
        }

        public static File[] getExternalFilesDirs(Context context, String str) {
            return context.getExternalFilesDirs(str);
        }

        public static File[] getObbDirs(Context context) {
            return context.getObbDirs();
        }
    }

    public static class Api21Impl {
        private Api21Impl() {
        }

        public static File getCodeCacheDir(Context context) {
            return context.getCodeCacheDir();
        }

        public static Drawable getDrawable(Context context, int i10) {
            return context.getDrawable(i10);
        }

        public static File getNoBackupFilesDir(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    public static class Api23Impl {
        private Api23Impl() {
        }

        public static int getColor(Context context, int i10) {
            return context.getColor(i10);
        }

        public static <T> T getSystemService(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        public static String getSystemServiceName(Context context, Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    public static class Api24Impl {
        private Api24Impl() {
        }

        public static Context createDeviceProtectedStorageContext(Context context) {
            return context.createDeviceProtectedStorageContext();
        }

        public static File getDataDir(Context context) {
            return context.getDataDir();
        }

        public static boolean isDeviceProtectedStorage(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    public static class Api26Impl {
        private Api26Impl() {
        }

        public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i10) {
            return ((i10 & 4) == 0 || str != null) ? context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i10 & 1) : context.registerReceiver(broadcastReceiver, intentFilter, ContextCompat.obtainAndCheckReceiverPermission(context), handler);
        }

        public static ComponentName startForegroundService(Context context, Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    public static class Api28Impl {
        private Api28Impl() {
        }

        public static Executor getMainExecutor(Context context) {
            return context.getMainExecutor();
        }
    }

    public static class Api30Impl {
        private Api30Impl() {
        }

        public static String getAttributionTag(Context context) {
            return context.getAttributionTag();
        }
    }

    public static class Api33Impl {
        private Api33Impl() {
        }

        public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i10) {
            return context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i10);
        }
    }

    public static final class LegacyServiceMapHolder {
        static final HashMap<Class<?>, String> SERVICES;

        static {
            HashMap<Class<?>, String> hashMap = new HashMap<>();
            SERVICES = hashMap;
            hashMap.put(SubscriptionManager.class, Context.TELEPHONY_SUBSCRIPTION_SERVICE);
            hashMap.put(UsageStatsManager.class, Context.USAGE_STATS_SERVICE);
            hashMap.put(AppWidgetManager.class, Context.APPWIDGET_SERVICE);
            hashMap.put(BatteryManager.class, Context.BATTERY_SERVICE);
            hashMap.put(CameraManager.class, "camera");
            hashMap.put(JobScheduler.class, Context.JOB_SCHEDULER_SERVICE);
            hashMap.put(LauncherApps.class, Context.LAUNCHER_APPS_SERVICE);
            hashMap.put(MediaProjectionManager.class, Context.MEDIA_PROJECTION_SERVICE);
            hashMap.put(MediaSessionManager.class, Context.MEDIA_SESSION_SERVICE);
            hashMap.put(RestrictionsManager.class, Context.RESTRICTIONS_SERVICE);
            hashMap.put(TelecomManager.class, Context.TELECOM_SERVICE);
            hashMap.put(TvInputManager.class, Context.TV_INPUT_SERVICE);
            hashMap.put(AppOpsManager.class, Context.APP_OPS_SERVICE);
            hashMap.put(CaptioningManager.class, Context.CAPTIONING_SERVICE);
            hashMap.put(ConsumerIrManager.class, Context.CONSUMER_IR_SERVICE);
            hashMap.put(PrintManager.class, Context.PRINT_SERVICE);
            hashMap.put(BluetoothManager.class, "bluetooth");
            hashMap.put(DisplayManager.class, Context.DISPLAY_SERVICE);
            hashMap.put(UserManager.class, "user");
            hashMap.put(InputManager.class, Context.INPUT_SERVICE);
            hashMap.put(MediaRouter.class, Context.MEDIA_ROUTER_SERVICE);
            hashMap.put(NsdManager.class, Context.NSD_SERVICE);
            hashMap.put(AccessibilityManager.class, Context.ACCESSIBILITY_SERVICE);
            hashMap.put(AccountManager.class, "account");
            hashMap.put(ActivityManager.class, Context.ACTIVITY_SERVICE);
            hashMap.put(AlarmManager.class, "alarm");
            hashMap.put(AudioManager.class, "audio");
            hashMap.put(ClipboardManager.class, Context.CLIPBOARD_SERVICE);
            hashMap.put(ConnectivityManager.class, Context.CONNECTIVITY_SERVICE);
            hashMap.put(DevicePolicyManager.class, Context.DEVICE_POLICY_SERVICE);
            hashMap.put(DownloadManager.class, Context.DOWNLOAD_SERVICE);
            hashMap.put(DropBoxManager.class, Context.DROPBOX_SERVICE);
            hashMap.put(InputMethodManager.class, Context.INPUT_METHOD_SERVICE);
            hashMap.put(KeyguardManager.class, Context.KEYGUARD_SERVICE);
            hashMap.put(LayoutInflater.class, Context.LAYOUT_INFLATER_SERVICE);
            hashMap.put(LocationManager.class, "location");
            hashMap.put(NfcManager.class, "nfc");
            hashMap.put(NotificationManager.class, Context.NOTIFICATION_SERVICE);
            hashMap.put(PowerManager.class, Context.POWER_SERVICE);
            hashMap.put(SearchManager.class, "search");
            hashMap.put(SensorManager.class, Context.SENSOR_SERVICE);
            hashMap.put(StorageManager.class, Context.STORAGE_SERVICE);
            hashMap.put(TelephonyManager.class, "phone");
            hashMap.put(TextServicesManager.class, Context.TEXT_SERVICES_MANAGER_SERVICE);
            hashMap.put(UiModeManager.class, Context.UI_MODE_SERVICE);
            hashMap.put(UsbManager.class, Context.USB_SERVICE);
            hashMap.put(Vibrator.class, Context.VIBRATOR_SERVICE);
            hashMap.put(WallpaperManager.class, Context.WALLPAPER_SERVICE);
            hashMap.put(WifiP2pManager.class, Context.WIFI_P2P_SERVICE);
            hashMap.put(WifiManager.class, "wifi");
            hashMap.put(WindowManager.class, Context.WINDOW_SERVICE);
        }

        private LegacyServiceMapHolder() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RegisterReceiverFlags {
    }

    public static int checkSelfPermission(Context context, String str) {
        ObjectsCompat.requireNonNull(str, "permission must be non-null");
        return (BuildCompat.isAtLeastT() || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) ? context.checkPermission(str, Process.myPid(), Process.myUid()) : NotificationManagerCompat.from(context).areNotificationsEnabled() ? 0 : -1;
    }

    public static Context createDeviceProtectedStorageContext(Context context) {
        return Api24Impl.createDeviceProtectedStorageContext(context);
    }

    private static File createFilesDir(File file) {
        synchronized (sSync) {
            try {
                if (!file.exists()) {
                    if (file.mkdirs()) {
                        return file;
                    }
                    Log.w(TAG, "Unable to create files subdir " + file.getPath());
                }
                return file;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static String getAttributionTag(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getAttributionTag(context);
        }
        return null;
    }

    public static File getCodeCacheDir(Context context) {
        return Api21Impl.getCodeCacheDir(context);
    }

    public static int getColor(Context context, int i10) {
        return Api23Impl.getColor(context, i10);
    }

    public static ColorStateList getColorStateList(Context context, int i10) {
        return ResourcesCompat.getColorStateList(context.getResources(), i10, context.getTheme());
    }

    public static File getDataDir(Context context) {
        return Api24Impl.getDataDir(context);
    }

    public static Drawable getDrawable(Context context, int i10) {
        return Api21Impl.getDrawable(context, i10);
    }

    public static File[] getExternalCacheDirs(Context context) {
        return Api19Impl.getExternalCacheDirs(context);
    }

    public static File[] getExternalFilesDirs(Context context, String str) {
        return Api19Impl.getExternalFilesDirs(context, str);
    }

    public static Executor getMainExecutor(Context context) {
        return Build.VERSION.SDK_INT >= 28 ? Api28Impl.getMainExecutor(context) : ExecutorCompat.create(new Handler(context.getMainLooper()));
    }

    public static File getNoBackupFilesDir(Context context) {
        return Api21Impl.getNoBackupFilesDir(context);
    }

    public static File[] getObbDirs(Context context) {
        return Api19Impl.getObbDirs(context);
    }

    public static <T> T getSystemService(Context context, Class<T> cls) {
        return (T) Api23Impl.getSystemService(context, cls);
    }

    public static String getSystemServiceName(Context context, Class<?> cls) {
        return Api23Impl.getSystemServiceName(context, cls);
    }

    public static boolean isDeviceProtectedStorage(Context context) {
        return Api24Impl.isDeviceProtectedStorage(context);
    }

    public static String obtainAndCheckReceiverPermission(Context context) {
        String str = context.getPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
        if (PermissionChecker.checkSelfPermission(context, str) == 0) {
            return str;
        }
        throw new RuntimeException("Permission " + str + " is required by your application to receive broadcasts, please add it to your manifest");
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i10) {
        return registerReceiver(context, broadcastReceiver, intentFilter, null, null, i10);
    }

    public static boolean startActivities(Context context, Intent[] intentArr) {
        return startActivities(context, intentArr, null);
    }

    public static void startActivity(Context context, Intent intent, Bundle bundle) {
        Api16Impl.startActivity(context, intent, bundle);
    }

    public static void startForegroundService(Context context, Intent intent) {
        Api26Impl.startForegroundService(context, intent);
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i10) {
        int i11 = i10 & 1;
        if (i11 != 0 && (i10 & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED");
        }
        if (i11 != 0) {
            i10 |= 2;
        }
        int i12 = i10;
        int i13 = i12 & 2;
        if (i13 == 0 && (i12 & 4) == 0) {
            throw new IllegalArgumentException("One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required");
        }
        if (i13 != 0 && (i12 & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED");
        }
        if (BuildCompat.isAtLeastT()) {
            return Api33Impl.registerReceiver(context, broadcastReceiver, intentFilter, str, handler, i12);
        }
        return Api26Impl.registerReceiver(context, broadcastReceiver, intentFilter, str, handler, i12);
    }

    public static boolean startActivities(Context context, Intent[] intentArr, Bundle bundle) {
        Api16Impl.startActivities(context, intentArr, bundle);
        return true;
    }
}
