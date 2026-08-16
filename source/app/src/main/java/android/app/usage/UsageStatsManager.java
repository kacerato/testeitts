package android.app.usage;

import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/usage/UsageStatsManager.class
 */
public final class UsageStatsManager {
    public static final int INTERVAL_BEST = 4;
    public static final int INTERVAL_DAILY = 0;
    public static final int INTERVAL_MONTHLY = 2;
    public static final int INTERVAL_WEEKLY = 1;
    public static final int INTERVAL_YEARLY = 3;

    UsageStatsManager() {
        throw new RuntimeException("Stub!");
    }

    public List<UsageStats> queryUsageStats(int intervalType, long beginTime, long endTime) {
        throw new RuntimeException("Stub!");
    }

    public List<ConfigurationStats> queryConfigurations(int intervalType, long beginTime, long endTime) {
        throw new RuntimeException("Stub!");
    }

    public UsageEvents queryEvents(long beginTime, long endTime) {
        throw new RuntimeException("Stub!");
    }

    public Map<String, UsageStats> queryAndAggregateUsageStats(long beginTime, long endTime) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAppInactive(String packageName) {
        throw new RuntimeException("Stub!");
    }
}
