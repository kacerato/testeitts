package java.util.logging;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/logging/ErrorManager.class
 */
public class ErrorManager {
    public static final int CLOSE_FAILURE = 3;
    public static final int FLUSH_FAILURE = 2;
    public static final int FORMAT_FAILURE = 5;
    public static final int GENERIC_FAILURE = 0;
    public static final int OPEN_FAILURE = 4;
    public static final int WRITE_FAILURE = 1;

    public ErrorManager() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void error(String msg, Exception ex, int code) {
        throw new RuntimeException("Stub!");
    }
}
