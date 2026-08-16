package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/TimeUnit.class
 */
public enum TimeUnit {
    DAYS,
    HOURS,
    MICROSECONDS,
    MILLISECONDS,
    MINUTES,
    NANOSECONDS,
    SECONDS;

    public long convert(long sourceDuration, TimeUnit sourceUnit) {
        throw new RuntimeException("Stub!");
    }

    public long toNanos(long duration) {
        throw new RuntimeException("Stub!");
    }

    public long toMicros(long duration) {
        throw new RuntimeException("Stub!");
    }

    public long toMillis(long duration) {
        throw new RuntimeException("Stub!");
    }

    public long toSeconds(long duration) {
        throw new RuntimeException("Stub!");
    }

    public long toMinutes(long duration) {
        throw new RuntimeException("Stub!");
    }

    public long toHours(long duration) {
        throw new RuntimeException("Stub!");
    }

    public long toDays(long duration) {
        throw new RuntimeException("Stub!");
    }

    public void timedWait(Object obj, long timeout) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public void timedJoin(Thread thread, long timeout) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public void sleep(long timeout) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }
}
