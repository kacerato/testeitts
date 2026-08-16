package android.net.wifi.aware;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/aware/DiscoverySessionCallback.class
 */
public class DiscoverySessionCallback {
    public DiscoverySessionCallback() {
        throw new RuntimeException("Stub!");
    }

    public void onPublishStarted(PublishDiscoverySession session) {
        throw new RuntimeException("Stub!");
    }

    public void onSubscribeStarted(SubscribeDiscoverySession session) {
        throw new RuntimeException("Stub!");
    }

    public void onSessionConfigUpdated() {
        throw new RuntimeException("Stub!");
    }

    public void onSessionConfigFailed() {
        throw new RuntimeException("Stub!");
    }

    public void onSessionTerminated() {
        throw new RuntimeException("Stub!");
    }

    public void onServiceDiscovered(PeerHandle peerHandle, byte[] serviceSpecificInfo, List<byte[]> matchFilter) {
        throw new RuntimeException("Stub!");
    }

    public void onMessageSendSucceeded(int messageId) {
        throw new RuntimeException("Stub!");
    }

    public void onMessageSendFailed(int messageId) {
        throw new RuntimeException("Stub!");
    }

    public void onMessageReceived(PeerHandle peerHandle, byte[] message) {
        throw new RuntimeException("Stub!");
    }
}
