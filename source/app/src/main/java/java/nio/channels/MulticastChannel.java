package java.nio.channels;

import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/MulticastChannel.class
 */
public interface MulticastChannel extends NetworkChannel {
    @Override
    void close() throws IOException;

    MembershipKey join(InetAddress inetAddress, NetworkInterface networkInterface) throws IOException;

    MembershipKey join(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2) throws IOException;
}
