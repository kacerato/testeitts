package java.time.chrono;

import java.time.temporal.Temporal;
import java.time.temporal.TemporalAmount;
import java.time.temporal.TemporalUnit;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/ChronoPeriod.class
 */
public interface ChronoPeriod extends TemporalAmount {
    @Override
    long get(TemporalUnit temporalUnit);

    @Override
    List<TemporalUnit> getUnits();

    Chronology getChronology();

    ChronoPeriod plus(TemporalAmount temporalAmount);

    ChronoPeriod minus(TemporalAmount temporalAmount);

    ChronoPeriod multipliedBy(int i10);

    ChronoPeriod normalized();

    @Override
    Temporal addTo(Temporal temporal);

    @Override
    Temporal subtractFrom(Temporal temporal);

    boolean equals(Object obj);

    int hashCode();

    String toString();

    static ChronoPeriod between(ChronoLocalDate startDateInclusive, ChronoLocalDate endDateExclusive) {
        throw new RuntimeException("Stub!");
    }

    default boolean isZero() {
        throw new RuntimeException("Stub!");
    }

    default boolean isNegative() {
        throw new RuntimeException("Stub!");
    }

    default ChronoPeriod negated() {
        throw new RuntimeException("Stub!");
    }
}
