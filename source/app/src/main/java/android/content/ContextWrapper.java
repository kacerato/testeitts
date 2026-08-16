package android.content;

import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.view.Display;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/ContextWrapper.class
 */
public class ContextWrapper extends Context {
    public ContextWrapper(Context base) {
        throw new RuntimeException("Stub!");
    }

    public void attachBaseContext(Context base) {
        throw new RuntimeException("Stub!");
    }

    public Context getBaseContext() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AssetManager getAssets() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Resources getResources() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PackageManager getPackageManager() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ContentResolver getContentResolver() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Looper getMainLooper() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Context getApplicationContext() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTheme(int resid) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Resources.Theme getTheme() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ClassLoader getClassLoader() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getPackageName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ApplicationInfo getApplicationInfo() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getPackageResourcePath() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getPackageCodePath() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SharedPreferences getSharedPreferences(String name, int mode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean moveSharedPreferencesFrom(Context sourceContext, String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean deleteSharedPreferences(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FileInputStream openFileInput(String name) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FileOutputStream openFileOutput(String name, int mode) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean deleteFile(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getFileStreamPath(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] fileList() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getDataDir() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getFilesDir() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getNoBackupFilesDir() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getExternalFilesDir(String type) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File[] getExternalFilesDirs(String type) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getObbDir() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File[] getObbDirs() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getCacheDir() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getCodeCacheDir() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getExternalCacheDir() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File[] getExternalCacheDirs() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File[] getExternalMediaDirs() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getDir(String name, int mode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SQLiteDatabase openOrCreateDatabase(String name, int mode, SQLiteDatabase.CursorFactory factory) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SQLiteDatabase openOrCreateDatabase(String name, int mode, SQLiteDatabase.CursorFactory factory, DatabaseErrorHandler errorHandler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean moveDatabaseFrom(Context sourceContext, String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean deleteDatabase(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getDatabasePath(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] databaseList() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public Drawable getWallpaper() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public Drawable peekWallpaper() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public int getWallpaperDesiredMinimumWidth() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public int getWallpaperDesiredMinimumHeight() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void setWallpaper(Bitmap bitmap) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void setWallpaper(InputStream data) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void clearWallpaper() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startActivity(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startActivity(Intent intent, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startActivities(Intent[] intents) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startActivities(Intent[] intents, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startIntentSender(IntentSender intent, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags) throws IntentSender.SendIntentException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startIntentSender(IntentSender intent, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, Bundle options) throws IntentSender.SendIntentException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendBroadcast(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendBroadcast(Intent intent, String receiverPermission) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendOrderedBroadcast(Intent intent, String receiverPermission) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendOrderedBroadcast(Intent intent, String receiverPermission, BroadcastReceiver resultReceiver, Handler scheduler, int initialCode, String initialData, Bundle initialExtras) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendBroadcastAsUser(Intent intent, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendBroadcastAsUser(Intent intent, UserHandle user, String receiverPermission) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendOrderedBroadcastAsUser(Intent intent, UserHandle user, String receiverPermission, BroadcastReceiver resultReceiver, Handler scheduler, int initialCode, String initialData, Bundle initialExtras) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void sendStickyBroadcast(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void sendStickyOrderedBroadcast(Intent intent, BroadcastReceiver resultReceiver, Handler scheduler, int initialCode, String initialData, Bundle initialExtras) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void removeStickyBroadcast(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void sendStickyBroadcastAsUser(Intent intent, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void sendStickyOrderedBroadcastAsUser(Intent intent, UserHandle user, BroadcastReceiver resultReceiver, Handler scheduler, int initialCode, String initialData, Bundle initialExtras) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void removeStickyBroadcastAsUser(Intent intent, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Intent registerReceiver(BroadcastReceiver receiver, IntentFilter filter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Intent registerReceiver(BroadcastReceiver receiver, IntentFilter filter, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Intent registerReceiver(BroadcastReceiver receiver, IntentFilter filter, String broadcastPermission, Handler scheduler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Intent registerReceiver(BroadcastReceiver receiver, IntentFilter filter, String broadcastPermission, Handler scheduler, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unregisterReceiver(BroadcastReceiver receiver) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ComponentName startService(Intent service) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ComponentName startForegroundService(Intent service) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean stopService(Intent name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean bindService(Intent service, ServiceConnection conn, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unbindService(ServiceConnection conn) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean startInstrumentation(ComponentName className, String profileFile, Bundle arguments) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getSystemService(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getSystemServiceName(Class<?> serviceClass) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkPermission(String permission, int pid, int uid) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkCallingPermission(String permission) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkCallingOrSelfPermission(String permission) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkSelfPermission(String permission) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void enforcePermission(String permission, int pid, int uid, String message) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void enforceCallingPermission(String permission, String message) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void enforceCallingOrSelfPermission(String permission, String message) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void grantUriPermission(String toPackage, Uri uri, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void revokeUriPermission(Uri uri, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void revokeUriPermission(String targetPackage, Uri uri, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkUriPermission(Uri uri, int pid, int uid, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkCallingUriPermission(Uri uri, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkCallingOrSelfUriPermission(Uri uri, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkUriPermission(Uri uri, String readPermission, String writePermission, int pid, int uid, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void enforceUriPermission(Uri uri, int pid, int uid, int modeFlags, String message) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void enforceCallingUriPermission(Uri uri, int modeFlags, String message) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void enforceCallingOrSelfUriPermission(Uri uri, int modeFlags, String message) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void enforceUriPermission(Uri uri, String readPermission, String writePermission, int pid, int uid, int modeFlags, String message) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Context createPackageContext(String packageName, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Context createConfigurationContext(Configuration overrideConfiguration) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Context createDisplayContext(Display display) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isRestricted() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Context createDeviceProtectedStorageContext() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isDeviceProtectedStorage() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Context createContextForSplit(String splitName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }
}
