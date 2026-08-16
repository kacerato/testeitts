package java.time;

import java.io.Serializable;
import java.time.format.DateTimeFormatter;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalAmount;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalQuery;
import java.time.temporal.TemporalUnit;
import java.time.temporal.ValueRange;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/OffsetTime.class
 */
public final class OffsetTime implements Temporal, TemporalAdjuster, Comparable<OffsetTime>, Serializable {
    public static final OffsetTime MAX = null;
    public static final OffsetTime MIN = null;

    OffsetTime() {
        throw new RuntimeException("Stub!");
    }

    public static OffsetTime now() {
        throw new RuntimeException("Stub!");
    }

    public static OffsetTime now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetTime now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetTime of(LocalTime time, ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetTime of(int hour, int minute, int second, int nanoOfSecond, ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetTime ofInstant(Instant instant, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetTime from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetTime parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetTime parse(CharSequence text, DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isSupported(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isSupported(TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ValueRange range(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int get(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getLong(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    public ZoneOffset getOffset() {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime withOffsetSameLocal(ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime withOffsetSameInstant(ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public LocalTime toLocalTime() {
        throw new RuntimeException("Stub!");
    }

    public int getHour() {
        throw new RuntimeException("Stub!");
    }

    public int getMinute() {
        throw new RuntimeException("Stub!");
    }

    public int getSecond() {
        throw new RuntimeException("Stub!");
    }

    public int getNano() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetTime with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetTime with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime withHour(int hour) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime withMinute(int minute) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime withSecond(int second) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime withNano(int nanoOfSecond) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime truncatedTo(TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetTime plus(TemporalAmount amountToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetTime plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime plusHours(long hours) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime plusMinutes(long minutes) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime plusSeconds(long seconds) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime plusNanos(long nanos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetTime minus(TemporalAmount amountToSubtract) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetTime minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime minusHours(long hours) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime minusMinutes(long minutes) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime minusSeconds(long seconds) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime minusNanos(long nanos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <R> R query(TemporalQuery<R> query) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Temporal adjustInto(Temporal temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long until(Temporal endExclusive, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public String format(DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime atDate(LocalDate date) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(OffsetTime other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAfter(OffsetTime other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBefore(OffsetTime other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isEqual(OffsetTime other) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
