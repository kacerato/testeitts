package android.net.wifi;

import android.net.DhcpInfo;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.os.Handler;
import android.os.WorkSource;
import java.net.InetAddress;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/WifiManager.class
 */
public class WifiManager {
    public static final String ACTION_PICK_WIFI_NETWORK = "android.net.wifi.PICK_WIFI_NETWORK";
    public static final String ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE";
    public static final int ERROR_AUTHENTICATING = 1;
    public static final String EXTRA_BSSID = "bssid";
    public static final String EXTRA_NETWORK_INFO = "networkInfo";
    public static final String EXTRA_NEW_RSSI = "newRssi";
    public static final String EXTRA_NEW_STATE = "newState";
    public static final String EXTRA_PREVIOUS_WIFI_STATE = "previous_wifi_state";
    public static final String EXTRA_RESULTS_UPDATED = "resultsUpdated";
    public static final String EXTRA_SUPPLICANT_CONNECTED = "connected";
    public static final String EXTRA_SUPPLICANT_ERROR = "supplicantError";
    public static final String EXTRA_WIFI_INFO = "wifiInfo";
    public static final String EXTRA_WIFI_STATE = "wifi_state";
    public static final String NETWORK_IDS_CHANGED_ACTION = "android.net.wifi.NETWORK_IDS_CHANGED";
    public static final String NETWORK_STATE_CHANGED_ACTION = "android.net.wifi.STATE_CHANGE";
    public static final String RSSI_CHANGED_ACTION = "android.net.wifi.RSSI_CHANGED";
    public static final String SCAN_RESULTS_AVAILABLE_ACTION = "android.net.wifi.SCAN_RESULTS";
    public static final String SUPPLICANT_CONNECTION_CHANGE_ACTION = "android.net.wifi.supplicant.CONNECTION_CHANGE";
    public static final String SUPPLICANT_STATE_CHANGED_ACTION = "android.net.wifi.supplicant.STATE_CHANGE";
    public static final int WIFI_MODE_FULL = 1;
    public static final int WIFI_MODE_FULL_HIGH_PERF = 3;
    public static final int WIFI_MODE_SCAN_ONLY = 2;
    public static final String WIFI_STATE_CHANGED_ACTION = "android.net.wifi.WIFI_STATE_CHANGED";
    public static final int WIFI_STATE_DISABLED = 1;
    public static final int WIFI_STATE_DISABLING = 0;
    public static final int WIFI_STATE_ENABLED = 3;
    public static final int WIFI_STATE_ENABLING = 2;
    public static final int WIFI_STATE_UNKNOWN = 4;
    public static final int WPS_AUTH_FAILURE = 6;
    public static final int WPS_OVERLAP_ERROR = 3;
    public static final int WPS_TIMED_OUT = 7;
    public static final int WPS_TKIP_ONLY_PROHIBITED = 5;
    public static final int WPS_WEP_PROHIBITED = 4;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/WifiManager$WpsCallback.class
 */
    public static abstract class WpsCallback {
        public abstract void onStarted(String str);

        public abstract void onSucceeded();

        public abstract void onFailed(int i10);

        public WpsCallback() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/WifiManager$LocalOnlyHotspotReservation.class
 */
    public class LocalOnlyHotspotReservation implements AutoCloseable {
        LocalOnlyHotspotReservation() {
            throw new RuntimeException("Stub!");
        }

        public WifiConfiguration getWifiConfiguration() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void close() {
            throw new RuntimeException("Stub!");
        }

        protected void finalize() throws Throwable {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/WifiManager$LocalOnlyHotspotCallback.class
 */
    public static class LocalOnlyHotspotCallback {
        public static final int ERROR_GENERIC = 2;
        public static final int ERROR_INCOMPATIBLE_MODE = 3;
        public static final int ERROR_NO_CHANNEL = 1;
        public static final int ERROR_TETHERING_DISALLOWED = 4;

        public LocalOnlyHotspotCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onStarted(LocalOnlyHotspotReservation reservation) {
            throw new RuntimeException("Stub!");
        }

        public void onStopped() {
            throw new RuntimeException("Stub!");
        }

        public void onFailed(int reason) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/WifiManager$WifiLock.class
 */
    public class WifiLock {
        WifiLock() {
            throw new RuntimeException("Stub!");
        }

        public void acquire() {
            throw new RuntimeException("Stub!");
        }

        public void release() {
            throw new RuntimeException("Stub!");
        }

        public void setReferenceCounted(boolean refCounted) {
            throw new RuntimeException("Stub!");
        }

        public boolean isHeld() {
            throw new RuntimeException("Stub!");
        }

        public void setWorkSource(WorkSource ws) {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        protected void finalize() throws Throwable {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/WifiManager$MulticastLock.class
 */
    public class MulticastLock {
        MulticastLock() {
            throw new RuntimeException("Stub!");
        }

        public void acquire() {
            throw new RuntimeException("Stub!");
        }

        public void release() {
            throw new RuntimeException("Stub!");
        }

        public void setReferenceCounted(boolean refCounted) {
            throw new RuntimeException("Stub!");
        }

        public boolean isHeld() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        protected void finalize() throws Throwable {
            throw new RuntimeException("Stub!");
        }
    }

    WifiManager() {
        throw new RuntimeException("Stub!");
    }

    public List<WifiConfiguration> getConfiguredNetworks() {
        throw new RuntimeException("Stub!");
    }

    public int addNetwork(WifiConfiguration config) {
        throw new RuntimeException("Stub!");
    }

    public int updateNetwork(WifiConfiguration config) {
        throw new RuntimeException("Stub!");
    }

    public void addOrUpdatePasspointConfiguration(PasspointConfiguration config) {
        throw new RuntimeException("Stub!");
    }

    public void removePasspointConfiguration(String fqdn) {
        throw new RuntimeException("Stub!");
    }

    public List<PasspointConfiguration> getPasspointConfigurations() {
        throw new RuntimeException("Stub!");
    }

    public boolean removeNetwork(int netId) {
        throw new RuntimeException("Stub!");
    }

    public boolean enableNetwork(int netId, boolean attemptConnect) {
        throw new RuntimeException("Stub!");
    }

    public boolean disableNetwork(int netId) {
        throw new RuntimeException("Stub!");
    }

    public boolean disconnect() {
        throw new RuntimeException("Stub!");
    }

    public boolean reconnect() {
        throw new RuntimeException("Stub!");
    }

    public boolean reassociate() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean pingSupplicant() {
        throw new RuntimeException("Stub!");
    }

    public boolean is5GHzBandSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean isP2pSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDeviceToApRttSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPreferredNetworkOffloadSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTdlsSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEnhancedPowerReportingSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean startScan() {
        throw new RuntimeException("Stub!");
    }

    public WifiInfo getConnectionInfo() {
        throw new RuntimeException("Stub!");
    }

    public List<ScanResult> getScanResults() {
        throw new RuntimeException("Stub!");
    }

    public boolean isScanAlwaysAvailable() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean saveConfiguration() {
        throw new RuntimeException("Stub!");
    }

    public DhcpInfo getDhcpInfo() {
        throw new RuntimeException("Stub!");
    }

    public boolean setWifiEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public int getWifiState() {
        throw new RuntimeException("Stub!");
    }

    public boolean isWifiEnabled() {
        throw new RuntimeException("Stub!");
    }

    public static int calculateSignalLevel(int rssi, int numLevels) {
        throw new RuntimeException("Stub!");
    }

    public static int compareSignalLevel(int rssiA, int rssiB) {
        throw new RuntimeException("Stub!");
    }

    public void startLocalOnlyHotspot(LocalOnlyHotspotCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setTdlsEnabled(InetAddress remoteIPAddress, boolean enable) {
        throw new RuntimeException("Stub!");
    }

    public void setTdlsEnabledWithMacAddress(String remoteMacAddress, boolean enable) {
        throw new RuntimeException("Stub!");
    }

    public void startWps(WpsInfo config, WpsCallback listener) {
        throw new RuntimeException("Stub!");
    }

    public void cancelWps(WpsCallback listener) {
        throw new RuntimeException("Stub!");
    }

    public WifiLock createWifiLock(int lockType, String tag) {
        throw new RuntimeException("Stub!");
    }

    public WifiLock createWifiLock(String tag) {
        throw new RuntimeException("Stub!");
    }

    public MulticastLock createMulticastLock(String tag) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
