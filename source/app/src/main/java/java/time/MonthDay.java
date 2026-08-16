package java.time;

import java.io.Serializable;
import java.time.format.DateTimeFormatter;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalQuery;
import java.time.temporal.ValueRange;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/MonthDay.class
 */
public final class MonthDay implements TemporalAccessor, TemporalAdjuster, Comparable<MonthDay>, Serializable {
    MonthDay() {
        throw new RuntimeException("Stub!");
    }

    public static MonthDay now() {
        throw new RuntimeException("Stub!");
    }

    public static MonthDay now(ZoneId zone) {
        throw new RuntimeException("Stub!");
    }

    public static MonthDay now(Clock clock) {
        throw new RuntimeException("Stub!");
    }

    public static MonthDay of(Month month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public static MonthDay of(int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public static MonthDay from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public static MonthDay parse(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    public static MonthDay parse(CharSequence text, DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isSupported(TemporalField field) {
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

    public int getMonthValue() {
        throw new RuntimeException("Stub!");
    }

    public Month getMonth() {
        throw new RuntimeException("Stub!");
    }

    public int getDayOfMonth() {
        throw new RuntimeException("Stub!");
    }

    public boolean isValidYear(int year) {
        throw new RuntimeException("Stub!");
    }

    public MonthDay withMonth(int month) {
        throw new RuntimeException("Stub!");
    }

    public MonthDay with(Month month) {
        throw new RuntimeException("Stub!");
    }

    public MonthDay withDayOfMonth(int dayOfMonth) {
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

    public String format(DateTimeFormatter formatter) {
        throw new RuntimeException("Stub!");
    }

    public LocalDate atYear(int year) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(MonthDay other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAfter(MonthDay other) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBefore(MonthDay other) {
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
