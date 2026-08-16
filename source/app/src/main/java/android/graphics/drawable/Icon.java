package android.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/Icon.class
 */
public final class Icon implements Parcelable {
    public static final Parcelable.Creator<Icon> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/Icon$OnDrawableLoadedListener.class
 */
    public interface OnDrawableLoadedListener {
        void onDrawableLoaded(Drawable drawable);
    }

    Icon() {
        throw new RuntimeException("Stub!");
    }

    public void loadDrawableAsync(Context context, Message andThen) {
        throw new RuntimeException("Stub!");
    }

    public void loadDrawableAsync(Context context, OnDrawableLoadedListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public Drawable loadDrawable(Context context) {
        throw new RuntimeException("Stub!");
    }

    public static Icon createWithResource(Context context, int resId) {
        throw new RuntimeException("Stub!");
    }

    public static Icon createWithResource(String resPackage, int resId) {
        throw new RuntimeException("Stub!");
    }

    public static Icon createWithBitmap(Bitmap bits) {
        throw new RuntimeException("Stub!");
    }

    public static Icon createWithAdaptiveBitmap(Bitmap bits) {
        throw new RuntimeException("Stub!");
    }

    public static Icon createWithData(byte[] data, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static Icon createWithContentUri(String uri) {
        throw new RuntimeException("Stub!");
    }

    public static Icon createWithContentUri(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public Icon setTint(int tint) {
        throw new RuntimeException("Stub!");
    }

    public Icon setTintList(ColorStateList tintList) {
        throw new RuntimeException("Stub!");
    }

    public Icon setTintMode(PorterDuff.Mode mode) {
        throw new RuntimeException("Stub!");
    }

    public static Icon createWithFilePath(String path) {
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
