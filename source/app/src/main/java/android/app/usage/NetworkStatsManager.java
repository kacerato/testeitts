package android.app.usage;

import android.app.usage.NetworkStats;
import android.os.Handler;
import android.os.RemoteException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/usage/NetworkStatsManager.class
 */
public class NetworkStatsManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/usage/NetworkStatsManager$UsageCallback.class
 */
    public static abstract class UsageCallback {
        public abstract void onThresholdReached(int i10, String str);

        public UsageCallback() {
            throw new RuntimeException("Stub!");
        }
    }

    NetworkStatsManager() {
        throw new RuntimeException("Stub!");
    }

    public NetworkStats.Bucket querySummaryForDevice(int networkType, String subscriberId, long startTime, long endTime) throws SecurityException, RemoteException {
        throw new RuntimeException("Stub!");
    }

    public NetworkStats.Bucket querySummaryForUser(int networkType, String subscriberId, long startTime, long endTime) throws SecurityException, RemoteException {
        throw new RuntimeException("Stub!");
    }

    public NetworkStats querySummary(int networkType, String subscriberId, long startTime, long endTime) throws SecurityException, RemoteException {
        throw new RuntimeException("Stub!");
    }

    public NetworkStats queryDetailsForUid(int networkType, String subscriberId, long startTime, long endTime, int uid) throws SecurityException, RemoteException {
        throw new RuntimeException("Stub!");
    }

    public NetworkStats queryDetailsForUidTag(int networkType, String subscriberId, long startTime, long endTime, int uid, int tag) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public NetworkStats queryDetails(int networkType, String subscriberId, long startTime, long endTime) throws SecurityException, RemoteException {
        throw new RuntimeException("Stub!");
    }

    public void registerUsageCallback(int networkType, String subscriberId, long thresholdBytes, UsageCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void registerUsageCallback(int networkType, String subscriberId, long thresholdBytes, UsageCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterUsageCallback(UsageCallback callback) {
        throw new RuntimeException("Stub!");
    }
}
