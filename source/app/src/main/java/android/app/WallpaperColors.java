package android.app;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

public final class WallpaperColors implements Parcelable {
    public static final Parcelable.Creator<WallpaperColors> CREATOR = null;

    public WallpaperColors(Parcel parcel) {
        throw new RuntimeException("Stub!");
    }

    public WallpaperColors(@RecentlyNonNull Color primaryColor, @RecentlyNullable Color secondaryColor, @RecentlyNullable Color tertiaryColor) {
        throw new RuntimeException("Stub!");
    }

    public static WallpaperColors fromDrawable(Drawable drawable) {
        throw new RuntimeException("Stub!");
    }

    public static WallpaperColors fromBitmap(@RecentlyNonNull Bitmap bitmap) {
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

    @RecentlyNonNull
    public Color getPrimaryColor() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public Color getSecondaryColor() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public Color getTertiaryColor() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
