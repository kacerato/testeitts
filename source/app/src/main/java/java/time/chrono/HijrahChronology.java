package java.time.chrono;

import java.io.Serializable;
import java.time.Clock;
import java.time.Instant;
import java.time.ZoneId;
import java.time.format.ResolverStyle;
import java.time.temporal.ChronoField;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalField;
import java.time.temporal.ValueRange;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/HijrahChronology.class
 */
public final class HijrahChronology extends AbstractChronology implements Serializable {
    public static final HijrahChronology INSTANCE = null;

    @Override
    public ChronoLocalDate resolveDate(Map map, ResolverStyle resolverStyle) {
        return resolveDate((Map<TemporalField, Long>) map, resolverStyle);
    }

    HijrahChronology() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getId() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getCalendarType() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate date(Era era, int yearOfEra, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate date(int prolepticYear, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate dateYearDay(Era era, int yearOfEra, int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate dateYearDay(int prolepticYear, int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate dateEpochDay(long epochDay) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate dateNow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate dateNow(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate dateNow(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate date(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoLocalDateTime<HijrahDate> localDateTime(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoZonedDateTime<HijrahDate> zonedDateTime(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoZonedDateTime<HijrahDate> zonedDateTime(Instant instant, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isLeapYear(long prolepticYear) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int prolepticYear(Era era, int yearOfEra) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahEra eraOf(int eraValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<Era> eras() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ValueRange range(ChronoField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public HijrahDate resolveDate(Map<TemporalField, Long> fieldValues, ResolverStyle resolverStyle) {
        throw new RuntimeException("Stub!");
    }
}
