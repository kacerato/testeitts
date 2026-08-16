package java.time.temporal;

import java.time.Duration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/temporal/TemporalUnit.class
 */
public interface TemporalUnit {
    Duration getDuration();

    boolean isDurationEstimated();

    boolean isDateBased();

    boolean isTimeBased();

    <R extends Temporal> R addTo(R r10, long j10);

    long between(Temporal temporal, Temporal temporal2);

    String toString();

    default boolean isSupportedBy(Temporal temporal) {
        throw new RuntimeException("Stub!");
    }
}
