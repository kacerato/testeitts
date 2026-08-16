package java.time.temporal;

import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/temporal/ChronoField.class
 */
public enum ChronoField implements TemporalField {
    ALIGNED_DAY_OF_WEEK_IN_MONTH,
    ALIGNED_DAY_OF_WEEK_IN_YEAR,
    ALIGNED_WEEK_OF_MONTH,
    ALIGNED_WEEK_OF_YEAR,
    AMPM_OF_DAY,
    CLOCK_HOUR_OF_AMPM,
    CLOCK_HOUR_OF_DAY,
    DAY_OF_MONTH,
    DAY_OF_WEEK,
    DAY_OF_YEAR,
    EPOCH_DAY,
    ERA,
    HOUR_OF_AMPM,
    HOUR_OF_DAY,
    INSTANT_SECONDS,
    MICRO_OF_DAY,
    MICRO_OF_SECOND,
    MILLI_OF_DAY,
    MILLI_OF_SECOND,
    MINUTE_OF_DAY,
    MINUTE_OF_HOUR,
    MONTH_OF_YEAR,
    NANO_OF_DAY,
    NANO_OF_SECOND,
    OFFSET_SECONDS,
    PROLEPTIC_MONTH,
    SECOND_OF_DAY,
    SECOND_OF_MINUTE,
    YEAR,
    YEAR_OF_ERA;

    @Override
    public String getDisplayName(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TemporalUnit getBaseUnit() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TemporalUnit getRangeUnit() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ValueRange range() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isDateBased() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isTimeBased() {
        throw new RuntimeException("Stub!");
    }

    public long checkValidValue(long value) {
        throw new RuntimeException("Stub!");
    }

    public int checkValidIntValue(long value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isSupportedBy(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ValueRange rangeRefinedBy(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getFrom(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <R extends Temporal> R adjustInto(R temporal, long newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
