package java.net;

import java.io.IOException;
import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/InetAddress.class
 */
public class InetAddress implements Serializable {
    public InetAddress() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMulticastAddress() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAnyLocalAddress() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLoopbackAddress() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLinkLocalAddress() {
        throw new RuntimeException("Stub!");
    }

    public boolean isSiteLocalAddress() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMCGlobal() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMCNodeLocal() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMCLinkLocal() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMCSiteLocal() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMCOrgLocal() {
        throw new RuntimeException("Stub!");
    }

    public boolean isReachable(int timeout) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean isReachable(NetworkInterface netif, int ttl, int timeout) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public String getHostName() {
        throw new RuntimeException("Stub!");
    }

    public String getCanonicalHostName() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getAddress() {
        throw new RuntimeException("Stub!");
    }

    public String getHostAddress() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static InetAddress getByAddress(String host, byte[] addr) throws UnknownHostException {
        throw new RuntimeException("Stub!");
    }

    public static InetAddress getByName(String host) throws UnknownHostException {
        throw new RuntimeException("Stub!");
    }

    public static InetAddress[] getAllByName(String host) throws UnknownHostException {
        throw new RuntimeException("Stub!");
    }

    public static InetAddress getLoopbackAddress() {
        throw new RuntimeException("Stub!");
    }

    public static InetAddress getByAddress(byte[] addr) throws UnknownHostException {
        throw new RuntimeException("Stub!");
    }

    public static InetAddress getLocalHost() throws UnknownHostException {
        throw new RuntimeException("Stub!");
    }
}
