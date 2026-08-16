package java.time;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/Clock.class
 */
public abstract class Clock {
    public abstract ZoneId getZone();

    public abstract Clock withZone(ZoneId zoneId);

    public abstract Instant instant();

    protected Clock() {
        throw new RuntimeException("Stub!");
    }

    public static Clock systemUTC() {
        throw new RuntimeException("Stub!");
    }

    public static Clock systemDefaultZone() {
        throw new RuntimeException("Stub!");
    }

    public static Clock system(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static Clock tickSeconds(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static Clock tickMinutes(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static Clock tick(Clock baseClock, Duration tickDuration) {
        throw new RuntimeException("Stub!");
    }

    public static Clock fixed(Instant fixedInstant, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static Clock offset(Clock baseClock, Duration offsetDuration) {
        throw new RuntimeException("Stub!");
    }

    public long millis() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
