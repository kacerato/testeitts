package android.webkit;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebStorage.class
 */
public class WebStorage {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebStorage$QuotaUpdater.class
 */
    @Deprecated
    public interface QuotaUpdater {
        void updateQuota(long j10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebStorage$Origin.class
 */
    public static class Origin {
        Origin() {
            throw new RuntimeException("Stub!");
        }

        public String getOrigin() {
            throw new RuntimeException("Stub!");
        }

        public long getQuota() {
            throw new RuntimeException("Stub!");
        }

        public long getUsage() {
            throw new RuntimeException("Stub!");
        }
    }

    WebStorage() {
        throw new RuntimeException("Stub!");
    }

    public void getOrigins(ValueCallback<Map> callback) {
        throw new RuntimeException("Stub!");
    }

    public void getUsageForOrigin(String origin, ValueCallback<Long> callback) {
        throw new RuntimeException("Stub!");
    }

    public void getQuotaForOrigin(String origin, ValueCallback<Long> callback) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setQuotaForOrigin(String origin, long quota) {
        throw new RuntimeException("Stub!");
    }

    public void deleteOrigin(String origin) {
        throw new RuntimeException("Stub!");
    }

    public void deleteAllData() {
        throw new RuntimeException("Stub!");
    }

    public static WebStorage getInstance() {
        throw new RuntimeException("Stub!");
    }
}
