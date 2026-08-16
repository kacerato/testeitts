package android.app.backup;

import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/backup/BackupAgentHelper.class
 */
public class BackupAgentHelper extends BackupAgent {
    public BackupAgentHelper() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onBackup(ParcelFileDescriptor oldState, BackupDataOutput data, ParcelFileDescriptor newState) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestore(BackupDataInput data, int appVersionCode, ParcelFileDescriptor newState) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void addHelper(String keyPrefix, BackupHelper helper) {
        throw new RuntimeException("Stub!");
    }
}
