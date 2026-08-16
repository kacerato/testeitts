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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/MinguoDate.class
 */
public final class MinguoDate extends ChronoLocalDateImpl<MinguoDate> implements ChronoLocalDate, Serializable {
    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        return super.until(temporal, temporalUnit);
    }

    MinguoDate() {
        throw new RuntimeException("Stub!");
    }

    public static MinguoDate now() {
        throw new RuntimeException("Stub!");
    }

    public static MinguoDate now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static MinguoDate now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static MinguoDate of(int prolepticYear, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public static MinguoDate from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public MinguoChronology getChronology() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public MinguoEra getEra() {
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
    public MinguoDate with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public MinguoDate with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public MinguoDate plus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public MinguoDate minus(TemporalAmount amount) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public MinguoDate plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public MinguoDate minus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final ChronoLocalDateTime<MinguoDate> atTime(LocalTime localTime) {
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
