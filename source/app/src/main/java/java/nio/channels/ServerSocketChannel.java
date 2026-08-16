package java.nio.channels;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.SocketAddress;
import java.net.SocketOption;
import java.nio.channels.spi.AbstractSelectableChannel;
import java.nio.channels.spi.SelectorProvider;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/ServerSocketChannel.class
 */
public abstract class ServerSocketChannel extends AbstractSelectableChannel implements NetworkChannel {
    public abstract ServerSocketChannel bind(SocketAddress socketAddress, int i10) throws IOException;

    @Override
    public abstract <T> ServerSocketChannel setOption(SocketOption<T> socketOption, T t10) throws IOException;

    public abstract ServerSocket socket();

    public abstract SocketChannel accept() throws IOException;

    @Override
    public abstract SocketAddress getLocalAddress() throws IOException;

    @Override
    public NetworkChannel setOption(SocketOption socketOption, Object obj) throws IOException {
        return setOption((SocketOption<SocketOption>) socketOption, (SocketOption) obj);
    }

    protected ServerSocketChannel(SelectorProvider provider) {
        super((SelectorProvider) null);
        throw new RuntimeException("Stub!");
    }

    public static ServerSocketChannel open() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int validOps() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final ServerSocketChannel bind(SocketAddress local) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
