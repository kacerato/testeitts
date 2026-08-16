package android.net.wifi.aware;

import android.net.NetworkSpecifier;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/aware/WifiAwareSession.class
 */
public class WifiAwareSession implements AutoCloseable {
    WifiAwareSession() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    public void publish(PublishConfig publishConfig, DiscoverySessionCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void subscribe(SubscribeConfig subscribeConfig, DiscoverySessionCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public NetworkSpecifier createNetworkSpecifierOpen(int role, byte[] peer) {
        throw new RuntimeException("Stub!");
    }

    public NetworkSpecifier createNetworkSpecifierPassphrase(int role, byte[] peer, String passphrase) {
        throw new RuntimeException("Stub!");
    }
}
