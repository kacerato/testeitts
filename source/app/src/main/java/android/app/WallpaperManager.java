package android.app;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/WallpaperManager.class
 */
public class WallpaperManager {
    public static final String ACTION_CHANGE_LIVE_WALLPAPER = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER";
    public static final String ACTION_CROP_AND_SET_WALLPAPER = "android.service.wallpaper.CROP_AND_SET_WALLPAPER";
    public static final String ACTION_LIVE_WALLPAPER_CHOOSER = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER";
    public static final String COMMAND_DROP = "android.home.drop";
    public static final String COMMAND_SECONDARY_TAP = "android.wallpaper.secondaryTap";
    public static final String COMMAND_TAP = "android.wallpaper.tap";
    public static final String EXTRA_LIVE_WALLPAPER_COMPONENT = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT";
    public static final int FLAG_LOCK = 2;
    public static final int FLAG_SYSTEM = 1;
    public static final String WALLPAPER_PREVIEW_META_DATA = "android.wallpaper.preview";

    WallpaperManager() {
        throw new RuntimeException("Stub!");
    }

    public static WallpaperManager getInstance(Context context) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getDrawable() {
        throw new RuntimeException("Stub!");
    }

    public Drawable getBuiltInDrawable() {
        throw new RuntimeException("Stub!");
    }

    public Drawable getBuiltInDrawable(int which) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getBuiltInDrawable(int outWidth, int outHeight, boolean scaleToFit, float horizontalAlignment, float verticalAlignment) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getBuiltInDrawable(int outWidth, int outHeight, boolean scaleToFit, float horizontalAlignment, float verticalAlignment, int which) {
        throw new RuntimeException("Stub!");
    }

    public Drawable peekDrawable() {
        throw new RuntimeException("Stub!");
    }

    public Drawable getFastDrawable() {
        throw new RuntimeException("Stub!");
    }

    public Drawable peekFastDrawable() {
        throw new RuntimeException("Stub!");
    }

    public ParcelFileDescriptor getWallpaperFile(int which) {
        throw new RuntimeException("Stub!");
    }

    public void forgetLoadedWallpaper() {
        throw new RuntimeException("Stub!");
    }

    public WallpaperInfo getWallpaperInfo() {
        throw new RuntimeException("Stub!");
    }

    public int getWallpaperId(int which) {
        throw new RuntimeException("Stub!");
    }

    public Intent getCropAndSetWallpaperIntent(Uri imageUri) {
        throw new RuntimeException("Stub!");
    }

    public void setResource(int resid) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int setResource(int resid, int which) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setBitmap(Bitmap bitmap) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int setBitmap(Bitmap fullImage, Rect visibleCropHint, boolean allowBackup) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int setBitmap(Bitmap fullImage, Rect visibleCropHint, boolean allowBackup, int which) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setStream(InputStream bitmapData) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int setStream(InputStream bitmapData, Rect visibleCropHint, boolean allowBackup) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int setStream(InputStream bitmapData, Rect visibleCropHint, boolean allowBackup, int which) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean hasResourceWallpaper(int resid) {
        throw new RuntimeException("Stub!");
    }

    public int getDesiredMinimumWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getDesiredMinimumHeight() {
        throw new RuntimeException("Stub!");
    }

    public void suggestDesiredDimensions(int minimumWidth, int minimumHeight) {
        throw new RuntimeException("Stub!");
    }

    public void setWallpaperOffsets(IBinder windowToken, float xOffset, float yOffset) {
        throw new RuntimeException("Stub!");
    }

    public void setWallpaperOffsetSteps(float xStep, float yStep) {
        throw new RuntimeException("Stub!");
    }

    public void sendWallpaperCommand(IBinder windowToken, String action, int x10, int y10, int z10, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public boolean isWallpaperSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean isSetWallpaperAllowed() {
        throw new RuntimeException("Stub!");
    }

    public void clearWallpaperOffsets(IBinder windowToken) {
        throw new RuntimeException("Stub!");
    }

    public void clear() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void clear(int which) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
