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
import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/OffsetDateTime.class
 */
public final class OffsetDateTime implements Temporal, TemporalAdjuster, Comparable<OffsetDateTime>, Serializable {
    public static final OffsetDateTime MAX = null;
    public static final OffsetDateTime MIN = null;

    OffsetDateTime() {
        throw new RuntimeException("Stub!");
    }

    public static Comparator<OffsetDateTime> timeLineOrder() {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime now() {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime of(LocalDate date, LocalTime time, ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime of(LocalDateTime dateTime, ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime of(int year, int month, int dayOfMonth, int hour, int minute, int second, int nanoOfSecond, ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime ofInstant(Instant instant, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public static OffsetDateTime parse(CharSequence text, DateTimeFormatter formatter) {
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

    public OffsetDateTime withOffsetSameLocal(ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime withOffsetSameInstant(ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime toLocalDateTime() {
        throw new RuntimeException("Stub!");
    }

    public LocalDate toLocalDate() {
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
    public OffsetDateTime with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetDateTime with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime withYear(int year) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime withMonth(int month) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime withDayOfMonth(int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime withDayOfYear(int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime withHour(int hour) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime withMinute(int minute) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime withSecond(int second) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime withNano(int nanoOfSecond) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime truncatedTo(TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetDateTime plus(TemporalAmount amountToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetDateTime plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime plusYears(long years) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime plusMonths(long months) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime plusWeeks(long weeks) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime plusDays(long days) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime plusHours(long hours) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime plusMinutes(long minutes) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime plusSeconds(long seconds) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime plusNanos(long nanos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetDateTime minus(TemporalAmount amountToSubtract) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public OffsetDateTime minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime minusYears(long years) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime minusMonths(long months) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime minusWeeks(long weeks) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime minusDays(long days) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime minusHours(long hours) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime minusMinutes(long minutes) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime minusSeconds(long seconds) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime minusNanos(long nanos) {
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

    public ZonedDateTime atZoneSameInstant(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime atZoneSimilarLocal(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public OffsetTime toOffsetTime() {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime toZonedDateTime() {
        throw new RuntimeException("Stub!");
    }

    public Instant toInstant() {
        throw new RuntimeException("Stub!");
    }

    public long toEpochSecond() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(OffsetDateTime other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAfter(OffsetDateTime other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBefore(OffsetDateTime other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isEqual(OffsetDateTime other) {
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
