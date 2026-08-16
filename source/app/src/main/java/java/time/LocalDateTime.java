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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/LocalDateTime.class
 */
public final class LocalDateTime implements Temporal, TemporalAdjuster, ChronoLocalDateTime<LocalDate>, Serializable {
    public static final LocalDateTime MAX = null;
    public static final LocalDateTime MIN = null;

    LocalDateTime() {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime now() {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime of(int year, Month month, int dayOfMonth, int hour, int minute) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime of(int year, Month month, int dayOfMonth, int hour, int minute, int second) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime of(int year, Month month, int dayOfMonth, int hour, int minute, int second, int nanoOfSecond) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime of(int year, int month, int dayOfMonth, int hour, int minute) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime of(int year, int month, int dayOfMonth, int hour, int minute, int second) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime of(int year, int month, int dayOfMonth, int hour, int minute, int second, int nanoOfSecond) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime of(LocalDate date, LocalTime time) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime ofInstant(Instant instant, ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime ofEpochSecond(long epochSecond, int nanoOfSecond, ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public static LocalDateTime parse(CharSequence text, DateTimeFormatter formatter) {
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
    public LocalDateTime with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDateTime with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime withYear(int year) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime withMonth(int month) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime withDayOfMonth(int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime withDayOfYear(int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime withHour(int hour) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime withMinute(int minute) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime withSecond(int second) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime withNano(int nanoOfSecond) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime truncatedTo(TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDateTime plus(TemporalAmount amountToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDateTime plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime plusYears(long years) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime plusMonths(long months) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime plusWeeks(long weeks) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime plusDays(long days) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime plusHours(long hours) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime plusMinutes(long minutes) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime plusSeconds(long seconds) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime plusNanos(long nanos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDateTime minus(TemporalAmount amountToSubtract) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LocalDateTime minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime minusYears(long years) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime minusMonths(long months) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime minusWeeks(long weeks) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime minusDays(long days) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime minusHours(long hours) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime minusMinutes(long minutes) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime minusSeconds(long seconds) {
        throw new RuntimeException("Stub!");
    }

    public LocalDateTime minusNanos(long nanos) {
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
    public String format(DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    public OffsetDateTime atOffset(ZoneOffset offset) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChronoZonedDateTime<LocalDate> atZone2(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public int compareTo(ChronoLocalDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isAfter(ChronoLocalDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isBefore(ChronoLocalDateTime<?> other) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isEqual(ChronoLocalDateTime<?> other) {
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
