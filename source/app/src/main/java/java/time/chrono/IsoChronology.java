package java.time.chrono;

import java.io.Serializable;
import java.time.Clock;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.ResolverStyle;
import java.time.temporal.ChronoField;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalField;
import java.time.temporal.ValueRange;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/IsoChronology.class
 */
public final class IsoChronology extends AbstractChronology implements Serializable {
    public static final IsoChronology INSTANCE = null;

    @Override
    public ChronoLocalDate resolveDate(Map map, ResolverStyle resolverStyle) {
        return resolveDate((Map<TemporalField, Long>) map, resolverStyle);
    }

    IsoChronology() {
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
    public LocalDate date(Era era, int yearOfEra, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate date(int prolepticYear, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate dateYearDay(Era era, int yearOfEra, int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate dateYearDay(int prolepticYear, int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate dateEpochDay(long epochDay) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate date(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDateTime localDateTime(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZonedDateTime zonedDateTime(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZonedDateTime zonedDateTime(Instant instant, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate dateNow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate dateNow(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate dateNow(Clock clock) {
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
    public IsoEra eraOf(int eraValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<Era> eras() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate resolveDate(Map<TemporalField, Long> fieldValues, ResolverStyle resolverStyle) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ValueRange range(ChronoField field) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Period period(int years, int months, int days) {
        throw new RuntimeException("Stub!");
    }
}
