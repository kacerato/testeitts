package java.nio.channels;

import java.io.IOException;
import java.net.SocketAddress;
import java.net.SocketOption;
import java.nio.channels.spi.AsynchronousChannelProvider;
import java.util.concurrent.Future;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/AsynchronousServerSocketChannel.class
 */
public abstract class AsynchronousServerSocketChannel implements AsynchronousChannel, NetworkChannel {
    public abstract AsynchronousServerSocketChannel bind(SocketAddress socketAddress, int i10) throws IOException;

    @Override
    public abstract <T> AsynchronousServerSocketChannel setOption(SocketOption<T> socketOption, T t10) throws IOException;

    public abstract <A> void accept(A a10, CompletionHandler<AsynchronousSocketChannel, ? super A> completionHandler);

    public abstract Future<AsynchronousSocketChannel> accept();

    @Override
    public abstract SocketAddress getLocalAddress() throws IOException;

    @Override
    public NetworkChannel setOption(SocketOption socketOption, Object obj) throws IOException {
        return setOption((SocketOption<SocketOption>) socketOption, (SocketOption) obj);
    }

    protected AsynchronousServerSocketChannel(AsynchronousChannelProvider provider) {
        throw new RuntimeException("Stub!");
    }

    public final AsynchronousChannelProvider provider() {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousServerSocketChannel open(AsynchronousChannelGroup group) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static AsynchronousServerSocketChannel open() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final AsynchronousServerSocketChannel bind(SocketAddress local) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
