package Y;

import android.annotation.TargetApi;
import android.os.SystemClock;

public final class g {

    public static final double f29673a = 1.0d / Math.pow(10.0d, 6.0d);

    public static double a(long j10) {
        return (b() - j10) * f29673a;
    }

    @TargetApi(17)
    public static long b() {
        return SystemClock.elapsedRealtimeNanos();
    }
}
