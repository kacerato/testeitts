package android.app.backup;

import android.content.Context;
import android.os.ParcelFileDescriptor;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/backup/SharedPreferencesBackupHelper.class
 */
public class SharedPreferencesBackupHelper extends FileBackupHelperBase implements BackupHelper {
    @Override
    public void writeNewStateDescription(ParcelFileDescriptor parcelFileDescriptor) {
        super.writeNewStateDescription(parcelFileDescriptor);
    }

    public SharedPreferencesBackupHelper(Context context, String... prefGroups) {
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
