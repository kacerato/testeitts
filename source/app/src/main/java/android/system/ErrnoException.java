package android.system;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/system/ErrnoException.class
 */
public final class ErrnoException extends Exception {
    public final int errno;

    public ErrnoException(String functionName, int errno) {
        throw new RuntimeException("Stub!");
    }

    public ErrnoException(String functionName, int errno, Throwable cause) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getMessage() {
        throw new RuntimeException("Stub!");
    }
}
