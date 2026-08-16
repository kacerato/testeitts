package android.app.usage;

import android.content.pm.PackageManager;
import android.os.UserHandle;
import java.io.IOException;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/usage/StorageStatsManager.class
 */
public class StorageStatsManager {
    StorageStatsManager() {
        throw new RuntimeException("Stub!");
    }

    public long getTotalBytes(UUID storageUuid) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public long getFreeBytes(UUID storageUuid) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public StorageStats queryStatsForPackage(UUID storageUuid, String packageName, UserHandle user) throws PackageManager.NameNotFoundException, IOException {
        throw new RuntimeException("Stub!");
    }

    public StorageStats queryStatsForUid(UUID storageUuid, int uid) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public StorageStats queryStatsForUser(UUID storageUuid, UserHandle user) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public ExternalStorageStats queryExternalStatsForUser(UUID storageUuid, UserHandle user) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
