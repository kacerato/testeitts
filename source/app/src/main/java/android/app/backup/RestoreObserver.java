package android.app.backup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/backup/RestoreObserver.class
 */
public abstract class RestoreObserver {
    public RestoreObserver() {
        throw new RuntimeException("Stub!");
    }

    public void restoreStarting(int numPackages) {
        throw new RuntimeException("Stub!");
    }

    public void onUpdate(int nowBeingRestored, String currentPackage) {
        throw new RuntimeException("Stub!");
    }

    public void restoreFinished(int error) {
        throw new RuntimeException("Stub!");
    }
}
