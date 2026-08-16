package android.app.backup;

import android.os.ParcelFileDescriptor;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/backup/BackupHelper.class
 */
public interface BackupHelper {
    void performBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2);

    void restoreEntity(BackupDataInputStream backupDataInputStream);

    void writeNewStateDescription(ParcelFileDescriptor parcelFileDescriptor);
}
