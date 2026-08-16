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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/chrono/JapaneseChronology.class
 */
public final class JapaneseChronology extends AbstractChronology implements Serializable {
    public static final JapaneseChronology INSTANCE = null;

    @Override
    public ChronoLocalDate resolveDate(Map map, ResolverStyle resolverStyle) {
        return resolveDate((Map<TemporalField, Long>) map, resolverStyle);
    }

    JapaneseChronology() {
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
    public JapaneseDate date(Era era, int yearOfEra, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public JapaneseDate date(int prolepticYear, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public JapaneseDate dateYearDay(Era era, int yearOfEra, int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public JapaneseDate dateYearDay(int prolepticYear, int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public JapaneseDate dateEpochDay(long epochDay) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public JapaneseDate dateNow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public JapaneseDate dateNow(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public JapaneseDate dateNow(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public JapaneseDate date(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoLocalDateTime<JapaneseDate> localDateTime(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoZonedDateTime<JapaneseDate> zonedDateTime(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoZonedDateTime<JapaneseDate> zonedDateTime(Instant instant, ZoneId zone) {
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
    public JapaneseEra eraOf(int eraValue) {
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
    public JapaneseDate resolveDate(Map<TemporalField, Long> fieldValues, ResolverStyle resolverStyle) {
        throw new RuntimeException("Stub!");
    }
}
