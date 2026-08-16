package android.media.browse;

import android.content.ComponentName;
import android.content.Context;
import android.media.MediaDescription;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/browse/MediaBrowser.class
 */
public final class MediaBrowser {
    public static final String EXTRA_PAGE = "android.media.browse.extra.PAGE";
    public static final String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/browse/MediaBrowser$MediaItem.class
 */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = null;
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;

        public MediaItem(MediaDescription description, int flags) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel out, int flags) {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        public int getFlags() {
            throw new RuntimeException("Stub!");
        }

        public boolean isBrowsable() {
            throw new RuntimeException("Stub!");
        }

        public boolean isPlayable() {
            throw new RuntimeException("Stub!");
        }

        public MediaDescription getDescription() {
            throw new RuntimeException("Stub!");
        }

        public String getMediaId() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/browse/MediaBrowser$ConnectionCallback.class
 */
    public static class ConnectionCallback {
        public ConnectionCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onConnected() {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionSuspended() {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionFailed() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/browse/MediaBrowser$SubscriptionCallback.class
 */
    public static abstract class SubscriptionCallback {
        public SubscriptionCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onChildrenLoaded(String parentId, List<MediaItem> children) {
            throw new RuntimeException("Stub!");
        }

        public void onChildrenLoaded(String parentId, List<MediaItem> children, Bundle options) {
            throw new RuntimeException("Stub!");
        }

        public void onError(String parentId) {
            throw new RuntimeException("Stub!");
        }

        public void onError(String parentId, Bundle options) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/browse/MediaBrowser$ItemCallback.class
 */
    public static abstract class ItemCallback {
        public ItemCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onItemLoaded(MediaItem item) {
            throw new RuntimeException("Stub!");
        }

        public void onError(String mediaId) {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaBrowser(Context context, ComponentName serviceComponent, ConnectionCallback callback, Bundle rootHints) {
        throw new RuntimeException("Stub!");
    }

    public void connect() {
        throw new RuntimeException("Stub!");
    }

    public void disconnect() {
        throw new RuntimeException("Stub!");
    }

    public boolean isConnected() {
        throw new RuntimeException("Stub!");
    }

    public ComponentName getServiceComponent() {
        throw new RuntimeException("Stub!");
    }

    public String getRoot() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public MediaSession.Token getSessionToken() {
        throw new RuntimeException("Stub!");
    }

    public void subscribe(String parentId, SubscriptionCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void subscribe(String parentId, Bundle options, SubscriptionCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void unsubscribe(String parentId) {
        throw new RuntimeException("Stub!");
    }

    public void unsubscribe(String parentId, SubscriptionCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void getItem(String mediaId, ItemCallback cb2) {
        throw new RuntimeException("Stub!");
    }
}
