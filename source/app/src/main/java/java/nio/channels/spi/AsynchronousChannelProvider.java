package java.nio.channels.spi;

import java.io.IOException;
import java.nio.channels.AsynchronousChannelGroup;
import java.nio.channels.AsynchronousServerSocketChannel;
import java.nio.channels.AsynchronousSocketChannel;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/spi/AsynchronousChannelProvider.class
 */
public abstract class AsynchronousChannelProvider {
    public abstract AsynchronousChannelGroup openAsynchronousChannelGroup(int i10, ThreadFactory threadFactory) throws IOException;

    public abstract AsynchronousChannelGroup openAsynchronousChannelGroup(ExecutorService executorService, int i10) throws IOException;

    public abstract AsynchronousServerSocketChannel openAsynchronousServerSocketChannel(AsynchronousChannelGroup asynchronousChannelGroup) throws IOException;

    public abstract AsynchronousSocketChannel openAsynchronousSocketChannel(AsynchronousChannelGroup asynchronousChannelGroup) throws IOException;

    protected AsynchronousChannelProvider() {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousChannelProvider provider() {
        throw new RuntimeException("Stub!");
    }
}
