package android.net.wifi.aware;

import android.net.NetworkSpecifier;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/aware/DiscoverySession.class
 */
public class DiscoverySession implements AutoCloseable {
    public DiscoverySession() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    public void sendMessage(PeerHandle peerHandle, int messageId, byte[] message) {
        throw new RuntimeException("Stub!");
    }

    public NetworkSpecifier createNetworkSpecifierOpen(PeerHandle peerHandle) {
        throw new RuntimeException("Stub!");
    }

    public NetworkSpecifier createNetworkSpecifierPassphrase(PeerHandle peerHandle, String passphrase) {
        throw new RuntimeException("Stub!");
    }
}
