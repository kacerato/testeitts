package android.net;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.Socket;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/VpnService.class
 */
public class VpnService extends Service {
    public static final String SERVICE_INTERFACE = "android.net.VpnService";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/VpnService$Builder.class
 */
    public class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setSession(String session) {
            throw new RuntimeException("Stub!");
        }

        public Builder setConfigureIntent(PendingIntent intent) {
            throw new RuntimeException("Stub!");
        }

        public Builder setMtu(int mtu) {
            throw new RuntimeException("Stub!");
        }

        public Builder addAddress(InetAddress address, int prefixLength) {
            throw new RuntimeException("Stub!");
        }

        public Builder addAddress(String address, int prefixLength) {
            throw new RuntimeException("Stub!");
        }

        public Builder addRoute(InetAddress address, int prefixLength) {
            throw new RuntimeException("Stub!");
        }

        public Builder addRoute(String address, int prefixLength) {
            throw new RuntimeException("Stub!");
        }

        public Builder addDnsServer(InetAddress address) {
            throw new RuntimeException("Stub!");
        }

        public Builder addDnsServer(String address) {
            throw new RuntimeException("Stub!");
        }

        public Builder addSearchDomain(String domain) {
            throw new RuntimeException("Stub!");
        }

        public Builder allowFamily(int family) {
            throw new RuntimeException("Stub!");
        }

        public Builder addAllowedApplication(String packageName) throws PackageManager.NameNotFoundException {
            throw new RuntimeException("Stub!");
        }

        public Builder addDisallowedApplication(String packageName) throws PackageManager.NameNotFoundException {
            throw new RuntimeException("Stub!");
        }

        public Builder allowBypass() {
            throw new RuntimeException("Stub!");
        }

        public Builder setBlocking(boolean blocking) {
            throw new RuntimeException("Stub!");
        }

        public Builder setUnderlyingNetworks(Network[] networks) {
            throw new RuntimeException("Stub!");
        }

        public ParcelFileDescriptor establish() {
            throw new RuntimeException("Stub!");
        }
    }

    public VpnService() {
        throw new RuntimeException("Stub!");
    }

    public static Intent prepare(Context context) {
        throw new RuntimeException("Stub!");
    }

    public boolean protect(int socket) {
        throw new RuntimeException("Stub!");
    }

    public boolean protect(Socket socket) {
        throw new RuntimeException("Stub!");
    }

    public boolean protect(DatagramSocket socket) {
        throw new RuntimeException("Stub!");
    }

    public boolean setUnderlyingNetworks(Network[] networks) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onRevoke() {
        throw new RuntimeException("Stub!");
    }
}
