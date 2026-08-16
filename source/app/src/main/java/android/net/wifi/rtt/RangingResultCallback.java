package android.net.wifi.rtt;

import androidx.annotation.RecentlyNonNull;
import java.util.List;

public abstract class RangingResultCallback {
    public static final int STATUS_CODE_FAIL = 1;
    public static final int STATUS_CODE_FAIL_RTT_NOT_AVAILABLE = 2;

    public abstract void onRangingFailure(int i10);

    public abstract void onRangingResults(@RecentlyNonNull List<RangingResult> list);

    public RangingResultCallback() {
        throw new RuntimeException("Stub!");
    }
}
