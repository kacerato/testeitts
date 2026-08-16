package android.os.storage;

import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ProxyFileDescriptorCallback;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/storage/StorageManager.class
 */
public class StorageManager {
    public static final String ACTION_MANAGE_STORAGE = "android.os.storage.action.MANAGE_STORAGE";
    public static final String EXTRA_REQUESTED_BYTES = "android.os.storage.extra.REQUESTED_BYTES";
    public static final String EXTRA_UUID = "android.os.storage.extra.UUID";
    public static final UUID UUID_DEFAULT = null;

    StorageManager() {
        throw new RuntimeException("Stub!");
    }

    public boolean mountObb(String rawPath, String key, OnObbStateChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public boolean unmountObb(String rawPath, boolean force, OnObbStateChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public boolean isObbMounted(String rawPath) {
        throw new RuntimeException("Stub!");
    }

    public String getMountedObbPath(String rawPath) {
        throw new RuntimeException("Stub!");
    }

    public UUID getUuidForPath(File path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public StorageVolume getStorageVolume(File file) {
        throw new RuntimeException("Stub!");
    }

    public List<StorageVolume> getStorageVolumes() {
        throw new RuntimeException("Stub!");
    }

    public StorageVolume getPrimaryStorageVolume() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEncrypted(File file) {
        throw new RuntimeException("Stub!");
    }

    public ParcelFileDescriptor openProxyFileDescriptor(int mode, ProxyFileDescriptorCallback callback, Handler handler) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public long getCacheQuotaBytes(UUID storageUuid) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public long getCacheSizeBytes(UUID storageUuid) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public long getAllocatableBytes(UUID storageUuid) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void allocateBytes(UUID storageUuid, long bytes) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void allocateBytes(FileDescriptor fd2, long bytes) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setCacheBehaviorGroup(File path, boolean group) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean isCacheBehaviorGroup(File path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setCacheBehaviorTombstone(File path, boolean tombstone) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean isCacheBehaviorTombstone(File path) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
