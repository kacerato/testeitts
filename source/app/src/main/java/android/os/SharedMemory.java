package android.os;

import android.os.Parcelable;
import android.system.ErrnoException;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.nio.ByteBuffer;

public final class SharedMemory implements Parcelable, Closeable {
    public static final Parcelable.Creator<SharedMemory> CREATOR = null;

    SharedMemory(FileDescriptor fd2) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public static SharedMemory create(@RecentlyNullable String name, int size) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public boolean setProtect(int prot) {
        throw new RuntimeException("Stub!");
    }

    public int getSize() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public ByteBuffer mapReadWrite() throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public ByteBuffer mapReadOnly() throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public ByteBuffer map(int prot, int offset, int length) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void unmap(@RecentlyNonNull ByteBuffer buffer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(@RecentlyNonNull Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
