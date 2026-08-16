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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/Year.class
 */
public final class Year implements Temporal, TemporalAdjuster, Comparable<Year>, Serializable {
    public static final int MAX_VALUE = 999999999;
    public static final int MIN_VALUE = -999999999;

    Year() {
        throw new RuntimeException("Stub!");
    }

    public static Year now() {
        throw new RuntimeException("Stub!");
    }

    public static Year now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static Year now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static Year of(int isoYear) {
        throw new RuntimeException("Stub!");
    }

    public static Year from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static Year parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public static Year parse(CharSequence text, DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isLeap(long year) {
        throw new RuntimeException("Stub!");
    }

    public int getValue() {
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

    public boolean isLeap() {
        throw new RuntimeException("Stub!");
    }

    public boolean isValidMonthDay(MonthDay monthDay) {
        throw new RuntimeException("Stub!");
    }

    public int length() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Year with(TemporalAdjuster adjuster) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Year with(TemporalField field, long newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Year plus(TemporalAmount amountToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Year plus(long amountToAdd, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public Year plusYears(long yearsToAdd) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Year minus(TemporalAmount amountToSubtract) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Year minus(long amountToSubtract, TemporalUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public Year minusYears(long yearsToSubtract) {
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

    public LocalDate atDay(int dayOfYear) {
        throw new RuntimeException("Stub!");
    }

    public YearMonth atMonth(Month month) {
        throw new RuntimeException("Stub!");
    }

    public YearMonth atMonth(int month) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate atMonthDay(MonthDay monthDay) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(Year other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAfter(Year other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBefore(Year other) {
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
