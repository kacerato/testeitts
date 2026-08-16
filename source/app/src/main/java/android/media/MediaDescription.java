package android.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDescription.class
 */
public class MediaDescription implements Parcelable {
    public static final long BT_FOLDER_TYPE_ALBUMS = 2;
    public static final long BT_FOLDER_TYPE_ARTISTS = 3;
    public static final long BT_FOLDER_TYPE_GENRES = 4;
    public static final long BT_FOLDER_TYPE_MIXED = 0;
    public static final long BT_FOLDER_TYPE_PLAYLISTS = 5;
    public static final long BT_FOLDER_TYPE_TITLES = 1;
    public static final long BT_FOLDER_TYPE_YEARS = 6;
    public static final Parcelable.Creator<MediaDescription> CREATOR = null;
    public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDescription$Builder.class
 */
    public static class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setMediaId(String mediaId) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTitle(CharSequence title) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSubtitle(CharSequence subtitle) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDescription(CharSequence description) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIconBitmap(Bitmap icon) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIconUri(Uri iconUri) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtras(Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public Builder setMediaUri(Uri mediaUri) {
            throw new RuntimeException("Stub!");
        }

        public MediaDescription build() {
            throw new RuntimeException("Stub!");
        }
    }

    MediaDescription() {
        throw new RuntimeException("Stub!");
    }

    public String getMediaId() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getTitle() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getSubtitle() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getDescription() {
        throw new RuntimeException("Stub!");
    }

    public Bitmap getIconBitmap() {
        throw new RuntimeException("Stub!");
    }

    public Uri getIconUri() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public Uri getMediaUri() {
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

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
