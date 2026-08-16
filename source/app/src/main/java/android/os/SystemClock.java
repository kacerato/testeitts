package android.os;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/SystemClock.class
 */
public final class SystemClock {
    public static native long uptimeMillis();

    public static native long elapsedRealtime();

    public static native long elapsedRealtimeNanos();

    public static native long currentThreadTimeMillis();

    SystemClock() {
        throw new RuntimeException("Stub!");
    }

    public static void sleep(long ms) {
        throw new RuntimeException("Stub!");
    }

    public static boolean setCurrentTimeMillis(long millis) {
        throw new RuntimeException("Stub!");
    }
}
