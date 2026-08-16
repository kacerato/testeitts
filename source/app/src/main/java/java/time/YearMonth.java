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

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/YearMonth.class
 */
public final class YearMonth implements Temporal, TemporalAdjuster, Comparable<YearMonth>, Serializable {
    YearMonth() {
        throw new RuntimeException("Stub!");
    }

    public static YearMonth now() {
        throw new RuntimeException("Stub!");
    }

    public static YearMonth now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static YearMonth now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static YearMonth of(int year, Month month) {
        throw new RuntimeException("Stub!");
    }

    public static YearMonth of(int year, int month) {
        throw new RuntimeException("Stub!");
    }

    public static YearMonth from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static YearMonth parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public static YearMonth parse(CharSequence text, DateTimeFormatter formatter) {
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

    public int getYear() {
        throw new RuntimeException("Stub!");
    }

    public int getMonthValue() {
        throw new RuntimeException("Stub!");
    }

    public Month getMonth() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLeapYear() {
        throw new RuntimeException("Stub!");
    }

    public boolean isValidDay(int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public int lengthOfMonth() {
        throw new RuntimeException("Stub!");
    }

    public int lengthOfYear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public YearMonth with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public YearMonth with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    public YearMonth withYear(int year) {
        throw new RuntimeException("Stub!");
    }

    public YearMonth withMonth(int month) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public YearMonth plus(TemporalAmount amountToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public YearMonth plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public YearMonth plusYears(long yearsToAdd) {
        throw new RuntimeException("Stub!");
    }

    public YearMonth plusMonths(long monthsToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public YearMonth minus(TemporalAmount amountToSubtract) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public YearMonth minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public YearMonth minusYears(long yearsToSubtract) {
        throw new RuntimeException("Stub!");
    }

    public YearMonth minusMonths(long monthsToSubtract) {
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

    public LocalDate atDay(int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate atEndOfMonth() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(YearMonth other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAfter(YearMonth other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBefore(YearMonth other) {
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
