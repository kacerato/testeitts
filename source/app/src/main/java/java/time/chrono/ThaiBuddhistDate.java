package java.time.chrono;

import java.io.Serializable;
import java.time.Clock;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalAmount;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalUnit;
import java.time.temporal.ValueRange;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/ThaiBuddhistDate.class
 */
public final class ThaiBuddhistDate extends ChronoLocalDateImpl<ThaiBuddhistDate> implements ChronoLocalDate, Serializable {
    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        return super.until(temporal, temporalUnit);
    }

    ThaiBuddhistDate() {
        throw new RuntimeException("Stub!");
    }

    public static ThaiBuddhistDate now() {
        throw new RuntimeException("Stub!");
    }

    public static ThaiBuddhistDate now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static ThaiBuddhistDate now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static ThaiBuddhistDate of(int prolepticYear, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public static ThaiBuddhistDate from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ThaiBuddhistChronology getChronology() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ThaiBuddhistEra getEra() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int lengthOfMonth() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ValueRange range(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getLong(TemporalField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ThaiBuddhistDate with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ThaiBuddhistDate with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ThaiBuddhistDate plus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ThaiBuddhistDate minus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ThaiBuddhistDate plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ThaiBuddhistDate minus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final ChronoLocalDateTime<ThaiBuddhistDate> atTime(LocalTime localTime) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoPeriod until(ChronoLocalDate endDate) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long toEpochDay() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
