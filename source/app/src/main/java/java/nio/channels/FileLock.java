package java.nio.channels;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/FileLock.class
 */
public abstract class FileLock implements AutoCloseable {
    public abstract boolean isValid();

    public abstract void release() throws IOException;

    protected FileLock(FileChannel channel, long position, long size, boolean shared) {
        throw new RuntimeException("Stub!");
    }

    protected FileLock(AsynchronousFileChannel channel, long position, long size, boolean shared) {
        throw new RuntimeException("Stub!");
    }

    public final FileChannel channel() {
        throw new RuntimeException("Stub!");
    }

    public Channel acquiredBy() {
        throw new RuntimeException("Stub!");
    }

    public final long position() {
        throw new RuntimeException("Stub!");
    }

    public final long size() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isShared() {
        throw new RuntimeException("Stub!");
    }

    public final boolean overlaps(long position, long size) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final String toString() {
        throw new RuntimeException("Stub!");
    }
}
