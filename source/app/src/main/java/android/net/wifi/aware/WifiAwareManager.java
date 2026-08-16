package android.net.wifi.aware;

import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/aware/WifiAwareManager.class
 */
public class WifiAwareManager {
    public static final String ACTION_WIFI_AWARE_STATE_CHANGED = "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED";
    public static final int WIFI_AWARE_DATA_PATH_ROLE_INITIATOR = 0;
    public static final int WIFI_AWARE_DATA_PATH_ROLE_RESPONDER = 1;

    WifiAwareManager() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAvailable() {
        throw new RuntimeException("Stub!");
    }

    public Characteristics getCharacteristics() {
        throw new RuntimeException("Stub!");
    }

    public void attach(AttachCallback attachCallback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void attach(AttachCallback attachCallback, IdentityChangedListener identityChangedListener, Handler handler) {
        throw new RuntimeException("Stub!");
    }
}
