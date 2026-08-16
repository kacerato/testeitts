package android.os;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/RecoverySystem.class
 */
public class RecoverySystem {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/RecoverySystem$ProgressListener.class
 */
    public interface ProgressListener {
        void onProgress(int i10);
    }

    RecoverySystem() {
        throw new RuntimeException("Stub!");
    }

    public static void verifyPackage(File packageFile, ProgressListener listener, File deviceCertsZipFile) throws IOException, GeneralSecurityException {
        throw new RuntimeException("Stub!");
    }

    public static void installPackage(Context context, File packageFile) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static void rebootWipeUserData(Context context) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static void rebootWipeCache(Context context) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
