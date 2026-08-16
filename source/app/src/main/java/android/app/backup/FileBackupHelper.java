package android.app.backup;

import android.content.Context;
import android.os.ParcelFileDescriptor;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/backup/FileBackupHelper.class
 */
public class FileBackupHelper extends FileBackupHelperBase implements BackupHelper {
    @Override
    public void writeNewStateDescription(ParcelFileDescriptor parcelFileDescriptor) {
        super.writeNewStateDescription(parcelFileDescriptor);
    }

    public FileBackupHelper(Context context, String... files) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void performBackup(ParcelFileDescriptor oldState, BackupDataOutput data, ParcelFileDescriptor newState) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void restoreEntity(BackupDataInputStream data) {
        throw new RuntimeException("Stub!");
    }
}
