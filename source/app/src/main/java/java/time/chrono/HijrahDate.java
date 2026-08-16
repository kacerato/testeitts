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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/HijrahDate.class
 */
public final class HijrahDate extends ChronoLocalDateImpl<HijrahDate> implements ChronoLocalDate, Serializable {
    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        return super.until(temporal, temporalUnit);
    }

    HijrahDate() {
        throw new RuntimeException("Stub!");
    }

    public static HijrahDate now() {
        throw new RuntimeException("Stub!");
    }

    public static HijrahDate now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static HijrahDate now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static HijrahDate of(int prolepticYear, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public static HijrahDate from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahChronology getChronology() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahEra getEra() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int lengthOfMonth() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int lengthOfYear() {
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
    public HijrahDate with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    public HijrahDate withVariant(HijrahChronology chronology) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate plus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate minus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long toEpochDay() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isLeapYear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final ChronoLocalDateTime<HijrahDate> atTime(LocalTime localTime) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoPeriod until(ChronoLocalDate endDate) {
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
