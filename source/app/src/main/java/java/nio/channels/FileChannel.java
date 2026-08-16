package java.nio.channels;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.spi.AbstractInterruptibleChannel;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/FileChannel.class
 */
public abstract class FileChannel extends AbstractInterruptibleChannel implements SeekableByteChannel, GatheringByteChannel, ScatteringByteChannel {
    @Override
    public abstract int read(ByteBuffer byteBuffer) throws IOException;

    @Override
    public abstract long read(ByteBuffer[] byteBufferArr, int i10, int i11) throws IOException;

    @Override
    public abstract int write(ByteBuffer byteBuffer) throws IOException;

    @Override
    public abstract long write(ByteBuffer[] byteBufferArr, int i10, int i11) throws IOException;

    @Override
    public abstract long position() throws IOException;

    @Override
    public abstract FileChannel position(long j10) throws IOException;

    @Override
    public abstract long size() throws IOException;

    @Override
    public abstract FileChannel truncate(long j10) throws IOException;

    public abstract void force(boolean z10) throws IOException;

    public abstract long transferTo(long j10, long j11, WritableByteChannel writableByteChannel) throws IOException;

    public abstract long transferFrom(ReadableByteChannel readableByteChannel, long j10, long j11) throws IOException;

    public abstract int read(ByteBuffer byteBuffer, long j10) throws IOException;

    public abstract int write(ByteBuffer byteBuffer, long j10) throws IOException;

    public abstract MappedByteBuffer map(MapMode mapMode, long j10, long j11) throws IOException;

    public abstract FileLock lock(long j10, long j11, boolean z10) throws IOException;

    public abstract FileLock tryLock(long j10, long j11, boolean z10) throws IOException;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/FileChannel$MapMode.class
 */
    public static class MapMode {
        public static final MapMode PRIVATE = null;
        public static final MapMode READ_ONLY = null;
        public static final MapMode READ_WRITE = null;

        MapMode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    protected FileChannel() {
        throw new RuntimeException("Stub!");
    }

    public static FileChannel open(Path path, Set<? extends OpenOption> options, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static FileChannel open(Path path, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final long read(ByteBuffer[] dsts) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final long write(ByteBuffer[] srcs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final FileLock lock() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final FileLock tryLock() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
