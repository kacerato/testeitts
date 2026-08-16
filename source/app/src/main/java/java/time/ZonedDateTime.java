package java.time;

import java.io.Serializable;
import java.time.chrono.ChronoLocalDateTime;
import java.time.chrono.ChronoZonedDateTime;
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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/ZonedDateTime.class
 */
public final class ZonedDateTime implements Temporal, ChronoZonedDateTime<LocalDate>, Serializable {
    ZonedDateTime() {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime now() {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime of(LocalDate date, LocalTime time, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime of(LocalDateTime localDateTime, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime of(int year, int month, int dayOfMonth, int hour, int minute, int second, int nanoOfSecond, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime ofLocal(LocalDateTime localDateTime, ZoneId zone, ZoneOffset preferredOffset) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime ofInstant(Instant instant, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime ofInstant(LocalDateTime localDateTime, ZoneOffset offset, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime ofStrict(LocalDateTime localDateTime, ZoneOffset offset, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public static ZonedDateTime parse(CharSequence text, DateTimeFormatter formatter) {
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
    public ZoneOffset getOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoZonedDateTime<LocalDate> withEarlierOffsetAtOverlap2() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoZonedDateTime<LocalDate> withLaterOffsetAtOverlap2() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZoneId getZone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoZonedDateTime<LocalDate> withZoneSameLocal2(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoZonedDateTime<LocalDate> withZoneSameInstant2(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime withFixedOffsetZone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoLocalDateTime<LocalDate> toLocalDateTime2() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
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

    @Override
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
    public ZonedDateTime with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZonedDateTime with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime withYear(int year) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime withMonth(int month) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime withDayOfMonth(int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime withDayOfYear(int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime withHour(int hour) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime withMinute(int minute) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime withSecond(int second) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime withNano(int nanoOfSecond) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime truncatedTo(TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZonedDateTime plus(TemporalAmount amountToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZonedDateTime plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime plusYears(long years) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime plusMonths(long months) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime plusWeeks(long weeks) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime plusDays(long days) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime plusHours(long hours) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime plusMinutes(long minutes) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime plusSeconds(long seconds) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime plusNanos(long nanos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZonedDateTime minus(TemporalAmount amountToSubtract) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ZonedDateTime minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime minusYears(long years) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime minusMonths(long months) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime minusWeeks(long weeks) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime minusDays(long days) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime minusHours(long hours) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime minusMinutes(long minutes) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime minusSeconds(long seconds) {
        throw new RuntimeException("Stub!");
    }

    public ZonedDateTime minusNanos(long nanos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <R> R query(TemporalQuery<R> query) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long until(Temporal endExclusive, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String format(DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime toOffsetDateTime() {
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
