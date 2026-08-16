package android.content.res;

import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/res/AssetFileDescriptor.class
 */
public class AssetFileDescriptor implements Parcelable, Closeable {
    public static final Parcelable.Creator<AssetFileDescriptor> CREATOR = null;
    public static final long UNKNOWN_LENGTH = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/res/AssetFileDescriptor$AutoCloseInputStream.class
 */
    public static class AutoCloseInputStream extends ParcelFileDescriptor.AutoCloseInputStream {
        public AutoCloseInputStream(AssetFileDescriptor fd2) throws IOException {
            super((ParcelFileDescriptor) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        public int available() throws IOException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int read() throws IOException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int read(byte[] buffer, int offset, int count) throws IOException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int read(byte[] buffer) throws IOException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public long skip(long count) throws IOException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void mark(int readlimit) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean markSupported() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized void reset() throws IOException {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/res/AssetFileDescriptor$AutoCloseOutputStream.class
 */
    public static class AutoCloseOutputStream extends ParcelFileDescriptor.AutoCloseOutputStream {
        public AutoCloseOutputStream(AssetFileDescriptor fd2) throws IOException {
            super((ParcelFileDescriptor) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        public void write(byte[] buffer, int offset, int count) throws IOException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void write(byte[] buffer) throws IOException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void write(int oneByte) throws IOException {
            throw new RuntimeException("Stub!");
        }
    }

    public AssetFileDescriptor(ParcelFileDescriptor fd2, long startOffset, long length) {
        throw new RuntimeException("Stub!");
    }

    public AssetFileDescriptor(ParcelFileDescriptor fd2, long startOffset, long length, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public ParcelFileDescriptor getParcelFileDescriptor() {
        throw new RuntimeException("Stub!");
    }

    public FileDescriptor getFileDescriptor() {
        throw new RuntimeException("Stub!");
    }

    public long getStartOffset() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public long getLength() {
        throw new RuntimeException("Stub!");
    }

    public long getDeclaredLength() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public FileInputStream createInputStream() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public FileOutputStream createOutputStream() throws IOException {
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
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }
}
