package android.media;

import android.graphics.Bitmap;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaMetadataEditor.class
 */
@Deprecated
public abstract class MediaMetadataEditor {
    public static final int BITMAP_KEY_ARTWORK = 100;
    public static final int RATING_KEY_BY_OTHERS = 101;
    public static final int RATING_KEY_BY_USER = 268435457;

    public abstract void apply();

    public MediaMetadataEditor() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void clear() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void addEditableKey(int key) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void removeEditableKeys() {
        throw new RuntimeException("Stub!");
    }

    public synchronized int[] getEditableKeys() {
        throw new RuntimeException("Stub!");
    }

    public synchronized MediaMetadataEditor putString(int key, String value) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public synchronized MediaMetadataEditor putLong(int key, long value) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public synchronized MediaMetadataEditor putBitmap(int key, Bitmap bitmap) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public synchronized MediaMetadataEditor putObject(int key, Object value) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public synchronized long getLong(int key, long defaultValue) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public synchronized String getString(int key, String defaultValue) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public synchronized Bitmap getBitmap(int key, Bitmap defaultValue) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public synchronized Object getObject(int key, Object defaultValue) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }
}
