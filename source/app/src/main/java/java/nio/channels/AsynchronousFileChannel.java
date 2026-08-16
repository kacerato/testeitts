package java.nio.channels;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/AsynchronousFileChannel.class
 */
public abstract class AsynchronousFileChannel implements AsynchronousChannel {
    public abstract long size() throws IOException;

    public abstract AsynchronousFileChannel truncate(long j10) throws IOException;

    public abstract void force(boolean z10) throws IOException;

    public abstract <A> void lock(long j10, long j11, boolean z10, A a10, CompletionHandler<FileLock, ? super A> completionHandler);

    public abstract Future<FileLock> lock(long j10, long j11, boolean z10);

    public abstract FileLock tryLock(long j10, long j11, boolean z10) throws IOException;

    public abstract <A> void read(ByteBuffer byteBuffer, long j10, A a10, CompletionHandler<Integer, ? super A> completionHandler);

    public abstract Future<Integer> read(ByteBuffer byteBuffer, long j10);

    public abstract <A> void write(ByteBuffer byteBuffer, long j10, A a10, CompletionHandler<Integer, ? super A> completionHandler);

    public abstract Future<Integer> write(ByteBuffer byteBuffer, long j10);

    protected AsynchronousFileChannel() {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousFileChannel open(Path file, Set<? extends OpenOption> options, ExecutorService executor, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousFileChannel open(Path file, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final <A> void lock(A attachment, CompletionHandler<FileLock, ? super A> handler) {
        throw new RuntimeException("Stub!");
    }

    public final Future<FileLock> lock() {
        throw new RuntimeException("Stub!");
    }

    public final FileLock tryLock() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
