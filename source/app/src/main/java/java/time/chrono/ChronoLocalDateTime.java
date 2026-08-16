package java.time.chrono;

import java.time.Instant;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.chrono.ChronoLocalDate;
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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/ChronoLocalDateTime.class
 */
public interface ChronoLocalDateTime<D extends ChronoLocalDate> extends Temporal, TemporalAdjuster, Comparable<ChronoLocalDateTime<?>> {
    D toLocalDate();

    LocalTime toLocalTime();

    @Override
    boolean isSupported(TemporalField temporalField);

    @Override
    ChronoLocalDateTime<D> with(TemporalField temporalField, long j10);

    @Override
    ChronoLocalDateTime<D> plus(long j10, TemporalUnit temporalUnit);

    ChronoZonedDateTime<D> atZone2(ZoneId zoneId);

    boolean equals(Object obj);

    int hashCode();

    String toString();

    static Comparator<ChronoLocalDateTime<?>> timeLineOrder() {
        throw new RuntimeException("Stub!");
    }

    static ChronoLocalDateTime<?> from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    default Chronology getChronology() {
        throw new RuntimeException("Stub!");
    }

    @Override
    default boolean isSupported(TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDateTime<D> with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDateTime<D> plus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDateTime<D> minus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoLocalDateTime<D> minus(long amountToSubtract, TemporalUnit unit) {
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

    default Instant toInstant(ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    default long toEpochSecond(ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    default int compareTo(ChronoLocalDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }

    default boolean isAfter(ChronoLocalDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }

    default boolean isBefore(ChronoLocalDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }

    default boolean isEqual(ChronoLocalDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }
}
