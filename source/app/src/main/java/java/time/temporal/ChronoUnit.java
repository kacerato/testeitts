package java.time.temporal;

import java.time.Duration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/temporal/ChronoUnit.class
 */
public enum ChronoUnit implements TemporalUnit {
    CENTURIES,
    DAYS,
    DECADES,
    ERAS,
    FOREVER,
    HALF_DAYS,
    HOURS,
    MICROS,
    MILLENNIA,
    MILLIS,
    MINUTES,
    MONTHS,
    NANOS,
    SECONDS,
    WEEKS,
    YEARS;

    @Override
    public Duration getDuration() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isDurationEstimated() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isDateBased() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isTimeBased() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isSupportedBy(Temporal temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <R extends Temporal> R addTo(R temporal, long amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long between(Temporal temporal1Inclusive, Temporal temporal2Exclusive) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
