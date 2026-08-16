package java.time.chrono;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalAmount;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalQuery;
import java.time.temporal.TemporalUnit;
import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/ChronoLocalDate.class
 */
public interface ChronoLocalDate extends Temporal, TemporalAdjuster, Comparable<ChronoLocalDate> {
    Chronology getChronology();

    int lengthOfMonth();

    @Override
    long until(Temporal temporal, TemporalUnit temporalUnit);

    ChronoPeriod until(ChronoLocalDate chronoLocalDate);

    boolean equals(Object obj);

    int hashCode();

    String toString();

    static Comparator<ChronoLocalDate> timeLineOrder() {
        throw new RuntimeException("Stub!");
    }

    static ChronoLocalDate from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    default Era getEra() {
        throw new RuntimeException("Stub!");
    }

    default boolean isLeapYear() {
        throw new RuntimeException("Stub!");
    }

    default int lengthOfYear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    default boolean isSupported(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default boolean isSupported(TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDate with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDate with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDate plus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDate plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDate minus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDate minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default <R> R query(TemporalQuery<R> query) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default Temporal adjustInto(Temporal temporal) {
        throw new RuntimeException("Stub!");
    }

    default String format(DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    default ChronoLocalDateTime<?> atTime(LocalTime localTime) {
        throw new RuntimeException("Stub!");
    }

    default long toEpochDay() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    default int compareTo(ChronoLocalDate other) {
        throw new RuntimeException("Stub!");
    }

    default boolean isAfter(ChronoLocalDate other) {
        throw new RuntimeException("Stub!");
    }

    default boolean isBefore(ChronoLocalDate other) {
        throw new RuntimeException("Stub!");
    }

    default boolean isEqual(ChronoLocalDate other) {
        throw new RuntimeException("Stub!");
    }
}
