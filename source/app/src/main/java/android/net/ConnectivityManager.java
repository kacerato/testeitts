package android.net;

import android.app.PendingIntent;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/ConnectivityManager.class
 */
public class ConnectivityManager {

    @Deprecated
    public static final String ACTION_BACKGROUND_DATA_SETTING_CHANGED = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED";
    public static final String ACTION_CAPTIVE_PORTAL_SIGN_IN = "android.net.conn.CAPTIVE_PORTAL";
    public static final String ACTION_RESTRICT_BACKGROUND_CHANGED = "android.net.conn.RESTRICT_BACKGROUND_CHANGED";
    public static final String CONNECTIVITY_ACTION = "android.net.conn.CONNECTIVITY_CHANGE";

    @Deprecated
    public static final int DEFAULT_NETWORK_PREFERENCE = 1;
    public static final String EXTRA_CAPTIVE_PORTAL = "android.net.extra.CAPTIVE_PORTAL";
    public static final String EXTRA_CAPTIVE_PORTAL_URL = "android.net.extra.CAPTIVE_PORTAL_URL";
    public static final String EXTRA_EXTRA_INFO = "extraInfo";
    public static final String EXTRA_IS_FAILOVER = "isFailover";
    public static final String EXTRA_NETWORK = "android.net.extra.NETWORK";

    @Deprecated
    public static final String EXTRA_NETWORK_INFO = "networkInfo";
    public static final String EXTRA_NETWORK_REQUEST = "android.net.extra.NETWORK_REQUEST";
    public static final String EXTRA_NETWORK_TYPE = "networkType";
    public static final String EXTRA_NO_CONNECTIVITY = "noConnectivity";
    public static final String EXTRA_OTHER_NETWORK_INFO = "otherNetwork";
    public static final String EXTRA_REASON = "reason";
    public static final int MULTIPATH_PREFERENCE_HANDOVER = 1;
    public static final int MULTIPATH_PREFERENCE_PERFORMANCE = 4;
    public static final int MULTIPATH_PREFERENCE_RELIABILITY = 2;
    public static final int RESTRICT_BACKGROUND_STATUS_DISABLED = 1;
    public static final int RESTRICT_BACKGROUND_STATUS_ENABLED = 3;
    public static final int RESTRICT_BACKGROUND_STATUS_WHITELISTED = 2;
    public static final int TYPE_BLUETOOTH = 7;
    public static final int TYPE_DUMMY = 8;
    public static final int TYPE_ETHERNET = 9;
    public static final int TYPE_MOBILE = 0;
    public static final int TYPE_MOBILE_DUN = 4;

    @Deprecated
    public static final int TYPE_MOBILE_HIPRI = 5;

    @Deprecated
    public static final int TYPE_MOBILE_MMS = 2;

    @Deprecated
    public static final int TYPE_MOBILE_SUPL = 3;
    public static final int TYPE_VPN = 17;
    public static final int TYPE_WIFI = 1;
    public static final int TYPE_WIMAX = 6;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/ConnectivityManager$OnNetworkActiveListener.class
 */
    public interface OnNetworkActiveListener {
        void onNetworkActive();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/ConnectivityManager$NetworkCallback.class
 */
    public static class NetworkCallback {
        public NetworkCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onAvailable(Network network) {
            throw new RuntimeException("Stub!");
        }

        public void onLosing(Network network, int maxMsToLive) {
            throw new RuntimeException("Stub!");
        }

        public void onLost(Network network) {
            throw new RuntimeException("Stub!");
        }

        public void onUnavailable() {
            throw new RuntimeException("Stub!");
        }

        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            throw new RuntimeException("Stub!");
        }

        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            throw new RuntimeException("Stub!");
        }
    }

    ConnectivityManager() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static boolean isNetworkTypeValid(int networkType) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setNetworkPreference(int preference) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int getNetworkPreference() {
        throw new RuntimeException("Stub!");
    }

    public NetworkInfo getActiveNetworkInfo() {
        throw new RuntimeException("Stub!");
    }

    public Network getActiveNetwork() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public NetworkInfo getNetworkInfo(int networkType) {
        throw new RuntimeException("Stub!");
    }

    public NetworkInfo getNetworkInfo(Network network) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public NetworkInfo[] getAllNetworkInfo() {
        throw new RuntimeException("Stub!");
    }

    public Network[] getAllNetworks() {
        throw new RuntimeException("Stub!");
    }

    public LinkProperties getLinkProperties(Network network) {
        throw new RuntimeException("Stub!");
    }

    public NetworkCapabilities getNetworkCapabilities(Network network) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean getBackgroundDataSetting() {
        throw new RuntimeException("Stub!");
    }

    public void addDefaultNetworkActiveListener(OnNetworkActiveListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void removeDefaultNetworkActiveListener(OnNetworkActiveListener l10) {
        throw new RuntimeException("Stub!");
    }

    public boolean isDefaultNetworkActive() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void reportBadNetwork(Network network) {
        throw new RuntimeException("Stub!");
    }

    public void reportNetworkConnectivity(Network network, boolean hasConnectivity) {
        throw new RuntimeException("Stub!");
    }

    public ProxyInfo getDefaultProxy() {
        throw new RuntimeException("Stub!");
    }

    public boolean isActiveNetworkMetered() {
        throw new RuntimeException("Stub!");
    }

    public void requestNetwork(NetworkRequest request, NetworkCallback networkCallback) {
        throw new RuntimeException("Stub!");
    }

    public void requestNetwork(NetworkRequest request, NetworkCallback networkCallback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void requestNetwork(NetworkRequest request, NetworkCallback networkCallback, int timeoutMs) {
        throw new RuntimeException("Stub!");
    }

    public void requestNetwork(NetworkRequest request, NetworkCallback networkCallback, Handler handler, int timeoutMs) {
        throw new RuntimeException("Stub!");
    }

    public void requestNetwork(NetworkRequest request, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void releaseNetworkRequest(PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void registerNetworkCallback(NetworkRequest request, NetworkCallback networkCallback) {
        throw new RuntimeException("Stub!");
    }

    public void registerNetworkCallback(NetworkRequest request, NetworkCallback networkCallback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void registerNetworkCallback(NetworkRequest request, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void registerDefaultNetworkCallback(NetworkCallback networkCallback) {
        throw new RuntimeException("Stub!");
    }

    public void registerDefaultNetworkCallback(NetworkCallback networkCallback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public boolean requestBandwidthUpdate(Network network) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterNetworkCallback(NetworkCallback networkCallback) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterNetworkCallback(PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public int getMultipathPreference(Network network) {
        throw new RuntimeException("Stub!");
    }

    public boolean bindProcessToNetwork(Network network) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static boolean setProcessDefaultNetwork(Network network) {
        throw new RuntimeException("Stub!");
    }

    public Network getBoundNetworkForProcess() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static Network getProcessDefaultNetwork() {
        throw new RuntimeException("Stub!");
    }

    public int getRestrictBackgroundStatus() {
        throw new RuntimeException("Stub!");
    }
}
