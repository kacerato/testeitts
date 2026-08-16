package java.nio.channels;

import java.io.IOException;
import java.net.SocketAddress;
import java.net.SocketOption;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/NetworkChannel.class
 */
public interface NetworkChannel extends Channel {
    NetworkChannel bind(SocketAddress socketAddress) throws IOException;

    SocketAddress getLocalAddress() throws IOException;

    <T> NetworkChannel setOption(SocketOption<T> socketOption, T t10) throws IOException;

    <T> T getOption(SocketOption<T> socketOption) throws IOException;

    Set<SocketOption<?>> supportedOptions();
}
