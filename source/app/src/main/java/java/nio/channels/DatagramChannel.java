package java.nio.channels;

import java.io.IOException;
import java.net.DatagramSocket;
import java.net.ProtocolFamily;
import java.net.SocketAddress;
import java.net.SocketOption;
import java.nio.ByteBuffer;
import java.nio.channels.spi.AbstractSelectableChannel;
import java.nio.channels.spi.SelectorProvider;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/DatagramChannel.class
 */
public abstract class DatagramChannel extends AbstractSelectableChannel implements ByteChannel, ScatteringByteChannel, GatheringByteChannel, MulticastChannel {
    @Override
    public abstract DatagramChannel bind(SocketAddress socketAddress) throws IOException;

    @Override
    public abstract <T> DatagramChannel setOption(SocketOption<T> socketOption, T t10) throws IOException;

    public abstract DatagramSocket socket();

    public abstract boolean isConnected();

    public abstract DatagramChannel connect(SocketAddress socketAddress) throws IOException;

    public abstract DatagramChannel disconnect() throws IOException;

    public abstract SocketAddress getRemoteAddress() throws IOException;

    public abstract SocketAddress receive(ByteBuffer byteBuffer) throws IOException;

    public abstract int send(ByteBuffer byteBuffer, SocketAddress socketAddress) throws IOException;

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

    protected DatagramChannel(SelectorProvider provider) {
        super((SelectorProvider) null);
        throw new RuntimeException("Stub!");
    }

    public static DatagramChannel open() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static DatagramChannel open(ProtocolFamily family) throws IOException {
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
