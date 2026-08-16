package java.nio.channels;

import java.io.IOException;
import java.net.SocketAddress;
import java.net.SocketOption;
import java.nio.ByteBuffer;
import java.nio.channels.spi.AsynchronousChannelProvider;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/AsynchronousSocketChannel.class
 */
public abstract class AsynchronousSocketChannel implements AsynchronousByteChannel, NetworkChannel {
    @Override
    public abstract AsynchronousSocketChannel bind(SocketAddress socketAddress) throws IOException;

    @Override
    public abstract <T> AsynchronousSocketChannel setOption(SocketOption<T> socketOption, T t10) throws IOException;

    public abstract AsynchronousSocketChannel shutdownInput() throws IOException;

    public abstract AsynchronousSocketChannel shutdownOutput() throws IOException;

    public abstract SocketAddress getRemoteAddress() throws IOException;

    public abstract <A> void connect(SocketAddress socketAddress, A a10, CompletionHandler<Void, ? super A> completionHandler);

    public abstract Future<Void> connect(SocketAddress socketAddress);

    public abstract <A> void read(ByteBuffer byteBuffer, long j10, TimeUnit timeUnit, A a10, CompletionHandler<Integer, ? super A> completionHandler);

    @Override
    public abstract Future<Integer> read(ByteBuffer byteBuffer);

    public abstract <A> void read(ByteBuffer[] byteBufferArr, int i10, int i11, long j10, TimeUnit timeUnit, A a10, CompletionHandler<Long, ? super A> completionHandler);

    public abstract <A> void write(ByteBuffer byteBuffer, long j10, TimeUnit timeUnit, A a10, CompletionHandler<Integer, ? super A> completionHandler);

    @Override
    public abstract Future<Integer> write(ByteBuffer byteBuffer);

    public abstract <A> void write(ByteBuffer[] byteBufferArr, int i10, int i11, long j10, TimeUnit timeUnit, A a10, CompletionHandler<Long, ? super A> completionHandler);

    @Override
    public abstract SocketAddress getLocalAddress() throws IOException;

    @Override
    public NetworkChannel setOption(SocketOption socketOption, Object obj) throws IOException {
        return setOption((SocketOption<SocketOption>) socketOption, (SocketOption) obj);
    }

    protected AsynchronousSocketChannel(AsynchronousChannelProvider provider) {
        throw new RuntimeException("Stub!");
    }

    public final AsynchronousChannelProvider provider() {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousSocketChannel open(AsynchronousChannelGroup group) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousSocketChannel open() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final <A> void read(ByteBuffer dst, A attachment, CompletionHandler<Integer, ? super A> handler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final <A> void write(ByteBuffer src, A attachment, CompletionHandler<Integer, ? super A> handler) {
        throw new RuntimeException("Stub!");
    }
}
