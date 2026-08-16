package java.time;

import java.io.Serializable;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalAmount;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalQuery;
import java.time.temporal.TemporalUnit;
import java.time.temporal.ValueRange;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/Instant.class
 */
public final class Instant implements Temporal, TemporalAdjuster, Comparable<Instant>, Serializable {
    public static final Instant EPOCH = null;
    public static final Instant MAX = null;
    public static final Instant MIN = null;

    Instant() {
        throw new RuntimeException("Stub!");
    }

    public static Instant now() {
        throw new RuntimeException("Stub!");
    }

    public static Instant now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static Instant ofEpochSecond(long epochSecond) {
        throw new RuntimeException("Stub!");
    }

    public static Instant ofEpochSecond(long epochSecond, long nanoAdjustment) {
        throw new RuntimeException("Stub!");
    }

    public static Instant ofEpochMilli(long epochMilli) {
        throw new RuntimeException("Stub!");
    }

    public static Instant from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static Instant parse(CharSequence text) {
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

    public long getEpochSecond() {
        throw new RuntimeException("Stub!");
    }

    public int getNano() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Instant with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Instant with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public Instant truncatedTo(TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Instant plus(TemporalAmount amountToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Instant plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public Instant plusSeconds(long secondsToAdd) {
        throw new RuntimeException("Stub!");
    }

    public Instant plusMillis(long millisToAdd) {
        throw new RuntimeException("Stub!");
    }

    public Instant plusNanos(long nanosToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Instant minus(TemporalAmount amountToSubtract) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Instant minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public Instant minusSeconds(long secondsToSubtract) {
        throw new RuntimeException("Stub!");
    }

    public Instant minusMillis(long millisToSubtract) {
        throw new RuntimeException("Stub!");
    }

    public Instant minusNanos(long nanosToSubtract) {
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

    public OffsetDateTime atOffset(ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime atZone(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public long toEpochMilli() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(Instant otherInstant) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAfter(Instant otherInstant) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBefore(Instant otherInstant) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object otherInstant) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
