package android.app.backup;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/backup/BackupAgent.class
 */
public abstract class BackupAgent extends ContextWrapper {
    public static final int TYPE_DIRECTORY = 2;
    public static final int TYPE_FILE = 1;

    public abstract void onBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) throws IOException;

    public abstract void onRestore(BackupDataInput backupDataInput, int i10, ParcelFileDescriptor parcelFileDescriptor) throws IOException;

    public BackupAgent() {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    public void onDestroy() {
        throw new RuntimeException("Stub!");
    }

    public void onFullBackup(FullBackupDataOutput data) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void onQuotaExceeded(long backupDataBytes, long quotaBytes) {
        throw new RuntimeException("Stub!");
    }

    public final void fullBackupFile(File file, FullBackupDataOutput output) {
        throw new RuntimeException("Stub!");
    }

    public void onRestoreFile(ParcelFileDescriptor data, long size, File destination, int type, long mode, long mtime) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void onRestoreFinished() {
        throw new RuntimeException("Stub!");
    }
}
