package java.time;

import java.time.format.TextStyle;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalField;
import java.time.temporal.TemporalQuery;
import java.time.temporal.ValueRange;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/Month.class
 */
public enum Month implements TemporalAccessor, TemporalAdjuster {
    APRIL,
    AUGUST,
    DECEMBER,
    FEBRUARY,
    JANUARY,
    JULY,
    JUNE,
    MARCH,
    MAY,
    NOVEMBER,
    OCTOBER,
    SEPTEMBER;

    public static Month of(int month) {
        throw new RuntimeException("Stub!");
    }

    public static Month from(TemporalAccessor temporal) {
        throw new RuntimeException("Stub!");
    }

    public int getValue() {
        throw new RuntimeException("Stub!");
    }

    public String getDisplayName(TextStyle style, Locale locale) {
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

    public Month plus(long months) {
        throw new RuntimeException("Stub!");
    }

    public Month minus(long months) {
        throw new RuntimeException("Stub!");
    }

    public int length(boolean leapYear) {
        throw new RuntimeException("Stub!");
    }

    public int minLength() {
        throw new RuntimeException("Stub!");
    }

    public int maxLength() {
        throw new RuntimeException("Stub!");
    }

    public int firstDayOfYear(boolean leapYear) {
        throw new RuntimeException("Stub!");
    }

    public Month firstMonthOfQuarter() {
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
}
