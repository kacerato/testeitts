package android.net.wifi.rtt;

import androidx.annotation.RecentlyNonNull;
import java.util.concurrent.Executor;

public class WifiRttManager {
    public static final String ACTION_WIFI_RTT_STATE_CHANGED = "android.net.wifi.rtt.action.WIFI_RTT_STATE_CHANGED";

    WifiRttManager() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAvailable() {
        throw new RuntimeException("Stub!");
    }

    public void startRanging(@RecentlyNonNull RangingRequest request, @RecentlyNonNull Executor executor, @RecentlyNonNull RangingResultCallback callback) {
        throw new RuntimeException("Stub!");
    }
}
