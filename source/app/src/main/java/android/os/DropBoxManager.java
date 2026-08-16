package android.os;

import android.os.Parcelable;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/DropBoxManager.class
 */
public class DropBoxManager {
    public static final String ACTION_DROPBOX_ENTRY_ADDED = "android.intent.action.DROPBOX_ENTRY_ADDED";
    public static final String EXTRA_TAG = "tag";
    public static final String EXTRA_TIME = "time";
    public static final int IS_EMPTY = 1;
    public static final int IS_GZIPPED = 4;
    public static final int IS_TEXT = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/DropBoxManager$Entry.class
 */
    public static class Entry implements Parcelable, Closeable {
        public static final Parcelable.Creator<Entry> CREATOR = null;

        public Entry(String tag, long millis) {
            throw new RuntimeException("Stub!");
        }

        public Entry(String tag, long millis, String text) {
            throw new RuntimeException("Stub!");
        }

        public Entry(String tag, long millis, byte[] data, int flags) {
            throw new RuntimeException("Stub!");
        }

        public Entry(String tag, long millis, ParcelFileDescriptor data, int flags) {
            throw new RuntimeException("Stub!");
        }

        public Entry(String tag, long millis, File data, int flags) throws IOException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void close() {
            throw new RuntimeException("Stub!");
        }

        public String getTag() {
            throw new RuntimeException("Stub!");
        }

        public long getTimeMillis() {
            throw new RuntimeException("Stub!");
        }

        public int getFlags() {
            throw new RuntimeException("Stub!");
        }

        public String getText(int maxBytes) {
            throw new RuntimeException("Stub!");
        }

        public InputStream getInputStream() throws IOException {
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
    }

    protected DropBoxManager() {
        throw new RuntimeException("Stub!");
    }

    public void addText(String tag, String data) {
        throw new RuntimeException("Stub!");
    }

    public void addData(String tag, byte[] data, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void addFile(String tag, File file, int flags) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean isTagEnabled(String tag) {
        throw new RuntimeException("Stub!");
    }

    public Entry getNextEntry(String tag, long msec) {
        throw new RuntimeException("Stub!");
    }
}
