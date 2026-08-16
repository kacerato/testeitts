package java.nio.channels;

import java.io.IOException;
import java.nio.channels.spi.AsynchronousChannelProvider;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/AsynchronousChannelGroup.class
 */
public abstract class AsynchronousChannelGroup {
    public abstract boolean isShutdown();

    public abstract boolean isTerminated();

    public abstract void shutdown();

    public abstract void shutdownNow() throws IOException;

    public abstract boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException;

    protected AsynchronousChannelGroup(AsynchronousChannelProvider provider) {
        throw new RuntimeException("Stub!");
    }

    public final AsynchronousChannelProvider provider() {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousChannelGroup withFixedThreadPool(int nThreads, ThreadFactory threadFactory) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousChannelGroup withCachedThreadPool(ExecutorService executor, int initialSize) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousChannelGroup withThreadPool(ExecutorService executor) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
