package java.nio.channels;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketOption;
import java.nio.ByteBuffer;
import java.nio.channels.spi.AbstractSelectableChannel;
import java.nio.channels.spi.SelectorProvider;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/SocketChannel.class
 */
public abstract class SocketChannel extends AbstractSelectableChannel implements ByteChannel, ScatteringByteChannel, GatheringByteChannel, NetworkChannel {
    @Override
    public abstract SocketChannel bind(SocketAddress socketAddress) throws IOException;

    @Override
    public abstract <T> SocketChannel setOption(SocketOption<T> socketOption, T t10) throws IOException;

    public abstract SocketChannel shutdownInput() throws IOException;

    public abstract SocketChannel shutdownOutput() throws IOException;

    public abstract Socket socket();

    public abstract boolean isConnected();

    public abstract boolean isConnectionPending();

    public abstract boolean connect(SocketAddress socketAddress) throws IOException;

    public abstract boolean finishConnect() throws IOException;

    public abstract SocketAddress getRemoteAddress() throws IOException;

    @Override
    public abstract int read(ByteBuffer byteBuffer) throws IOException;

    @Override
    public abstract long read(ByteBuffer[] byteBufferArr, int i10, int i11) throws IOException;

    @Override
    public abstract int write(ByteBuffer byteBuffer) throws IOException;

    @Override
    public abstract long write(ByteBuffer[] byteBufferArr, int i10, int i11) throws IOException;

    @Override
    public abstract SocketAddress getLocalAddress() throws IOException;

    @Override
    public NetworkChannel setOption(SocketOption socketOption, Object obj) throws IOException {
        return setOption((SocketOption<SocketOption>) socketOption, (SocketOption) obj);
    }

    protected SocketChannel(SelectorProvider provider) {
        super((SelectorProvider) null);
        throw new RuntimeException("Stub!");
    }

    public static SocketChannel open() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static SocketChannel open(SocketAddress remote) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int validOps() {
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
}
