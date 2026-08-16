package java.time;

import java.io.Serializable;
import java.time.chrono.ChronoLocalDate;
import java.time.chrono.Era;
import java.time.chrono.IsoChronology;
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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/LocalDate.class
 */
public final class LocalDate implements Temporal, TemporalAdjuster, ChronoLocalDate, Serializable {
    public static final LocalDate MAX = null;
    public static final LocalDate MIN = null;

    LocalDate() {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate now() {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate of(int year, Month month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate of(int year, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate ofYearDay(int year, int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate ofEpochDay(long epochDay) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDate parse(CharSequence text, DateTimeFormatter formatter) {
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

    @Override
    public IsoChronology getChronology() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Era getEra() {
        throw new RuntimeException("Stub!");
    }

    public int getYear() {
        throw new RuntimeException("Stub!");
    }

    public int getMonthValue() {
        throw new RuntimeException("Stub!");
    }

    public Month getMonth() {
        throw new RuntimeException("Stub!");
    }

    public int getDayOfMonth() {
        throw new RuntimeException("Stub!");
    }

    public int getDayOfYear() {
        throw new RuntimeException("Stub!");
    }

    public DayOfWeek getDayOfWeek() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isLeapYear() {
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
    public LocalDate with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate withYear(int year) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate withMonth(int month) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate withDayOfMonth(int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate withDayOfYear(int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate plus(TemporalAmount amountToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate plusYears(long yearsToAdd) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate plusMonths(long monthsToAdd) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate plusWeeks(long weeksToAdd) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate plusDays(long daysToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate minus(TemporalAmount amountToSubtract) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDate minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate minusYears(long yearsToSubtract) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate minusMonths(long monthsToSubtract) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate minusWeeks(long weeksToSubtract) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate minusDays(long daysToSubtract) {
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

    @Override
    public Period until(ChronoLocalDate endDateExclusive) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String format(DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDateTime atTime(LocalTime time) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime atTime(int hour, int minute) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime atTime(int hour, int minute, int second) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime atTime(int hour, int minute, int second, int nanoOfSecond) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime atTime(OffsetTime time) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime atStartOfDay() {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime atStartOfDay(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long toEpochDay() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public int compareTo(ChronoLocalDate other) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isAfter(ChronoLocalDate other) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isBefore(ChronoLocalDate other) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isEqual(ChronoLocalDate other) {
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

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
