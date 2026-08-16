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
import java.time.temporal.ValueRange;
import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/ChronoZonedDateTime.class
 */
public interface ChronoZonedDateTime<D extends ChronoLocalDate> extends Temporal, Comparable<ChronoZonedDateTime<?>> {
    ChronoLocalDateTime<D> toLocalDateTime2();

    ZoneOffset getOffset();

    ZoneId getZone();

    ChronoZonedDateTime<D> withEarlierOffsetAtOverlap2();

    ChronoZonedDateTime<D> withLaterOffsetAtOverlap2();

    ChronoZonedDateTime<D> withZoneSameLocal2(ZoneId zoneId);

    ChronoZonedDateTime<D> withZoneSameInstant2(ZoneId zoneId);

    @Override
    boolean isSupported(TemporalField temporalField);

    @Override
    ChronoZonedDateTime<D> with(TemporalField temporalField, long j10);

    @Override
    ChronoZonedDateTime<D> plus(long j10, TemporalUnit temporalUnit);

    boolean equals(Object obj);

    int hashCode();

    String toString();

    static Comparator<ChronoZonedDateTime<?>> timeLineOrder() {
        throw new RuntimeException("Stub!");
    }

    static ChronoZonedDateTime<?> from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ValueRange range(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default int get(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default long getLong(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    default D toLocalDate() {
        throw new RuntimeException("Stub!");
    }

    default LocalTime toLocalTime() {
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
    default ChronoZonedDateTime<D> with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoZonedDateTime<D> plus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoZonedDateTime<D> minus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default ChronoZonedDateTime<D> minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default <R> R query(TemporalQuery<R> query) {
        throw new RuntimeException("Stub!");
    }

    default String format(DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    default Instant toInstant() {
        throw new RuntimeException("Stub!");
    }

    default long toEpochSecond() {
        throw new RuntimeException("Stub!");
    }

    @Override
    default int compareTo(ChronoZonedDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }

    default boolean isBefore(ChronoZonedDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }

    default boolean isAfter(ChronoZonedDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }

    default boolean isEqual(ChronoZonedDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }
}
